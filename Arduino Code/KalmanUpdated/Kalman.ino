
#include <MPU6050_6Axis_MotionApps20.h>
#include "I2Cdev.h"
#include <arm_math.h>
#include "LighthouseSensor.h"
#include "LighthouseXYZ.h"



#include <SPI.h>
#include <RF24.h>
#include <nRF24L01.h>




#if I2CDEV_IMPLEMENTATION == I2CDEV_ARDUINO_WIRE
#include "Wire.h"
#endif
MPU6050 mpu;

#define INTERRUPT_PIN 2

bool dmpReady = false;  // set true if DMP init was successful
uint8_t mpuIntStatus;   // holds actual interrupt status byte from MPU
uint8_t devStatus;      // return status after each device operation (0 = success, !0 = error)
uint16_t packetSize;    // expected DMP packet size (default is 42 bytes)
uint16_t fifoCount;     // count of all bytes currently in FIFO
uint8_t fifoBuffer[64]; // FIFO storage buffer

						// orientation/motion vars
Quaternion q;           // [w, x, y, z]         quaternion container



VectorInt16 aa;         // [x, y, z]            accel sensor measurements
VectorInt16 gg;         // [x, y, z]            accel sensor measurements
VectorInt16 aaReal;
VectorFloat gravity;

LighthouseSensor sensor;
LighthouseXYZ xyz;


// Model
// Default dmp rate is 100 Hz
float32_t dt = .00025;

// References for future person wondering what the heck is going on:
// http://www.ece.montana.edu/seniordesign/archive/SP14/UnderwaterNavigation/kalman_filter.html
// Data Matrices

// Control Vector
// Accelorometer data
float32_t Un[3] = {
	0,		// X Acceleration from accelorometer
	0,		// Y Acceleration from accelorometer
	0		// Z Acceleration from accelorometer
};

// Control Matrix
// Basic kinematic equations:
// x_old = .5a_x*dt^2
float32_t B[18] = {
	.5*(dt*dt),	0		 ,0 ,			// X pos
	0		  ,.5*(dt*dt),0 ,			// Y pos
	0		  ,0		 ,.5*(dt*dt),	// Z pos
	dt		  ,0		 ,0,			// X vel
	0		  ,dt		 ,0,			// Y vel
	0		  ,0		 ,dt			// Z vel
};

// B*Un gives you the final control values, which are added on at the predict stage.

// Measurement Vector
// Lighthouse data
float32_t Zn[6] = {
	0,		// X Position from lighthouse
	0,		// Y Position from lighthouse
	0,		// Z Position from lighthouse

	0,		// X Velocity, calculated
	0,		// Y Velocity, calculated
	0		// Z Velocity, calculated
};
// Zn is used during the updoot stage to correct the predict stage. We trust the position measurement alot 
// but the velocity measurement is iffy, since that could be anything. We derive the velocity by taking the new measured position, and the old estimated position,
// and finding the difference and the time between them

//Current estimate of position and velocity
float32_t Xn[6] = {
	0,		// X pos
	0,		// Y pos
	0,		// Z pos

	0,		// X vel
	0,		// Y pos
	0		// Z pos
};
// We dont trust the estimated position as much as the measured positon, but we trust the estimated velocity more than the measured (TODO: Check how much more we should trust it)

// New error estimate
// Should be from 1->-1 I think. Needs to be not zero, otherwise no error correction will be done. 
// Numbers greater than 1 cause over correction which drives numbers to infinity
// TODO: Adjust for better starting values, using 1 as the error causes the filter to take ~ 10-15 seconds to stabalize
float32_t Pn[36] = {
	1,0,0,0,0,0 ,			// X pos
	0,1,0,0,0,0	,			// Y pos
	0,0,1,0,0,0	,			// Z pos
	0,0,0,1,0,0	,			// X vel
	0,0,0,0,1,0	,			// Y vel
	0,0,0,0,0,1	,			// Z vel
};
// State matrix
// The basic kinematic equations, 
// x_new = x_old + vel*dt
float32_t A[36] = {
	1,0,0,dt,0,0,			// X pos
	0,1,0,0,dt,0,			// Y pos
	0,0,1,0,0,dt,			// Z pos
	0,0,0,1,0,0,			// X vel
	0,0,0,0,1,0,			// Y vel
	0,0,0,0,0,1,			// Z vel
};

