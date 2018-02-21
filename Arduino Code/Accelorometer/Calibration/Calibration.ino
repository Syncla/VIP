//Imports
#include "I2Cdev.h"
#include "MPU6050.h"
#if I2CDEV_IMPLEMENTATION == I2CDEV_ARDUINO_WIRE
#include "Wire.h"
#endif

//Declare MPUs
MPU6050 mpu1;
MPU6050 mpu2(0x69);

//Final x,y,z data to be sent to computer
int16_t ax, ay, az;
int16_t gx, gy, gz;

const int m = pow(2, 10);

#define OUTPUT_READABLE_ACCELGYRO

void setup() {
  //setup
#if I2CDEV_IMPLEMENTATION == I2CDEV_ARDUINO_WIRE
  Wire.begin();
#elif I2CDEV_IMPLEMENTATION == I2CDEV_BUILTIN_FASTWIRE
  Fastwire::setup(400, true);
#endif
  //start serial and wait for it to fully initalize
  Serial.begin(38400);
  while (!Serial);
  mpu1.initialize();
  mpu2.initialize();
  mpu1.setFullScaleAccelRange(1);
  mpu2.setFullScaleAccelRange(1);
  mpu1.setFullScaleGyroRange(1);
  mpu2.setFullScaleGyroRange(1);
  mpu1.setXAccelOffset(0);
  mpu1.setYAccelOffset(0);
  mpu1.setZAccelOffset(0);
  mpu1.setXGyroOffset(0);
  mpu1.setYGyroOffset(0);
  mpu1.setZGyroOffset(0);
  calibrate();
}
double gravity(int16_t x, int16_t y, int16_t z) {
  return sqrt(pow(x, 2) + pow(y, 2) + pow(z, 2));
}
void calibrate() {
  Serial.println("Start calibrating");
  int16_t xa, ya, za, xg, yg, zg;
  int16_t xa1, ya1, za1, xg1, yg1, zg1;
  mpu1.getMotion6(&xa, &ya, &za, &xg, &yg, &zg);
  //mpu2.getMotion6(&xa1,&ya1,&za1,&xg1,&yg1,&zg1);
  int xaOffset = 0;
  int yaOffset = 0;
  int zaOffset = 0;
  int xgOffset = 0;
  int ygOffset = 0;
  int zgOffset = 0;

  int aDeadZone = 8;
  int gDeadZone = 2;
  while (abs(xa) > aDeadZone || abs(ya) > aDeadZone || abs(8192-za) > aDeadZone || abs(xg) > gDeadZone || abs(yg) > gDeadZone || abs(zg) > gDeadZone) {
    mpu1.setXAccelOffset(xaOffset);
    mpu1.setYAccelOffset(yaOffset);
    mpu1.setZAccelOffset(zaOffset);
    mpu1.setXGyroOffset(xgOffset);
    mpu1.setYGyroOffset(ygOffset);
    mpu1.setZGyroOffset(zgOffset);

    mpu1.getMotion6(&xa, &ya, &za, &xg, &yg, &zg);
    if (abs(xa) > aDeadZone) {
      if (xa > aDeadZone) {
        xaOffset = xaOffset - 1;//(m >> xainc);

      }
      if (xa < -aDeadZone) {
        xaOffset = xaOffset + 1;//(m >> xainc);

      }
    }
    if (abs(ya) > aDeadZone) {
      if (ya > aDeadZone) {
        yaOffset = yaOffset - 1;//(m >> yainc);

      }
      if (ya < -aDeadZone) {
        yaOffset = yaOffset + 1;//(m >> yainc);

      }
    }
    if (abs(8192-za) > aDeadZone) {
      if ((za-8192) > aDeadZone) {
        zaOffset = zaOffset - 1;//(m >> zainc);

      }
      if ((za-8192) < -aDeadZone) {
        zaOffset = zaOffset + 1;//(m >> zainc);

      }
    }
    if (abs(xg) > gDeadZone) {
      if (xg > gDeadZone) {
        xgOffset = xgOffset - 1;//(m >> xginc);

      }
      if (xg < -gDeadZone) {
        xgOffset = xgOffset + 1;//(m >> xginc);

      }
    }
    if (abs(yg) > gDeadZone) {
      if (yg > gDeadZone) {
        ygOffset = ygOffset - 1;//(m >> yginc);

      }
      if (yg < -gDeadZone) {
        ygOffset = ygOffset + 1;//(m >> yginc);

      }
    }
    if (abs(zg) > gDeadZone) {
      if (zg > gDeadZone) {
        zgOffset = zgOffset - 1;//(m >> zginc);

      }
      if (zg < -gDeadZone) {
        zgOffset = zgOffset + 1;//(m >> zginc);

      }
    }
    Serial.println("-----");
    Serial.println(String(xaOffset) + " " + String(yaOffset) + " " + String(zaOffset) + " ");
    Serial.println(String(xa) + " " + String(ya) + " " + String(8192) + " " + String(xg) + " " + String(yg) + " " + String(zg));     //Serial.println(gravity(xa,ya,za)/8192.0);
  }
  Serial.println("Done");
  Serial.println(String(xaOffset) + " " + String(yaOffset) + " " + String(zaOffset) + " ");
  Serial.println(String(xgOffset) + " " + String(ygOffset) + " " + String(zgOffset) + " ");
  
}
void loop() {
  int16_t xa, ya, za, xg, yg, zg;
  mpu1.getMotion6(&xa, &ya, &za, &xg, &yg, &zg);
  //Serial.println(gravity(xa, ya, za) / 8192.0);
  //Serial.println(String(xa/8192.00)+" "+String(ya/8192.00)+" "+String(za/8192.00)+" "+String(xg)+" "+String(yg)+" "+String(zg));
}
