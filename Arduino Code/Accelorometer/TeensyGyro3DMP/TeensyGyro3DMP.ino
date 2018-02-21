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
#define DMPINT_2 6
#define DMPINT_3 7


//----------------------------------------------------//
//-------------------END MPU DEFINES------------------//
//----------------------------------------------------//

//----------------------------------------------------//
//------------------START IMU DEFINES-----------------//
//----------------------------------------------------//
int16_t accel[s][3];
int16_t gyro[s][3];

bool isCalibrated = false;

Quaternion q[s + 1];         // [w, x, y, z]         quaternion container
double qOffsets[s][4];
float euler[3];
bool qCalibrated[s] = {false, false, false};
VectorInt16 aa;         // [x, y, z]            accel sensor measurements
VectorInt16 aaReal[s + 1];   // [x, y, z]            gravity-free accel sensor measurements in reference to local self
VectorInt16 aaRealWorld[s + 1];   // [x, y, z]       gravity-free accel sensor measurements in reference to the world
VectorFloat gravity[s];    // [x, y, z]            gravity vector
VectorFloat cGravity[s];
VectorInt16 grav[s];        //My own gravity vector
//----------------------------------------------------//
//-------------------END MPU DEFINES------------------//
//----------------------------------------------------//

//----------------------------------------------------//
//--------------------START INTERRUPT-----------------//
//----------------------------------------------------//

bool dmpReady[s] = {false, false, false};


bool sendData = false;
int debug=0;
bool printTest = false;
uint8_t mpuIntStatus[s];   // holds actual interrupt status byte from MPU

uint8_t devStatus;      // return status after each device operation (0 = success, !0 = error)
uint16_t packetSize;    // expected DMP packet size (default is 42 bytes)
uint16_t fifoCount;     // count of all bytes currently in FIFO
uint8_t fifoBuffer[64]; // FIFO storage buffer

volatile bool mpuInterrupt0 = false;     // indicates whether MPU0 interrupt pin has gone high
volatile bool mpuInterrupt1 = false;     // indicates whether MPU1 interrupt pin has gone high
volatile bool mpuInterrupt2 = false;     // indicates whether MPU2 interrupt pin has gone high

void dmp0DataReady() {
  mpuInterrupt0 = true;
}
void dmp1DataReady() {
  mpuInterrupt1 = true;
}
void dmp2DataReady() {
  mpuInterrupt2 = true;
}

//----------------------------------------------------//
//--------------------END INTERRUPT-------------------//
//----------------------------------------------------//



