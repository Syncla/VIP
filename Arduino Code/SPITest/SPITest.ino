#include <SPI.h>

int SSel = 10;
uint8_t option=			B00000000;
uint8_t option2	= B00000000;
const uint8_t colors[] = { B10100000,	B00000101,B10100101,B00011000 };

void setup()
{
	/* add setup code here */
	pinMode(SSel, OUTPUT);
	//digitalWrite(SSel, HIGH);
	//SPI.begin();
	Serial.begin(115200);
	
	SPI.begin();
	//while (!Serial);
}
uint8_t idx = 0;
uint8_t data = 0;
uint8_t old = 0;
void loop()
{
	Serial.print("Start Transmission\t");
	//int idx = random(0, 4);
	option = colors[idx];
	option2 = colors[(idx+1)%4];
	uint8_t options[] = { option,option2 };
	uint8_t ret[] = {0,0};
	SPI.beginTransaction(SPISettings(8000000, MSBFIRST, SPI_MODE0));
	digitalWrite(SSel, LOW);
	SPI.transfer(
		&options, &ret, 2
	);
	digitalWrite(SSel, HIGH);
	SPI.endTransaction();
	Serial.print(old);
	Serial.print("|");
	Serial.print(ret[0]);
	Serial.print("\t");
	Serial.print(option);
	Serial.print("|");
	Serial.print(ret[1]);
	Serial.print("\t");
	old = option2;
	Serial.print("End Transmission");
	Serial.println();
	delay(1000);
	idx = (idx + 1) % 4;

}
