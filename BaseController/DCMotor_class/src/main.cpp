#include <Arduino.h>
#include <util/atomic.h>
#include "DCMotor.h"
//#include "RingBuff.h"
#include "Frame.h"
const int pwm[2] = {5,9};
const int in1[2] = {6,10};
const int in2[2] = {7,11};
const int enA[2] = {2,3};
const int enB[2] = {8,4};
// // const int pwm = 5;
// // const int in1=6;
// // const int in2 = 7;
// // const int enA = 2;
// // const int enB = 8;
// const int pwm = 9;
// const int in1  =10;
// const int in2 = 11;
// const int enA = 3;
// const int enB = 4;
// used in an interrupt
volatile int pos_i[2] = {0};
volatile float velocity_i[2]= {0};
volatile long prevT_i[2]= {0};

DCMotor m0(pwm[0],in1[0],in2[0],enA[0],enB[0],85);
DCMotor m1(pwm[1],in1[1],in2[1],enA[1],enB[1],85);
char c;
int a = 0,b = 0;
Frame buff ;
long prevT = 0;
void ISR0();
void ISR1();
void setup() {
  Serial.begin(115200);
  m0.SetUp(ISR0);
  m0.SetVel(0); 
  m1.SetUp(ISR1);
  m1.SetVel(0);
}

void loop() {
  ATOMIC_BLOCK(ATOMIC_RESTORESTATE){
    m0.m_pos = pos_i[0];
    m0.m_rawVel = velocity_i[0];
    m1.m_pos = pos_i[1];
    m1.m_rawVel = velocity_i[1];
  }
  if(Serial.available())
  {
    c = Serial.read();
    buff.Put_c(c);
  }
  if(millis() - prevT > 500)
  {
    prevT = millis();
    const char* tempbuff = buff.Get_Frame();
    Serial.println(tempbuff);
    sscanf(tempbuff,"%d,%d",&a,&b);
    if(a!=0 && 0 != b)
    {

      m0.SetVel((float)a/100);
      m1.SetVel((float)b/100);
      Serial.print("m0 = ");Serial.print(a); Serial.print('\t');Serial.print("m1 = "); Serial.println(b);
    }
  }
  m0.Run();
  m1.Run();
}

void ISR0(){
  // Read encoder B when ENCA rises
  int b = digitalRead(enB[0]);
  int increment = 0;
  if(b>0){
    // If B is high, increment forward
    increment = 1;
  }
  else{
    // Otherwise, increment backward
    increment = -1;
  }
  pos_i[0] = pos_i[0] + increment;

  // Compute velocity with method 2
  long currT = micros();
  float deltaT = ((float) (currT - prevT_i[0]))/1.0e6;
  velocity_i[0] = increment/deltaT;
  prevT_i[0] = currT;
}
void ISR1(){
  // Read encoder B when ENCA rises
  int b = digitalRead(enB[1]);
  int increment = 0;
  if(b>0){
    // If B is high, increment forward
    increment = 1;
  }
  else{
    // Otherwise, increment backward
    increment = -1;
  }
  pos_i[1] = pos_i[1] + increment;

  // Compute velocity with method 2
  long currT = micros();
  float deltaT = ((float) (currT - prevT_i[1]))/1.0e6;
  velocity_i[1] = increment/deltaT;
  prevT_i[1] = currT;
}