// Observation Matrix
// TODO: Find good values for this. We trust the velocity more than position, so I think the position values should be less than 1.
float32_t H[36] = {
	1,0,0,0,0,0,			// X pos
	0,1,0,0,0,0,			// Y pos
	0,0,1,0,0,0,			// Z pos
	0,0,0,1,0,0,			// X vel
	0,0,0,0,1,0,			// Y vel
	0,0,0,0,0,1,			// Z vel
};


// Process error
// This is the error from the accelorometer (I think????)
// TODO: Find out what this should be. Theoretically, it is the standard deviation^2   (std^2). According to Jay, the std is 7.
// However, you have to account for what system we will be using. If we use the system from the accelorometer, it is 49. If we use the lighthouse
// system, you have to divide by 8192 and multiply by 9.8 to convert to m/s^2
float32_t Q[36] = {
	0,0,0,0,0,0,			// X pos
	0,0,0,0,0,0,			// Y pos
	0,0,0,0,0,0,			// Z pos
	0,0,0,0,0,0,			// X vel
	0,0,0,0,0,0,			// Y vel
	0,0,0,0,0,0				// Z vel

};
// Measurement error
// This is the error from the lighthouse system. It should be very low, as the system has mm accuracy. However, this depends on how good our
// lighthouse tracking system will be
float32_t R[36] = {
	0,0,0,0,0,0,				// X pos
	0,0,0,0,0,0,				// Y pos
	0,0,0,0,0,0,				// Z pos
	0,0,0,0,0,0,				// X vel
	0,0,0,0,0,0,				// Y vel
	0,0,0,0,0,0,				// Z vel
};

// Transpose of A. Dont bother filling it out, it is calculated during setup so we can adjust A easily.
float32_t AT[36] = {
	0,0,0,0,0,0,			// X pos
	0,0,0,0,0,0,			// Y pos
	0,0,0,0,0,0,			// Z pos
	0,0,0,0,0,0,			// X vel
	0,0,0,0,0,0,			// Y vel
	0,0,0,0,0,0				// Z vel
};
// Transpose of H, same as above
float32_t HT[36] = {
	0,0,0,0,0,0,			// X pos
	0,0,0,0,0,0,			// Y pos
	0,0,0,0,0,0,			// Z pos
	0,0,0,0,0,0,			// X vel
	0,0,0,0,0,0,			// Y vel
	0,0,0,0,0,0,			// Z vel
};

// Predicted X
float32_t XPredicted[6] = {
	0,
	0,
	0,

	0,
	0,
	0
};
// Predicted error
float32_t PPredicted[36] = {
	0,0,0,0,0,0 ,				// X pos
	0,0,0,0,0,0 ,				// Y pos
	0,0,0,0,0,0 ,				// Z pos
	0,0,0,0,0,0 ,				// X vel
	0,0,0,0,0,0 ,				// Y vel
	0,0,0,0,0,0					// Z vel
};
// intermediate value of x as we update it with the measurement
float32_t yhat[6] = {
	0,
	0,
	0,

	0,
	0,
	0
};
// intermediate value of the error
float32_t S[36] = {
	0,0,0,0,0,0 ,				// X pos
	0,0,0,0,0,0 ,				// Y pos
	0,0,0,0,0,0 ,				// Z pos
	0,0,0,0,0,0 ,				// X vel
	0,0,0,0,0,0 ,				// Y vel
	0,0,0,0,0,0					// Z vel
};
// Kalman gain
float32_t K[36] = {
	0,0,0,0,0,0 ,				// X pos
	0,0,0,0,0,0 ,				// Y pos
	0,0,0,0,0,0 ,				// Z pos
	0,0,0,0,0,0 ,				// X vel
	0,0,0,0,0,0 ,				// Y vel
	0,0,0,0,0,0					// Z vel
};

