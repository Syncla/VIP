// nrf24_reliable_datagram_server.pde
// -*- mode: C++ -*-
// Example sketch showing how to create a simple addressed, reliable messaging server
// with the RHReliableDatagram class, using the RH_NRF24 driver to control a NRF24 radio.
// It is designed to work with the other example nrf24_reliable_datagram_client
// Tested on Uno with Sparkfun WRL-00691 NRF24L01 module
// Tested on Teensy with Sparkfun WRL-00691 NRF24L01 module
// Tested on Anarduino Mini (http://www.anarduino.com/mini/) with RFM73 module
// Tested on Arduino Mega with Sparkfun WRL-00691 NRF25L01 module

#include <SPI.h>
#include <RF24.h>
#include <nRF24L01.h>
#include <MPU6050_6Axis_MotionApps20.h>
#include "I2Cdev.h"

RF24 radio(8, 10);
const uint64_t pipes[2] = {
	0xF0f0f0f0E1LL,0xf0f0f0f0D2LL
};
typedef struct {
	int16_t ax;
	int16_t ay;
	int16_t az;
	Quaternion rot;
	uint32_t time;
}dataStruct;

dataStruct data;
void setup()
{
	
	Serial.begin(115200);
	while (!Serial);
	radio.begin();
	radio.setAutoAck(false);
	radio.setDataRate(RF24_2MBPS);
	radio.setPALevel(RF24_PA_MAX);
	radio.setChannel(124);
	radio.openWritingPipe(pipes[1]);
	radio.openReadingPipe(1, pipes[0]);
	radio.startListening();
	Serial.println("Starting");
	//driver.setRF(RH_NRF24::DataRate1Mbps, RH_NRF24::TransmitPower0dBm);
	// Defaults after init are 2.402 GHz (channel 2), 2Mbps, 0dBm
}
void loop()
{

	//16 16 16 16 16 16 16
	if (radio.available() || true) {
		radio.read(&data, sizeof(data));
		
		Serial.print(data.ax);
		Serial.print("\t");
		Serial.print(data.ay);
		Serial.print("\t");
		Serial.print(data.az);
		Serial.print("\t");
		Serial.print(data.rot.w);
		Serial.print("\t");
		Serial.print(data.rot.x);
		Serial.print("\t");
		Serial.print(data.rot.y);
		Serial.print("\t");
		Serial.print(data.rot.z);
		Serial.print("\t");
		Serial.println(data.time);
		//Serial.println("---");
		


	}
}
