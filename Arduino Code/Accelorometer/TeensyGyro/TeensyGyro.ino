//----------------------------------------------------//
//------------------START IMPORTS---------------------//
//----------------------------------------------------//

#include "I2Cdev.h"
#include <EEPROM.h>

#include "MPU6050_6Axis_MotionApps20.h"
//#include "MPU6050.h"
#if I2CDEV_IMPLEMENTATION == I2CDEV_ARDUINO_WIRE
#include "Wire.h"
#endif
//----------------------------------------------------//
//------------------END IMPORTS-----------------------//
//----------------------------------------------------//

//----------------------------------------------------//
//------------------START MPU DEFINES-----------------//
//----------------------------------------------------//

const int s = 3;
MPU6050 mpus[3] = {
  MPU6050(0x69),
  MPU6050(0x69),
  MPU6050(0x69)
};
const short mpu1Pin = 2;
const short mpu2Pin = 11;
const short mpu3Pin = 12;

#define DMPINT_1 5

//----------------------------------------------------//
//-------------------END MPU DEFINES------------------//
//----------------------------------------------------//

//----------------------------------------------------//
//------------------START IMU DEFINES-----------------//
//----------------------------------------------------//
int16_t accel[s][3];
int16_t gyro[s][3];

bool isCalibrated = false;

Quaternion q;           // [w, x, y, z]         quaternion container
double qOffsets[4];
bool qCalibrated = false;
bool aCalibrated = false;
double aOffsets[3];
VectorInt16 aa;         // [x, y, z]            accel sensor measurements
VectorInt16 aaReal;     // [x, y, z]            gravity-free accel sensor measurements
VectorInt16 aaOffset;
VectorFloat gravity;    // [x, y, z]            gravity vector

//----------------------------------------------------//
//-------------------END MPU DEFINES------------------//
//----------------------------------------------------//

//----------------------------------------------------//
//--------------------START INTERRUPT-----------------//
//----------------------------------------------------//

bool dmpReady = false;
bool sendData = false;
uint8_t mpuIntStatus;   // holds actual interrupt status byte from MPU
uint8_t devStatus;      // return status after each device operation (0 = success, !0 = error)
uint16_t packetSize;    // expected DMP packet size (default is 42 bytes)
uint16_t fifoCount;     // count of all bytes currently in FIFO
uint8_t fifoBuffer[64]; // FIFO storage buffer

volatile bool mpuInterrupt = false;     // indicates whether MPU interrupt pin has gone high
void dmpDataReady() {
  mpuInterrupt = true;
}

//----------------------------------------------------//
//--------------------END INTERRUPT-------------------//
//----------------------------------------------------//



//----------------------------------------------------//
//--------------------START EEPROM--------------------//
//----------------------------------------------------//

uint16_t timesCalibrated;
uint16_t calibratedOffsets[s][6];
uint16_t address = 0;

//----------------------------------------------------//
//--------------------END EEPROM----------------------//
//----------------------------------------------------//

//----------------------------------------------------//
//-----------------START MPU FUNCTIONS----------------//
//----------------------------------------------------//
void selectDevice(int d) {
  /*
     All MPUS have the address set to 0x69, but
     by design they default to the address 0x68.
     By turning on the associated MPU pin, the MPU
     has its address changed to 0x69, allowing you to access the mpu
     This allows for as many MPUs to be connected as you want
     By passing in an invalid device number, you turn them all off (address 0x68)
  */
  switch (d) {
    case (0):
      digitalWrite(mpu1Pin, HIGH);
      digitalWrite(mpu2Pin, LOW);
      digitalWrite(mpu3Pin, LOW);

      break;
    case (1):
      digitalWrite(mpu1Pin, LOW);
      digitalWrite(mpu2Pin, HIGH);
      digitalWrite(mpu3Pin, LOW);

      break;
    case (2):
      digitalWrite(mpu1Pin, LOW);
      digitalWrite(mpu2Pin, LOW);
      digitalWrite(mpu3Pin, HIGH);
      break;
    default:
      digitalWrite(mpu1Pin, LOW);
      digitalWrite(mpu2Pin, LOW);
      digitalWrite(mpu3Pin, LOW);
  }
}

//----------------------------------------------------//
//------------------END MPU FUNCTIONS-----------------//
//----------------------------------------------------//

//----------------------------------------------------//
//---------------------START SETUP--------------------//
//----------------------------------------------------//