// 6x6 Identity matrix
float32_t I[36] = {
	1,0,0,0,0,0,				// X pos
	0,1,0,0,0,0,				// Y pos
	0,0,1,0,0,0,				// Z pos
	0,0,0,1,0,0,				// X vel
	0,0,0,0,1,0,				// Y vel
	0,0,0,0,0,1					// Z vel
};
// temp matricies
float32_t temp1[36] = {
	0,0,0,0,0,0 ,				// X pos
	0,0,0,0,0,0 ,				// Y pos
	0,0,0,0,0,0 ,				// Z pos
	0,0,0,0,0,0 ,				// X vel
	0,0,0,0,0,0 ,				// Y vel
	0,0,0,0,0,0					// Z vel
};
float32_t temp2[36] = {
	0,0,0,0,0,0 ,				// X pos
	0,0,0,0,0,0 ,				// Y pos
	0,0,0,0,0,0 ,				// Z pos
	0,0,0,0,0,0 ,				// X vel
	0,0,0,0,0,0 ,				// Y vel
	0,0,0,0,0,0					// Z vel
};
// More temp matricies
float32_t smallTemp1[6] = {
	0,
	0,
	0,

	0,
	0,
	0
};
float32_t smallTemp2[6] = {
	0,
	0,
	0,

	0,
	0,
	0
};

// The teensy 3.2 uses an ARM Cortex M4 chip. This gives it access to a special set of skills that let it do matrix operations very well
// ARM specific Matrix stuff
arm_matrix_instance_f32 aUn;
arm_matrix_instance_f32 aZn;
arm_matrix_instance_f32 aXn;
arm_matrix_instance_f32 aPn;
arm_matrix_instance_f32 aA;
arm_matrix_instance_f32 aAT;
arm_matrix_instance_f32 aB;
arm_matrix_instance_f32 aH;
arm_matrix_instance_f32 aHT;
arm_matrix_instance_f32 aQ;
arm_matrix_instance_f32 aR;
arm_matrix_instance_f32 aXP;
arm_matrix_instance_f32 aPP;
arm_matrix_instance_f32 aYH;
arm_matrix_instance_f32 aS;
arm_matrix_instance_f32 aK;
arm_matrix_instance_f32 aT1;
arm_matrix_instance_f32 aT2;
arm_matrix_instance_f32 aI;
arm_matrix_instance_f32 aST1;
arm_matrix_instance_f32 aST2;



volatile bool mpuInterrupt = false;     // indicates whether MPU interrupt pin has gone high
void dmpDataReady() {
	mpuInterrupt = true;
}

RF24 radio(8, 10);
const uint64_t pipes[2] = {
	0xF0f0f0f0E1LL,0xf0f0f0f0D2LL
};


typedef struct {
	int16_t ax=1;
	int16_t ay=2;
	int16_t az=3;
	Quaternion rot;
	uint32_t time;
}dataStruct;

dataStruct data;