//----------------------------------------------------//
//--------------------START EEPROM--------------------//
//----------------------------------------------------//

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
      //Turn off all MPUs
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
void (* resetFunc)(void) = 0; //Call resetFunc to reset the board
//Use this when the MPU fails
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
  //Initalize all dmps
  selectDevice(0);
  devStatus = mpus[0].dmpInitialize();
  if (devStatus == 0) {
    mpus[0].setDMPEnabled(true);
    attachInterrupt(DMPINT_1, dmp0DataReady, RISING);
    mpuIntStatus[0] = mpus[0].getIntStatus();
    dmpReady[0] = true;
    packetSize = mpus[0].dmpGetFIFOPacketSize();
  }
  else {
    // ERROR!
    // 1 = initial memory load failed
    // 2 = DMP configuration updates failed
    // (if it's going to break, usually the code will be 1)
    Serial.println("MPU 0 Failed");
    Serial.print(F("DMP Initialization failed (code "));
    Serial.print(devStatus);
    Serial.println(F(")"));
  }

  selectDevice(1);
  devStatus = mpus[1].dmpInitialize();
  if (devStatus == 0) {
    mpus[1].setDMPEnabled(true);
    attachInterrupt(DMPINT_2, dmp1DataReady, RISING);
    mpuIntStatus[1] = mpus[1].getIntStatus();
    dmpReady[1] = true;
  }
  else {
    // ERROR!
    // 1 = initial memory load failed
    // 2 = DMP configuration updates failed
    // (if it's going to break, usually the code will be 1)
    Serial.println("MPU 1 Failed");
    Serial.print(F("DMP Initialization failed (code "));
    Serial.print(devStatus);
    Serial.println(F(")"));
  }

  selectDevice(2);
  devStatus = mpus[2].dmpInitialize();
  if (devStatus == 0) {
    mpus[2].setDMPEnabled(true);
    attachInterrupt(DMPINT_3, dmp2DataReady, RISING);
    mpuIntStatus[2] = mpus[2].getIntStatus();
    dmpReady[2] = true;
    packetSize = mpus[2].dmpGetFIFOPacketSize();
  }
  else {
    // ERROR!
    // 1 = initial memory load failed
    // 2 = DMP configuration updates failed
    // (if it's going to break, usually the code will be 1)
    Serial.println("MPU 2 Failed");
    Serial.print(F("DMP Initialization failed (code "));
    Serial.print(devStatus);
    Serial.println(F(")"));
  }
  Serial.println("DMP DONE");


  //Initalize all devices now that dmps are done
  for (int i = 0; i < s; i++) {
    selectDevice(i);
    mpus[i].initialize();
    Serial.println(mpus[i].testConnection() ? ("MPU6050 " + String(i + 1) + " connection successful") : ("MPU6050 " + String(i + 1) + " connection failed"));
    if (mpus[i].testConnection() == false) {
      resetFunc();
    }
    mpus[i].setFullScaleAccelRange(0);  //Set range to +- 2gs
    mpus[i].setFullScaleGyroRange(3);   //set range to +-2000 degrees/sec
    mpus[i].setXAccelOffset(0);         //Default offsets
    mpus[i].setYAccelOffset(0);
    mpus[i].setZAccelOffset(0);
    mpus[i].setXGyroOffset(0);
    mpus[i].setYGyroOffset(0);
    mpus[i].setZGyroOffset(0);
    gravity[i].x=0;
    gravity[i].y=0;
    gravity[i].z=1;
    
  }
  //Calibrate all mpus
  calibrate();
  isCalibrated = true;

}

int16_t readEEPROM(int s, int i) {
  /*
     Given a device  and an address offset, read two bytes from
     EEPROM and merge them together. Return this 16 bit int
  */
  int address = 0;
  return (EEPROM.read(address + s + i) << 8) | EEPROM.read(address + s + i + 1);
}
void storeEEPROM(int device, int a, int16_t data) {
  /*
     Given a device, an address offset, and a 16 bit int,
     break the 16 bit int into two 8 bit bytes and store them
     into the EEPROM
  */
  int address = 0;
  EEPROM.write(address + device + a, (data >> 8) & 0xFF);
  EEPROM.write(address + device + a + 1, (data) & 0xFF);
}