void setup() {
  //Configure MPU Select pins
  pinMode(mpu1Pin, OUTPUT);
  pinMode(mpu2Pin, OUTPUT);
  pinMode(mpu3Pin, OUTPUT);

  //Default to no device selected
  selectDevice(-1);

  //Startup I2C
#if I2CDEV_IMPLEMENTATION == I2CDEV_ARDUINO_WIRE
  Wire.begin();
  Wire.setClock(400000);
#elif I2CDEV_IMPLEMENTATION == I2CDEV_BUILTIN_FASTWIRE
  Fastwire::setup(400, true);
#endif

  //Startup Serial Communication
  Serial.begin(115200);
  while (!Serial);
  //Start DMP
  selectDevice(0);
  devStatus = mpus[0].dmpInitialize();
  if (devStatus == 0) {
    mpus[0].setDMPEnabled(true);
    attachInterrupt(DMPINT_1, dmpDataReady, RISING);
    mpuIntStatus = mpus[0].getIntStatus();
    dmpReady = true;
    packetSize = mpus[0].dmpGetFIFOPacketSize();
  }
  else {
    // ERROR!
    // 1 = initial memory load failed
    // 2 = DMP configuration updates failed
    // (if it's going to break, usually the code will be 1)
    Serial.print(F("DMP Initialization failed (code "));
    Serial.print(devStatus);
    Serial.println(F(")"));
  }
  //Initalize all devices
  for (int i = 0; i < s; i++) {
    selectDevice(i);
    mpus[i].initialize();
    Serial.println(mpus[i].testConnection() ? ("MPU6050 " + String(i + 1) + " connection successful") : ("MPU6050 " + String(i + 1) + " connection failed"));
    mpus[i].setFullScaleAccelRange(1);  //Set range to +- 2gs
    mpus[i].setFullScaleGyroRange(0);   //set range to +-500 degrees/sec
    mpus[i].setXAccelOffset(0);         //Default offsets
    mpus[i].setYAccelOffset(0);
    mpus[i].setZAccelOffset(0);
    mpus[i].setXGyroOffset(0);
    mpus[i].setYGyroOffset(0);
    mpus[i].setZGyroOffset(0);
    //mpus[i].setDMPEnabled(false);       //Disable the DMP at first

  }
  //If it has not been recently calibrated, recalibrate, otherwise load last calibration settings
  //if (checkEEPROM()) {
  calibrate();
  //}
  isCalibrated = true;
  //Serial.println("Done");
  //Setup DMP on device 0



}
int16_t readEEPROM(int s, int i) {
  int address = 0;
  return (EEPROM.read(address + s + i) << 8) | EEPROM.read(address + s + i + 1);
}
void storeEEPROM(int device, int a, int16_t data) {
  int address = 0;
  EEPROM.write(address + device + a, (data >> 8) & 0xFF);
  EEPROM.write(address + device + a + 1, (data) & 0xFF);
}
bool checkEEPROM() {
  bool c = true;  //By default always calibrate first
  //EEPROM FORMAT
  //EEPROM STORES IN 1 BYTE FORMAT
  //ALL NUMBERS ARE TWO BYTES LONG
  //Format is
  //Byte 1&2 - Times calibrated
  //Byte 3+  - Offsets
  //All offsets come in groups of 6, 3 for accel and 3 for gyro
  //each group corresponds to an MPU
  //Note, force a calibration if you swap MPUs
  timesCalibrated = (EEPROM.read(address) << 8) | EEPROM.read(address + 1);
  if (timesCalibrated > 5) { //Every 5 resets recalibrate
    timesCalibrated = 0;
    byte one = (timesCalibrated >> 8) & 0xFF;
    byte two = (timesCalibrated) & 0xFF;
    EEPROM.write(address, one);
    EEPROM.write(address + 1, two);
    address += 2;
    return c;
  }
  else {
    c = false; //Dont calibrate, has not been that long
    timesCalibrated++;
    byte one = (timesCalibrated >> 8) & 0xFF;
    byte two = (timesCalibrated) & 0xFF;
    EEPROM.write(address, one);
    EEPROM.write(address + 1, two);
    address += 2;
    uint16_t devices = (EEPROM.read(address) << 8) | EEPROM.read(address + 1);
    address += 2;
    for (uint16_t i = 0; i < devices; i++) {
      //Accelorometer
      calibratedOffsets[i][0] = (EEPROM.read(address + 0) << 8) | EEPROM.read(address + 1);
      calibratedOffsets[i][1] = (EEPROM.read(address + 2) << 8) | EEPROM.read(address + 3);
      calibratedOffsets[i][2] = (EEPROM.read(address + 4) << 8) | EEPROM.read(address + 5);
      //Gyroscope
      calibratedOffsets[i][3] = (EEPROM.read(address + 6) << 8) | EEPROM.read(address + 7);
      calibratedOffsets[i][4] = (EEPROM.read(address + 8) << 8) | EEPROM.read(address + 7);
      calibratedOffsets[i][5] = (EEPROM.read(address + 10) << 8) | EEPROM.read(address + 11);
      address += 12;
      //Set offsets
      selectDevice(i);
      mpus[i].setXAccelOffset(calibratedOffsets[i][0]);
      mpus[i].setYAccelOffset(calibratedOffsets[i][1]);
      mpus[i].setZAccelOffset(calibratedOffsets[i][2]);
      mpus[i].setXGyroOffset(calibratedOffsets[i][3]);
      mpus[i].setYGyroOffset(calibratedOffsets[i][4]);
      mpus[i].setZGyroOffset(calibratedOffsets[i][5]);
    }
  }


  return c;
}
boolean calibrated(int d, int aDeadZone, int gDeadZone, int g) {
  selectDevice(d);
  int16_t xa, ya, za, xg, yg, zg;
  mpus[d].getMotion6(&xa, &ya, &za, &xg, &yg, &zg);
  return (abs(xa) > aDeadZone || abs(ya) > aDeadZone || abs(za - g) > aDeadZone
          || abs(xg) > gDeadZone || abs(yg) > gDeadZone || abs(zg) > gDeadZone);
}
void calibrate() {
  int16_t readings[s][2][3];
  int16_t offsets[s][2][3];
  int16_t ranges[s][2][3][2];

  int16_t deadZoneLarge[] = {100, 30};  //accel deadZone, gyro deadZone
  int16_t deadZone[] = {32, 5 };  //accel deadZone, gyro deadZone
  boolean calibratedMPUs[s];
  int accel = 0;
  int gyro = 1;
  int x = 0;
  int y = 1;
  int z = 2;
  int Min = 0;
  int Max = 1;
  int16_t g = 4096; //Uncomment this to not account for the force of gravity
  //int16_t g=0;    //Uncomment this to remove the force of gravity
  for (int device = 0; device < s; device++) {
    calibratedMPUs[device] = false;
    offsets[device][accel][x] = readEEPROM(device + device * 12, 0 );
    offsets[device][accel][y] = readEEPROM(device + device * 12, 2 );
    offsets[device][accel][z] = readEEPROM(device + device * 12, 4 );
    offsets[device][gyro][x] = readEEPROM(device + device * 12, 6 );
    offsets[device][gyro][y] = readEEPROM(device + device * 12, 8);
    offsets[device][gyro][z] = readEEPROM(device + device * 12, 10);
    for (int sensor = 0; sensor < 2; sensor++) {
      for (int axis = 0; axis < 3; axis++) {

        ranges[device][sensor][axis][0] = -32767 / 2; //Set min
        ranges[device][sensor][axis][1] = 32767 / 2; //Set max
      }
    }
  }


  boolean repeat = false;
  //Serial.println("Starting calibration");
  do {
    repeat = false;
    for (int device = 0; device < s; device++) {
      if (!calibratedMPUs[device]) {
        selectDevice(device);
        mpus[device].getMotion6(&readings[device][accel][x], &readings[device][accel][y], &readings[device][accel][z],
                                &readings[device][gyro][x], &readings[device][gyro][y], &readings[device][gyro][z]);
        readings[device][accel][z] -= g; //remove gravity component if needed
        for (int sensor = 0; sensor < 2; sensor++) {
          for (int axis = 0; axis < 3; axis++) {
            if (abs(readings[device][sensor][axis]) > deadZoneLarge[sensor]) {
              if (readings[device][sensor][axis] > deadZoneLarge[sensor]) {
                ranges[device][sensor][axis][Max] = offsets[device][sensor][axis];
              }
              if (readings[device][sensor][axis] < deadZoneLarge[sensor]) {
                ranges[device][sensor][axis][Min] = offsets[device][sensor][axis];
              }
              offsets[device][sensor][axis] = (ranges[device][sensor][axis][Min] + ranges[device][sensor][axis][Max]) / 2;
            }
            else if (abs(readings[device][sensor][axis]) > deadZone[sensor]) {
              if (readings[device][sensor][axis] > deadZone[sensor]) {
                offsets[device][sensor][axis] -= 1;
              }
              if (readings[device][sensor][axis] < deadZone[sensor]) {
                offsets[device][sensor][axis] += 1;
              }
            }
            if (offsets[device][sensor][axis] < (-32760 / 2)) {
              offsets[device][sensor][axis] = (32760 / 2);
              ranges[device][sensor][axis][Max] = 32760 / 2;

            }
            if (offsets[device][sensor][axis] > (32760 / 2)) {
              offsets[device][sensor][axis] = -(32760 / 2);
              ranges[device][sensor][axis][Min] = -32760 / 2;

            }
            if (ranges[device][sensor][axis][Max] == ranges[device][sensor][axis][Min]) {
              if (readings[device][sensor][axis] > deadZoneLarge[sensor]) {
                ranges[device][sensor][axis][Max] += 0;
                ranges[device][sensor][axis][Min] -= 10;
                offsets[device][sensor][axis] = 0;
              }
              if (readings[device][sensor][axis] < deadZoneLarge[sensor]) {
                ranges[device][sensor][axis][Max] += 10;
                ranges[device][sensor][axis][Min] -= 0;
                offsets[device][sensor][axis] += 5;
              }



            }

            /*
              Serial.print(String(device+1) + ": ");
              Serial.print(sensor == 0 ? "Accel " : "Gyro ");
              Serial.print(axis == 0 ? "x: " : axis == 1 ? "y: " : "z: ");
              Serial.print(readings[device][sensor][axis]);
              Serial.print(" ");
              Serial.print(offsets[device][sensor][axis]);
              Serial.print(" ");
              Serial.print(ranges[device][sensor][axis][Min]);
              Serial.print(" ");
              Serial.println(ranges[device][sensor][axis][Max]);

            */
            //delay(1);
          }
        }

        mpus[device].setXAccelOffset(offsets[device][accel][x]);
        mpus[device].setYAccelOffset(offsets[device][accel][y]);
        mpus[device].setZAccelOffset(offsets[device][accel][z]);
        mpus[device].setXGyroOffset(offsets[device][gyro][x]);
        mpus[device].setYGyroOffset(offsets[device][gyro][y]);
        mpus[device].setZGyroOffset(offsets[device][gyro][z]);
        //delay lets the mpu set the offsets properly, not having it
        //causes the z gyro to hang and not adjust properly to a new
        //offset(note for later, try adding a smaller delay, or do
        //something useful instead of waiting)
        delay(16);
        if (!calibrated(device, deadZone[accel], deadZone[gyro], g)) {
          if (readEEPROM(device + device * 12, 0 ) == offsets[device][accel][x]) {
            storeEEPROM(device + device * 12, 0, offsets[device][accel][x]);
          }
          if (readEEPROM(device + device * 12, 2 ) == offsets[device][accel][y]) {
            storeEEPROM(device + device * 12, 2, offsets[device][accel][y]);
          }
          if (readEEPROM(device + device * 12, 4 ) == offsets[device][accel][z]) {
            storeEEPROM(device + device * 12, 4, offsets[device][accel][z]);
          }
          if (readEEPROM(device + device * 12, 6 ) == offsets[device][gyro][x]) {
            storeEEPROM(device + device * 12, 6, offsets[device][gyro][x]);
          }
          if (readEEPROM(device + device * 12, 8 ) == offsets[device][gyro][y]) {
            storeEEPROM(device + device * 12, 8, offsets[device][gyro][y]);
          }
          if (readEEPROM(device + device * 12, 10 ) == offsets[device][gyro][z]) {
            storeEEPROM(device + device * 12, 10, offsets[device][gyro][z]);
          }
          Serial.println("MPU " + String(device + 1) + " has been calibrated");
          calibratedMPUs[device] = true;
        }
        repeat = repeat | calibrated(device, deadZone[accel], deadZone[gyro], g);
      }
    }
  } while (repeat);


}