void setup()
{
	radio.begin();
	radio.setAutoAck(false);
	radio.setDataRate(RF24_2MBPS);
	radio.setPALevel(RF24_PA_MAX);
	radio.setChannel(124);
	radio.openWritingPipe(pipes[0]);
	radio.openReadingPipe(1, pipes[1]);
	
#if I2CDEV_IMPLEMENTATION == I2CDEV_ARDUINO_WIRE
	Wire.begin();
	Wire.setClock(400000); // 400kHz I2C clock. Comment this line if having compilation difficulties
#elif I2CDEV_IMPLEMENTATION == I2CDEV_BUILTIN_FASTWIRE
	Fastwire::setup(400, true);
#endif
	Serial.begin(115200);
	mpu.initialize();
	pinMode(INTERRUPT_PIN, INPUT);
	devStatus = mpu.dmpInitialize();
	mpu.setXGyroOffset(220);
	mpu.setYGyroOffset(76);
	mpu.setZGyroOffset(-85);
	mpu.setXAccelOffset(580); // 1688 factory default for my test chip
	mpu.setYAccelOffset(-4770); // 1688 factory default for my test chip
	mpu.setZAccelOffset(1120); // 1688 factory default for my test chip

	if (devStatus == 0) {
		// turn on the DMP, now that it's ready
		Serial.println(F("Enabling DMP..."));
		mpu.setDMPEnabled(true);

		// enable Arduino interrupt detection
		Serial.println(F("Enabling interrupt detection (Arduino external interrupt 0)..."));
		attachInterrupt(digitalPinToInterrupt(INTERRUPT_PIN), dmpDataReady, RISING);
		mpuIntStatus = mpu.getIntStatus();

		// set our DMP Ready flag so the main loop() function knows it's okay to use it
		Serial.println(F("DMP ready! Waiting for first interrupt..."));
		dmpReady = true;

		// get expected DMP packet size for later comparison
		packetSize = mpu.dmpGetFIFOPacketSize();

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
	arm_mat_init_f32(&aUn, 3, 1, (float32_t *)Un);
	arm_mat_init_f32(&aZn, 6, 1, (float32_t *)Zn);
	arm_mat_init_f32(&aXn, 6, 1, (float32_t *)Xn);
	arm_mat_init_f32(&aPn, 6, 6, (float32_t *)Pn);
	arm_mat_init_f32(&aA, 6, 6, (float32_t *)A);
	arm_mat_init_f32(&aAT, 6, 6, (float32_t *)AT);
	arm_mat_init_f32(&aB, 6, 3, (float32_t *)B);
	arm_mat_init_f32(&aH, 6, 6, (float32_t *)H);
	arm_mat_init_f32(&aHT, 6, 6, (float32_t *)HT);
	arm_mat_init_f32(&aQ, 6, 6, (float32_t *)Q);
	arm_mat_init_f32(&aR, 6, 6, (float32_t *)R);
	arm_mat_init_f32(&aXP, 6, 1, (float32_t *)XPredicted);
	arm_mat_init_f32(&aPP, 6, 6, (float32_t *)PPredicted);
	arm_mat_init_f32(&aYH, 6, 1, (float32_t *)yhat);
	arm_mat_init_f32(&aS, 6, 6, (float32_t *)S);
	arm_mat_init_f32(&aK, 6, 6, (float32_t *)K);
	arm_mat_init_f32(&aT1, 6, 6, (float32_t *)temp1);
	arm_mat_init_f32(&aT2, 6, 6, (float32_t *)temp2);
	arm_mat_init_f32(&aI, 6, 6, (float32_t *)I);
	arm_mat_init_f32(&aST1, 6, 1, (float32_t *)smallTemp1);
	arm_mat_init_f32(&aST2, 6, 1, (float32_t *)smallTemp2);

	arm_mat_trans_f32(&aA, &aAT);
	arm_mat_trans_f32(&aH, &aHT);
	//sensor.begin(0, 5, 6);
	//xyz.begin(0, &lightsources[0], &lightsources[1]);
}



void loop()
{
	if (!dmpReady) 
	{
		pinMode(13, OUTPUT);
		digitalWrite(13, HIGH);
		delay(1000);
		digitalWrite(13, LOW);
		delay(1000);
		return;
	}
	//uint8_t newData[] ="Hello World!";
	while (!mpuInterrupt && fifoCount < packetSize) {
		//Serial.println("Sending");
		radio.stopListening();
		data.time = micros();
		radio.write(&data, sizeof(data));
		radio.startListening();
	}
	mpuInterrupt = false;
	mpuIntStatus = mpu.getIntStatus();

	// get current FIFO count
	fifoCount = mpu.getFIFOCount();

	// check for overflow (this should never happen unless our code is too inefficient)
	if ((mpuIntStatus & 0x10) || fifoCount == 1024) {
		// reset so we can continue cleanly
		mpu.resetFIFO();
		Serial.println(F("FIFO overflow!"));

		// otherwise, check for DMP data ready interrupt (this should happen frequently)
	}
	else if (mpuIntStatus & 0x02) {
		// wait for correct available data length, should be a VERY short wait
		while (fifoCount < packetSize) fifoCount = mpu.getFIFOCount();

		// read a packet from FIFO
		mpu.getFIFOBytes(fifoBuffer, packetSize);

		// track FIFO count here in case there is > 1 packet available
		// (this lets us immediately read more without waiting for an interrupt)
		fifoCount -= packetSize;
		mpu.dmpGetQuaternion(&q, fifoBuffer);
		mpu.dmpGetAccel(&aa, fifoBuffer);
		mpu.dmpGetGravity(&gravity, &q);
		mpu.dmpGetLinearAccel(&aaReal, &aa, &gravity);
		//mpu.dmpGetGyro(&gg, fifoBuffer);
		Zn[3] = aaReal.x*dt;
		Zn[4] = aaReal.y*dt;
		Zn[5] = aaReal.z*dt;
		Un[0] = (aaReal.x);// / 8192.0f)*9.8f;
		Un[1] = (aaReal.y);// / 8192.0f)*9.8f;
		Un[2] = (aaReal.z);// / 8192.0f)*9.8f;
		
		data.ax = aaReal.x;
		data.ay = aaReal.y;
		data.az = aaReal.z;
		data.rot = q;


		/*
		data[0] = (aaReal.x>>8)&0xF;
		data[1] = aaReal.x&0xF;

		data[2] = (aaReal.y >> 8) & 0xF;
		data[3] = aaReal.y & 0xF;

		data[4] = (aaReal.z >> 8) & 0xF;
		data[5] = aaReal.z & 0xF;
		*/
		// Reset FIFO for faster updates?
		mpu.resetFIFO();
		//Serial.print(Zn[6]);
		//Serial.print(",");
		//Serial.print(Zn[7]);
		//Serial.print(",");
		//Serial.println(Zn[8]);

		//KalmanOld();


	}
}
void KalmanOld() {
	arm_status status;
	// XPredicted = 
	status = arm_mat_mult_f32(&aA, &aXn, &aST1);
	status = arm_mat_mult_f32(&aB, &aUn, &aST2);
	status = arm_mat_add_f32(&aST1, &aST2, &aXP);
	// PPredicted = {smallTemp1[0]}{smallTemp1[1]}{smallTemp1[2]}{smallTemp1[6]}{smallTemp1[7]}{smallTemp1[8]}
	status = arm_mat_mult_f32(&aA, &aPn, &aT1);
	status = arm_mat_mult_f32(&aT1, &aAT, &aT2);
	status = arm_mat_add_f32(&aT2, &aQ, &aPP);
	// yhat ={XPredicted[6]}{XPredicted[7]}{XPredicted[8]}
	status = arm_mat_mult_f32(&aH, &aXP, &aST1);
	status = arm_mat_sub_f32(&aZn, &aST1, &aYH);
	// S =
	status = arm_mat_mult_f32(&aH, &aPP, &aT1);
	status = arm_mat_mult_f32(&aT1, &aHT, &aT2);
	status = arm_mat_add_f32(&aT2, &aR, &aS);
	// K =
	status = arm_mat_inverse_f32(&aS, &aT1);
	status = arm_mat_mult_f32(&aPP, &aHT, &aT2);
	status = arm_mat_mult_f32(&aT2, &aT1, &aK);
	// Xn = 
	status = arm_mat_mult_f32(&aK, &aYH, &aST1);
	status = arm_mat_add_f32(&aXP, &aST1, &aXn);
	// Pn = 
	status = arm_mat_mult_f32(&aK, &aH, &aT1);
	status = arm_mat_sub_f32(&aI, &aT1, &aT2);
	status = arm_mat_mult_f32(&aT2, &aPP, &aPn);

}
void Kalman() {
	arm_status status;
	// P_k = A_{k-1} P_{k-1} A^T_{k-1} + Q_{k-1}
	status = arm_mat_mult_f32(&aA, &aPn, &aT1);
	status = arm_mat_mult_f32(&aT1, &aAT, &aT2);
	status = arm_mat_add_f32(&aT2, &aQ, &aPP);

	// G_k = P_k H^T_k (H_k P_k H^T_k + R)^{-1} 
	status = arm_mat_mult_f32(&aH, &aPP, &aT1);
	status = arm_mat_mult_f32(&aT1, &aHT, &aT2);
	status = arm_mat_mult_f32(&aT2, &aR, &aT1);
	status = arm_mat_inverse_f32(&aT1, &aT2);
	status = arm_mat_mult_f32(&aPP, &aHT, &aT1);
	status = arm_mat_mult_f32(&aT1, &aT2, &aK);

	// \hat{x}_k = \hat{x_k} + G_k(z_k - h(\hat{x}_k))
	//status = arm_mat_mult_f32
}