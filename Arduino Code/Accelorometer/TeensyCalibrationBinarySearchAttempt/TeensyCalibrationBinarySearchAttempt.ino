
#include "I2Cdev.h"
#include "MPU6050.h"
#if I2CDEV_IMPLEMENTATION == I2CDEV_ARDUINO_WIRE
#include "Wire.h"
#endif
const int s = 3;
MPU6050 mpus[3] = {
  MPU6050(0x69),
  MPU6050(0x69),
  MPU6050(0x69)
};
const short mpu1Pin = 2;
const short mpu2Pin = 11;
const short mpu3Pin = 12;


int16_t accel[s][3];
int16_t gyro[s][3];

double vel[s][3];
double pos[s][3];

elapsedMicros duration;

void selectDevice(int d) {
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

void setup() {
  pinMode(mpu1Pin, OUTPUT);
  pinMode(mpu2Pin, OUTPUT);
  pinMode(mpu3Pin, OUTPUT);

  selectDevice(-1);

#if I2CDEV_IMPLEMENTATION == I2CDEV_ARDUINO_WIRE
  Wire.begin();
#elif I2CDEV_IMPLEMENTATION == I2CDEV_BUILTIN_FASTWIRE
  Fastwire::setup(400, true);
#endif
  Serial.begin(38400);
  while (!Serial);
  for (int i = 0; i < s; i++) {
    selectDevice(i);
    mpus[i].initialize();
    Serial.println(mpus[i].testConnection() ? ("MPU6050 " + String(i + 1) + " connection successful") : ("MPU6050 " + String(i + 1) + " connection failed"));
    mpus[i].setFullScaleAccelRange(1);
    mpus[i].setFullScaleGyroRange(1);
    mpus[i].setXAccelOffset(0);
    mpus[i].setYAccelOffset(0);
    mpus[i].setZAccelOffset(0);
    mpus[i].setXGyroOffset(0);
    mpus[i].setYGyroOffset(0);
    mpus[i].setZGyroOffset(0);

  }

  calibrate();
  Serial.println("Done");
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

  int16_t deadZoneLarge[] = {50, 15};  //accel deadZone, gyro deadZone
  int16_t deadZone[] = {24, 2};  //accel deadZone, gyro deadZone
  boolean calibratedMPUs[s];
  int16_t g = 8192;   //Uncomment this to not account for the force of gravity
  //int16_t g=0;    //Uncomment this to remove the force of gravity
  for (int device = 0; device < s; device++) {
    calibratedMPUs[device] = false;
    for (int sensor = 0; sensor < 2; sensor++) {
      for (int axis = 0; axis < 3; axis++) {
        offsets[device][sensor][axis] = 0;
        ranges[device][sensor][axis][0] = -32768; //Set min
        ranges[device][sensor][axis][1] = 32767; //Set max
      }
    }
  }
  int accel = 0;
  int gyro = 1;
  int x = 0;
  int y = 1;
  int z = 2;
  int Min = 0;
  int Max = 1;

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
              if (readings[device][sensor][axis] > deadZone[sensor]) {
                ranges[device][sensor][axis][Max] = offsets[device][sensor][axis];
              }
              if (readings[device][sensor][axis] < deadZone[sensor]) {
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
            /*
              Serial.print(String(device) + ": ");
              Serial.print(sensor == 0 ? "Accel " : "Gyro ");
              Serial.print(axis == 0 ? "x: " : axis == 1 ? "y: " : "z: ");
              Serial.print(readings[device][sensor][axis]);
              Serial.print(" ");
              Serial.println(offsets[device][sensor][axis]);
            */
          }
        }

        mpus[device].setXAccelOffset(offsets[device][accel][x]);
        mpus[device].setYAccelOffset(offsets[device][accel][y]);
        mpus[device].setZAccelOffset(offsets[device][accel][z]);
        mpus[device].setXGyroOffset(offsets[device][gyro][x]);
        mpus[device].setYGyroOffset(offsets[device][gyro][y]);
        mpus[device].setZGyroOffset(offsets[device][gyro][z]);
        delay(16);
        if (!calibrated(device, deadZone[accel], deadZone[gyro], g)) {
          Serial.println("MPU " + String(device + 1) + " has been calibrated");
          calibratedMPUs[device] = true;
        }
        repeat = repeat | calibrated(device, deadZone[accel], deadZone[gyro], g);
      }
    }
  } while (repeat);


}

double gravity(int16_t x, int16_t y, int16_t z) {
  return sqrt(pow(x, 2) + pow(y, 2) + pow(z, 2));
}
void loop() {
  // put your main code here, to run repeatedly:

  for (int i = 0; i < s; i++) {

      selectDevice(i);
      //double str = duration;
      mpus[i].getMotion6(&accel[i][0], &accel[i][1], &accel[i][2], &gyro[i][0], &gyro[i][1], &gyro[i][2]);
      //double stp = duration;
      
    
    Serial.println(String(gravity(accel[i][0], accel[i][1], accel[i][2]) / 8192.0, 7));
    delay(16);
    //vel[i][0]=((accel[i][0]/8192.0)*9.8)*((stp-str)*.00001)+vel[i][0];
    //vel[i][1]=((accel[i][1]/8192.0)*9.8)*((stp-str)*.00001)+vel[i][1];
    //vel[i][2]=((accel[i][2]/8192.0)*9.8)*((stp-str)*.00001)+vel[i][2];

    //pos[i][0]=vel[i][0]*((stp-str)*.00001)+pos[i][0];
    //pos[i][1]=vel[i][1]*((stp-str)*.00001)+pos[i][1];
    //pos[i][2]=vel[i][2]*((stp-str)*.00001)+pos[i][2];

    //Serial.println("-------");
    //Serial.println((stp-str)*.0000001,7);
    //Serial.println(String(accel[i][0]/8192.0*9.8,7)+" : "+String(accel[i][1]/8192.0*9.8,7)+" : "+String(accel[i][2]/8192.0*9.8,7));
    //Serial.println(String(vel[i][0],7)+" : "+String(vel[i][1],7)+" : "+String(vel[i][2],7));
    //Serial.println(String(pos[i][0],7)+" : "+String(pos[i][1],7)+" : "+String(pos[i][2],7));
    //Serial.println(String(gyro[i][0] / 65.536) + " " + String(gyro[i][1] / 65.536) + " " + String(gyro[i][2] / 65.536));

  }
  // Serial.println();
}