boolean calibrated(int d, int aDeadZone, int gDeadZone, int g) {
  /*
     Check if the given device is calibrated according to the
     specified deadzones and accounting for gravity
  */
  selectDevice(d);
  return
    isCalibratedAxis( d, 0, 0, aDeadZone, 0) ||
    isCalibratedAxis( d, 0, 1, aDeadZone, 0) ||
    isCalibratedAxis( d, 0, 2, aDeadZone, g) ||
    isCalibratedAxis( d, 1, 1, gDeadZone, 0) ||
    isCalibratedAxis( d, 1, 2, gDeadZone, 0) ||
    isCalibratedAxis( d, 1, 3, gDeadZone, 0);
}
boolean isCalibratedAxis(int d, int sensor, int axis, int deadZone, int g) {
  /*
     Given a device, a sensor (accel or gyro), an axis, and the
     deadzone for the axis, check if the axis is calibrated
     Removes the effect of gravity if g!=0
  */
  selectDevice(d);
  int16_t xa, ya, za, xg, yg, zg;
  int16_t ax = 0;
  mpus[d].getMotion6(&xa, &ya, &za, &xg, &yg, &zg);
  za = za - g;
  if (sensor == 0) {
    if (axis == 0)
      ax = xa;
    else if (axis == 1)
      ax = ya;
    else if (axis == 2)
      ax = za;
  }
  else if (sensor == 1) {
    if (axis == 0)
      ax = xg;
    else if (axis == 1)
      ax = yg;
    else if (axis == 2)
      ax = zg;
  }
  return (abs(ax) > deadZone);
}
void calibrate() {
  /*
     Procedure for calibrating the MPUs. This procedure first reads any
     previously stored calibration from EEPROM for faster calibration.
     Then it uses a binary search routine to get very close to the final
     offset. It then brute forces the final offset by adding or subracting
     one at a time from the offset until the axis is calibrated
     Once the axis has been calibrated, it stores the offset into EEPROM
     so next time it is faster
  */
  int16_t readings[s][2][3];
  int16_t offsets[s][2][3];
  int16_t ranges[s][2][3][2];

  int16_t deadZoneLarge[] = {50, 15};  //accel deadZone, gyro deadZone  This is used to get close to the final value fast
  int16_t deadZone[] = {16, 1 };  //accel deadZone, gyro deadZone     This is used to get accurate results slowly
  boolean calibratedAxis[s][2][3];
  int accel = 0;
  int gyro = 1;
  int x = 0;
  int y = 1;
  int z = 2;
  int Min = 0;
  int Max = 1;
  int16_t g = 16384; //Uncomment this to not account for the force of gravity
  //int16_t g=0;    //Uncomment this to remove the force of gravity
  for (int device = 0; device < s; device++) {
    calibratedAxis[device][accel][x] = false;
    calibratedAxis[device][accel][y] = false;
    calibratedAxis[device][accel][z] = false;
    calibratedAxis[device][gyro][x] = false;
    calibratedAxis[device][gyro][y] = false;
    calibratedAxis[device][gyro][z] = false;
    offsets[device][accel][x] = readEEPROM(device + device * 12, 0 );
    offsets[device][accel][y] = readEEPROM(device + device * 12, 2 );
    offsets[device][accel][z] = readEEPROM(device + device * 12, 4 );
    offsets[device][gyro][x] = readEEPROM(device + device * 12, 6 );
    offsets[device][gyro][y] = readEEPROM(device + device * 12, 8);
    offsets[device][gyro][z] = readEEPROM(device + device * 12, 10);
    //Serial.println(offsets[device][accel][z]);
    for (int sensor = 0; sensor < 2; sensor++) {
      for (int axis = 0; axis < 3; axis++) {

        ranges[device][sensor][axis][0] = -32767 / 4; //Set min
        ranges[device][sensor][axis][1] = 32767 / 4; //Set max
      }
    }
  }


  boolean repeat = false;
  boolean printed = false;
  //Serial.println("Starting calibration");
  do {
    if (printed){
      printed=false;
      debug--;
    }
    repeat = false;
    for (int device = 0; device < s; device++) {
      selectDevice(device);
      mpus[device].getMotion6(&readings[device][accel][x], &readings[device][accel][y], &readings[device][accel][z],
                              &readings[device][gyro][x], &readings[device][gyro][y], &readings[device][gyro][z]);
      readings[device][accel][z] -= g; //remove gravity component if needed
      for (int sensor = 0; sensor < 2; sensor++) {
        for (int axis = 0; axis < 3; axis++) {
          if (!calibratedAxis[device][sensor][axis]) {
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
            if (offsets[device][sensor][axis] < (-32760 / 4)) {
              offsets[device][sensor][axis] = (32760 / 4);
              ranges[device][sensor][axis][Max] = 32760 / 4;

            }
            if (offsets[device][sensor][axis] > (32760 / 4)) {
              offsets[device][sensor][axis] = -(32760 / 4);
              ranges[device][sensor][axis][Min] = -32760 / 4;

            }
            if ((ranges[device][sensor][axis][Max] == ranges[device][sensor][axis][Min]) || (abs(ranges[device][sensor][axis][Max] - ranges[device][sensor][axis][Min]) == 1 && abs(readings[device][sensor][axis]) > deadZoneLarge[sensor])) {
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
            //Uncomment Below to print out what is going on
            //During calibration, very useful to see if anything
            //is going wrong
            if (debug>0){
              printed=true;
              Serial.print(String(device + 1) + ": ");
              Serial.print(sensor == 0 ? "Accel " : "Gyro ");
              Serial.print(axis == 0 ? "x: " : axis == 1 ? "y: " : "z: ");
              Serial.print(readings[device][sensor][axis]);
              Serial.print(" ");
              Serial.print(offsets[device][sensor][axis]);
              Serial.print(" ");
              Serial.print(ranges[device][sensor][axis][Min]);
              Serial.print(" ");
              Serial.println(ranges[device][sensor][axis][Max]);
            }
            //delay(1);
          }
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

      if (!isCalibratedAxis(device, accel, x, deadZone[accel], 0) && !calibratedAxis[device][accel][x]) {
        if (readEEPROM(device + device * 12, 0 ) != offsets[device][accel][x]) {
          storeEEPROM(device + device * 12, 0, offsets[device][accel][x]);
        }
        calibratedAxis[device][accel][x] = true;
        Serial.println("MPU " + String(device + 1) + " accel x has been calibrated");
      }
      if (!isCalibratedAxis(device, accel, y, deadZone[accel], 0) && !calibratedAxis[device][accel][y]) {
        if (readEEPROM(device + device * 12, 2 ) != offsets[device][accel][y]) {
          storeEEPROM(device + device * 12, 2, offsets[device][accel][y]);
        }
        calibratedAxis[device][accel][y] = true;
        Serial.println("MPU " + String(device + 1) + " accel y has been calibrated");
      }
      if (!isCalibratedAxis(device, accel, z, deadZone[accel], g) && !calibratedAxis[device][accel][z]) {

        if (readEEPROM(device + device * 12, 4 ) != offsets[device][accel][z]) {
          storeEEPROM(device + device * 12, 4, offsets[device][accel][z]);
        }
        calibratedAxis[device][accel][z] = true;
        Serial.println("MPU " + String(device + 1) + " accel z has been calibrated");
      }
      if (!isCalibratedAxis(device, gyro, x, deadZone[gyro], 0) && !calibratedAxis[device][gyro][x]) {

        if (readEEPROM(device + device * 12, 6 ) != offsets[device][gyro][x]) {
          storeEEPROM(device + device * 12, 6, offsets[device][gyro][x]);
        }
        calibratedAxis[device][gyro][x] = true;
        Serial.println("MPU " + String(device + 1) + " gyro x has been calibrated");
      }
      if (!isCalibratedAxis(device, gyro, y, deadZone[gyro], 0) && !calibratedAxis[device][gyro][y]) {

        if (readEEPROM(device + device * 12, 8 ) != offsets[device][gyro][y]) {
          storeEEPROM(device + device * 12, 8, offsets[device][gyro][y]);
        }
        calibratedAxis[device][gyro][y] = true;
        Serial.println("MPU " + String(device + 1) + " gyro y has been calibrated");

      }
      if (!isCalibratedAxis(device, gyro, z, deadZone[gyro], 0) && !calibratedAxis[device][gyro][z]) {

        if (readEEPROM(device + device * 12, 10 ) != offsets[device][gyro][z]) {
          storeEEPROM(device + device * 12, 10, offsets[device][gyro][z]);
        }
        calibratedAxis[device][gyro][z] = true;
        Serial.println("MPU " + String(device + 1) + " gyro z has been calibrated");
      }
      repeat = repeat ||
               !calibratedAxis[device][accel][x] ||
               !calibratedAxis[device][accel][y] ||
               !calibratedAxis[device][accel][z] ||
               !calibratedAxis[device][gyro][x] ||
               !calibratedAxis[device][gyro][y] ||
               !calibratedAxis[device][gyro][z]
               ;
    }
  } while (repeat);
  //Set Gravity offsets
  int16_t xa, ya, za, xg, yg, zg;
  selectDevice(0);
  mpus[0].getMotion6(&xa, &ya, &za, &xg, &yg, &zg);
  cGravity[0].x = xa;
  cGravity[0].y = ya;
  cGravity[0].z = za;
  cGravity[0].normalize();
  selectDevice(1);
  mpus[1].getMotion6(&xa, &ya, &za, &xg, &yg, &zg);
  cGravity[1].x = xa;
  cGravity[1].y = ya;
  cGravity[1].z = za;
  cGravity[1].normalize();
  selectDevice(2);
  mpus[2].getMotion6(&xa, &ya, &za, &xg, &yg, &zg);
  cGravity[2].x = xa;
  cGravity[2].y = ya;
  cGravity[2].z = za;
  cGravity[2].normalize();
}


void serialEvent() {
  char inChar = (char)Serial.read();
  if (inChar == 'P') {
    Serial.println("PONG");
  }
  else if (inChar == 'T') {
    printTest = true;
  }
  else if (inChar == 'R') {
    calibrate();
  }
  else if (inChar == 'D') {
    if (isCalibrated) {
      if (!sendData)
        sendData = true;
      else {
        sendData = false;
        mpus[0].resetFIFO();
        mpus[1].resetFIFO();
        mpus[2].resetFIFO();

      }
    }
    else {
      Serial.println("WAIT");
    }
  }
  else if (inChar == 'H'){
    debug+=10;
  }
  else if (inChar == 'C') {
    qCalibrated[0] = false;
    qCalibrated[1] = false;
    qCalibrated[2] = false;

  }
}

void loop() {
  //Serial.println("Looping");
  if (!dmpReady[0] || !dmpReady[1] || !dmpReady[2]) {
    Serial.println("Failed");
    return; //Fail safe if dmp failed
  }
  //sendData=true;
  // reset interrupt flag and get INT_STATUS byte
  while ((!mpuInterrupt0 || !mpuInterrupt1 || !mpuInterrupt2) && fifoCount < packetSize) {  //Wait for all three mpus to have data ready

    if (sendData) {
      sendData = false;
      //Send Rotation Data
      Serial.print(q[s].w, 5);
      Serial.print(',');
      Serial.print(q[s].x, 5);
      Serial.print(',');
      Serial.print(q[s].y, 5);
      Serial.print(',');
      Serial.print(q[s].z, 5);
      //Send Acceleration Data
      int scale = 128;
      //MPU1
      Serial.print(',');
      Serial.print(filter(aaReal[0].x, scale) / (16384.0)  , 2);
      Serial.print(',');
      Serial.print(filter(aaReal[0].y, scale) / (16384.0)  , 2);
      Serial.print(',');
      Serial.print(filter(aaReal[0].z, scale) / (16384.0)  , 2);

      //MPU2
      Serial.print(',');
      Serial.print(filter(aaReal[1].x, scale) / (16384.0)  , 2);
      Serial.print(',');
      Serial.print(filter(aaReal[1].y, scale) / (16384.0)  , 2);
      Serial.print(',');
      Serial.print(filter(aaReal[1].z, scale) / (16384.0)  , 2);

      //MPU3
      Serial.print(',');
      Serial.print(filter(aaReal[2].x, scale) / (16384.0)  , 2);
      Serial.print(',');
      Serial.print(filter(aaReal[2].y, scale) / (16384.0)  , 2);
      Serial.print(',');
      Serial.print(filter(aaReal[2].z, scale) / (16384.0)  , 2);

      //AVG
      Serial.print(',');
      Serial.print(filter(aaReal[s].x, scale) / (16384.0)  , 2);
      Serial.print(',');
      Serial.print(filter(aaReal[s].y, scale) / (16384.0)  , 2);
      Serial.print(',');
      Serial.print(filter(aaReal[s].z, scale) / (16384.0)  , 2);
      Serial.println(',');

      //gravity
      /*
            Serial.print(',');
            Serial.print(gravity[0].x   , 2);
            Serial.print(',');
            Serial.print(gravity[0].y   , 2);
            Serial.print(',');
            Serial.print(gravity[0].z   , 2);
            Serial.println(',');
      */
    }
  }
  //Serial.println("here");

  mpuInterrupt0 = false;
  mpuInterrupt1 = false;
  mpuInterrupt2 = false;
  q[s].w = 0;
  q[s].x = 0;
  q[s].y = 0;
  q[s].z = 0;
  //q[s].normalize();
  aaReal[s].x = 0;
  aaReal[s].y = 0;
  aaReal[s].z = 0;
  for (int i = 0; i < s; i++) {
    selectDevice(i);
    mpuIntStatus[i] = mpus[i].getIntStatus();

    // get current FIFO count
    fifoCount = mpus[i].getFIFOCount();

    // check for overflow (this should never happen unless our code is too inefficient)
    if ((mpuIntStatus[i] & 0x10) || fifoCount == 1024) {
      // reset so we can continue cleanly
      mpus[i].resetFIFO();
      Serial.println(F("FIFO overflow! ") + String(i));

      // otherwise, check for DMP data ready interrupt (this should happen frequently)
    } else if (mpuIntStatus[i] & 0x02) {
      // wait for correct available data length, should be a VERY short wait
      while (fifoCount < packetSize) fifoCount = mpus[i].getFIFOCount();

      // read a packet from FIFO
      mpus[i].getFIFOBytes(fifoBuffer, packetSize);

      // track FIFO count here in case there is > 1 packet available
      // (this lets us immediately read more without waiting for an interrupt)
      fifoCount -= packetSize;

      mpus[i].dmpGetQuaternion(&q[i], fifoBuffer);
      mpus[i].dmpGetAccel(&aa, fifoBuffer);
      //q[i].normalize();
      gravity[i].x = cGravity[i].x;
      gravity[i].y = cGravity[i].y;
      gravity[i].z = cGravity[i].z;
      //mpus[i].dmpGetGravityMatrix(&gravity[i], &q[i]);
      
      //float tempy = q[i].y;
      //q[i].y = q[i].z;
      //q[i].z = tempy;
      
      if (!qCalibrated[i]) {
        qOffsets[i][0] = 1 - abs(q[i].w);
        qOffsets[i][1] = q[i].x;
        qOffsets[i][2] = q[i].y;
        qOffsets[i][3] = q[i].z;
        qCalibrated[i] = true;
      }
      else {
        q[i].x =  q[i].x - qOffsets[i][1];
        q[i].y =  q[i].y - qOffsets[i][2];
        q[i].z =  q[i].z - qOffsets[i][3];
        q[i].w =  (abs(q[i].w) + qOffsets[i][0]) * int(q[i].w / abs(q[i].w));
        q[i].normalize();
        q[s].w += q[i].w ;
        q[s].x += q[i].x ;
        q[s].y += q[i].y ;
        q[s].z += q[i].z ;
      }
      
      //mpus[i].dmpGetGravity(&grav[i], &q[i]);
      //mpus[i].dmpGetLinearAccel(&aaReal[i], &aa, &grav[i]);
      aaReal[s].x += aaReal[i].x;
      aaReal[s].y += aaReal[i].y;
      aaReal[s].z += aaReal[i].z;
    }
    else {

    }


  
      mpus[i].dmpGetGravity(&gravity[i], &q[i]);

    
      //gravity[i].normalize();
      mpus[i].dmpGetLinearAccel(&aaReal[i], &aa, &gravity[i]);
      mpus[i].dmpGetLinearAccelInWorld(&aaRealWorld[i], &aaReal[i], &q[i]);
  }
  q[s].w = q[1].w ;
  q[s].x = q[1].x ;
  q[s].y = q[1].y ;
  q[s].z = q[1].z ;
  q[s].normalize();
  //aaReal[s].x = aaReal[s].x / s;
  //aaReal[s].y = aaReal[s].y / s;
  //aaReal[s].z = aaReal[s].z / s;
}

double filter (double val, int16_t scale) {
  if (val != 0)
    val = val * min(log(abs(val)) / log(scale), 1);
  return val;
}


