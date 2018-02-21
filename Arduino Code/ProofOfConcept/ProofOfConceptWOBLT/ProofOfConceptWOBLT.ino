#include <SoftwareSerial.h>
#include <SerialCommand.h>


//SoftwareSerial BTserial(2, 3); // RX | TX
int LHandIndex_1 = 0;   //First Knuckle
int LHandIndex_2 = 0;   //Second Knuckle

int LHandIndex_1_Min = 1023;   //Calibration Values
int LHandIndex_1_Max = 0;      

int LHandIndex_2_Min = 1023;   //Calibration Values   
int LHandIndex_2_Max = 0;   

boolean connected = false;
boolean flag = false;

int buff[5]= {0,0,0,0,0};
int pos = 0;
SerialCommand SCmd;

int Index_1 = A4;
int Index_2 = A5;
void addToBuff(int c){
  buff[pos]=c;
  pos++;
  pos = (pos)%5;
}


int normalize(int c){
  addToBuff(c);
  return((buff[0]+buff[1]+buff[2]+buff[3]+buff[4])/5);
}
void setup() {
  //BTserial.begin(38400);
  Serial.being(38400);
  while(!Serial);
  SCmd.addCommand("P",pingHandler);
  //SCmd.addCommand("C",calibrateHandler);
  SCmd.addCommand("D",dataHandler);
}
void dataHandler(){

 
      LHandIndex_1 = map(analogRead(Index_1),LHandIndex_1_Min,LHandIndex_1_Max,0,90);
      LHandIndex_2 = map(analogRead(Index_2),LHandIndex_2_Min,LHandIndex_2_Max,0,90);
      String msg= "";
      msg = msg + String(LHandIndex_1) + ","+String(LHandIndex_2)+",";
      Serial.println(msg);
  

}

void loop() {  
  /*if(BTserial.available()>0){
    //SCmd.readSerial();
    char s = BTserial.read();
    if (s=='D'){
      dataHandler();
    }
    else if (s=='P'){
      pingHandler();
    }
    else if(s=='C'){
      calibrateHandler();
    }
  }*/
}

void pingHandler(){
  Serial.println("PONG");
}