/*double gravity(int16_t x, int16_t y, int16_t z) {
  return sqrt(pow(x, 2) + pow(y, 2) + pow(z, 2));
  }
*/
/*
            // calculate gravity vector
            gravity[0] = 2 * (q[1]*q[3] - q[0]*q[2]);
            gravity[1] = 2 * (q[0]*q[1] + q[2]*q[3]);
            gravity[2] = q[0]*q[0] - q[1]*q[1] - q[2]*q[2] + q[3]*q[3];



                // get quaternion from data packet
                q[0] = ((teapotPacket[2] << 8) | teapotPacket[3]) / 16384.0f;
                q[1] = ((teapotPacket[4] << 8) | teapotPacket[5]) / 16384.0f;
                q[2] = ((teapotPacket[6] << 8) | teapotPacket[7]) / 16384.0f;
                q[3] = ((teapotPacket[8] << 8) | teapotPacket[9]) / 16384.0f;
                for (int i = 0; i < 4; i++) if (q[i] >= 2) q[i] = -4 + q[i];

*/

void serialEvent() {
  char inChar = (char)Serial.read();
  if (inChar == 'P') {
    Serial.println("PONG");
  }
  else if (inChar == 'D') {
    if (isCalibrated) {
      sendData = true;
    }
    else {
      Serial.println("WAIT");
    }
  }
  else if (inChar == 'C') {
    qCalibrated = false;
  }
}
void loop() {
  if (!dmpReady) return; //Fail safe if dmp failed
  // reset interrupt flag and get INT_STATUS byte
  while (!mpuInterrupt && fifoCount < packetSize) {
    if (sendData) {
      sendData = false;
      //Send Rotation Data
      Serial.print(q.w, 3);
      Serial.print(',');
      Serial.print(q.x, 3);
      Serial.print(',');
      Serial.print(q.y, 3);
      Serial.print(',');
      Serial.print(q.z, 3);
      Serial.print(',');
      //Send Acceleration Data
      Serial.print((aaReal.x   )/(4096.0)  , 3);
      Serial.print(',');
      Serial.print((aaReal.y  )/(4096.0)  , 3);
      Serial.print(',');
      Serial.print((aaReal.z )/(4096.0)  , 3);

      Serial.println(',');
    }
  }
  //Serial.println("here");

  mpuInterrupt = false;
  selectDevice(0);
  mpuIntStatus = mpus[0].getIntStatus();

  // get current FIFO count
  fifoCount = mpus[0].getFIFOCount();

  // check for overflow (this should never happen unless our code is too inefficient)
  if ((mpuIntStatus & 0x10) || fifoCount == 1024) {
    // reset so we can continue cleanly
    mpus[0].resetFIFO();
    Serial.println(F("FIFO overflow!"));

    // otherwise, check for DMP data ready interrupt (this should happen frequently)
  } else if (mpuIntStatus & 0x02) {
    // wait for correct available data length, should be a VERY short wait
    while (fifoCount < packetSize) fifoCount = mpus[0].getFIFOCount();

    // read a packet from FIFO
    mpus[0].getFIFOBytes(fifoBuffer, packetSize);

    // track FIFO count here in case there is > 1 packet available
    // (this lets us immediately read more without waiting for an interrupt)
    fifoCount -= packetSize;

    mpus[0].dmpGetQuaternion(&q, fifoBuffer);
    mpus[0].dmpGetAccel(&aa, fifoBuffer);
    mpus[0].dmpGetGravity(&gravity, &q);
    //gravity.normalize();
    mpus[0].dmpGetLinearAccel(&aaReal, &aa, &gravity);

    //aaReal.x -= aaOffset.getRotated(&q).x;
    //aaReal.y -= aaOffset.getRotated(&q).y;
    //aaReal.z -= aaOffset.getRotated(&q).z;
    float qw = q.w;
    float qx = q.x;
    float qy = q.y;
    float qz = q.z;
    float qww = qw * qw;
    float angle = 2 * acos(qw);
    float x, y, z;
    if (qww != 1) {
      x = qx / sqrt(1 - qww);
      y = qy / sqrt(1 - qww);
      z = qz / sqrt(1 - qww);
    }
    else {
      x = 0;
      y = 0;
      z = 0;
    }
    q.x = q.x;
    float tempy = q.y;
    q.y = q.z;
    q.z = tempy;

    //q.w = cos(angle / 2);
    //q.x = x * sin(angle / 2);
    //q.y = y * sin(angle / 2);
    //q.z = z * sin(angle / 2);
    if (!qCalibrated) {
      mpus[0].dmpGetAccel(&aaOffset, fifoBuffer);

      qOffsets[0] = 1 - abs(q.w);
      qOffsets[1] = q.x;
      qOffsets[2] = q.y;
      qOffsets[3] = q.z;
      qCalibrated = true;
    }
    else {

      q.w =   (abs(q.w) + qOffsets[0]) * int(q.w / abs(q.w));
      q.x =  q.x - qOffsets[1];
      q.y =  q.y - qOffsets[2];
      q.z =  q.z - qOffsets[3];
      q.normalize();
    }



    //aaReal.x=aa.getRotated(&q).x+gravity.x;
    //aaReal.y=aa.getRotated(&q).y+gravity.y;
    //aaReal.z=aa.getRotated(&q).z+gravity.z;

    /*
      if (!aCalibrated){
      aOffsets[0] = aaReal.x;
      aOffsets[1] = aaReal.y;
      aOffsets[2] = aaReal.z;
      aCalibrated = true;
      }
      else{
      aaReal.x = aaReal.x-aOffsets[0];
      aaReal.y = aaReal.y-aOffsets[1];
      aaReal.z = aaReal.z-aOffsets[2];

      }
    */

  }

}



