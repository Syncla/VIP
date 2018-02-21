
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

elapsedMillis duration;

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

  digitalWrite(mpu1Pin, LOW);
  digitalWrite(mpu2Pin, LOW);
  digitalWrite(mpu3Pin, LOW);

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
boolean accelCalibrated(int d,int aDeadZone,int g){
  selectDevice(d);
  int16_t xa, ya, za, xg, yg, zg;
  mpus[d].getMotion6(&xa, &ya, &za, &xg, &yg, &zg);
  return (abs(xa) > aDeadZone || abs(ya) > aDeadZone || abs(za - g) > aDeadZone);
}
void calibrate() {
  int16_t xa[s], ya[s], za[s], xg[s], yg[s], zg[s];
  int xaOffset[s];
  int yaOffset[s];
  int zaOffset[s];
  int xgOffset[s];
  int ygOffset[s];
  int zgOffset[s];
  int xaMax[s];
  int xaMin[s];
  int yaMax[s];
  int yaMin[s];
  int zaMax[s];
  int zaMin[s];
  int xgMax[s];
  int xgMin[s];
  int ygMax[s];
  int ygMin[s];
  int zgMax[s];
  int zgMin[s];
  int aDeadZone = 16;
  int gDeadZone = 2;
  int g = 8192;   //Uncomment this to not account for the force of gravity
  //int g=1;    //Uncomment this to remove the force of gravity
  Serial.println("Calibrating MPUs");
  for (int i = 0; i < s; i++) {
    xaMin[i] = -32768;
    xaMax[i] = 32767;
    yaMin[i] = -32768;
    yaMax[i] = 32767;
    zaMin[i] = -32768;
    zaMax[i] = 32767;

    xgMin[i] = -32768 / 2;
    xgMax[i] = 32767 / 2;
    ygMin[i] = -32768 / 2;
    ygMax[i] = 32767 / 2;
    zgMin[i] = -32768 / 2;
    zgMax[i] = 32767 / 2;

    xaOffset[i] = 0;
    yaOffset[i] = 0;
    zaOffset[i] = 0;

    xgOffset[i] = 0;
    ygOffset[i] = 0;
    zgOffset[i] = 0;

    selectDevice(i);
    mpus[i].getMotion6(&xa[i], &ya[i], &za[i], &xg[i], &yg[i], &zg[i]);
  }

  while (calibrated(0, aDeadZone, gDeadZone, g) || calibrated(1, aDeadZone, gDeadZone, g) || calibrated(2, aDeadZone, gDeadZone, g)) {
    
    for (int i = 0; i < s; i++) {
      //if (calibrated(i, aDeadZone, gDeadZone, g)) {
      selectDevice(i);
      //delay(2000);
      //delay(16);
      mpus[i].setXAccelOffset(xaOffset[i]);
      mpus[i].setYAccelOffset(yaOffset[i]);
      mpus[i].setZAccelOffset(zaOffset[i]);
      mpus[i].setXGyroOffset(xgOffset[i]);
      mpus[i].setYGyroOffset(ygOffset[i]);
      mpus[i].setZGyroOffset(zgOffset[i]);
      mpus[i].getMotion6(&xa[i], &ya[i], &za[i], &xg[i], &yg[i], &zg[i]);
      /*
      Serial.println("------");
      //Serial.println(String(i) + ":" + String(xa[i] / 8192.0) + " " + String(ya[i] / 8192.0) + " " + String((za[i]) / 8192.0) + " " + String(xg[i]) + " " + String(yg[i]) + " " + String(zg[i]));
      Serial.println("Accel:");
      Serial.println(String(i) + ":" + String(xaOffset[i]) + " " + String(yaOffset[i]) + " " + String(zaOffset[i]));
      Serial.println(String(i) + ":" + String(xa[i]) + " " + String(ya[i] ) + " " + String(za[i]));
      Serial.println("Gyro:");
      Serial.println(String(i) + ":" + String(xgOffset[i]) + " " + String(ygOffset[i]) + " " + String(zgOffset[i]));
      Serial.println(String(i) + ":" + String(xg[i]) + " " + String(yg[i]) + " " + String(zg[i]));
      */
      //Accels
      if (xa[i] < aDeadZone) {
        xaMin[i] = xaOffset[i];
        xaOffset[i] = (xaOffset[i] + xaMax[i]) / 2;
      }
      if (xa[i] > aDeadZone) {
        xaMax[i] = xaOffset[i];
        xaOffset[i] = (xaOffset[i] + xaMin[i]) / 2;
      }

      if (ya[i] < aDeadZone) {
        yaMin[i] = yaOffset[i];
        yaOffset[i] = (yaOffset[i] + yaMax[i]) / 2;
      }
      if (ya[i] > aDeadZone) {
        yaMax[i] = yaOffset[i];
        yaOffset[i] = (yaOffset[i] + yaMin[i]) / 2;
      }

      if (za[i] - g < aDeadZone) {
        zaMin[i] = zaOffset[i];
        zaOffset[i] = (zaOffset[i] + zaMax[i]) / 2;
      }
      if (za[i] - g > aDeadZone) {
        zaMax[i] = zaOffset[i];
        zaOffset[i] = (zaOffset[i] + zaMin[i]) / 2;

      }
      //Gyros
      /*if (xgMin[i] != xgMax[i]) {
        if (xg[i] < gDeadZone) {
          xgMin[i] = xgOffset[i];
          xgOffset[i] = (xgOffset[i] + xgMax[i]) / 2;
        }
        if (xg[i] > gDeadZone) {
          xgMax[i] = xgOffset[i];
          xgOffset[i] = (xgOffset[i] + xgMin[i]) / 2;
        }
        }
        else{
        if (xg[i] < gDeadZone) {

          xgOffset[i] +=1;
        }
        if (xg[i] > gDeadZone) {
          xgOffset[i] -=1;
        }
        }

        if (yg[i] < gDeadZone) {
        ygMin[i] = ygOffset[i];
        ygOffset[i] = (ygOffset[i] + ygMax[i]) / 2;
        }
        if (yg[i] > gDeadZone) {
        ygMax[i] = ygOffset[i];
        ygOffset[i] = (ygOffset[i] + ygMin[i]) / 2;
        }

        if (zg[i] < gDeadZone) {
        zgMin[i] = zgOffset[i];
        zgOffset[i] = (zgOffset[i] + zgMax[i]) / 2;
        }
        if (zg[i] > gDeadZone) {
        zgMax[i] = zgOffset[i];
        zgOffset[i] = (zgOffset[i] + zgMin[i]) / 2;
        }
      */
      if (xg[i] < gDeadZone) {
        xgOffset[i] += 1;
      }
      if (xg[i] > gDeadZone) {
        xgOffset[i] -= 1;
      }
      if (yg[i] < gDeadZone) {
        ygOffset[i] += 1;
      }
      if (yg[i] > gDeadZone) {
        ygOffset[i] -= 1;
      }
      if (zg[i] < gDeadZone) {
        zgOffset[i] += 1;
      }
      if (zg[i] > gDeadZone) {
        zgOffset[i] -= 1;
      }

    }
    //}
  }
  Serial.println("aDeadZone: "+String(aDeadZone));
  Serial.println("gDeadZone: "+String(gDeadZone));
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
    delay(160);
  }
  //Serial.println();
}
