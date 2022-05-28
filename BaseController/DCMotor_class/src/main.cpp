#include <Arduino.h>
#include <util/atomic.h>
// Pins

#include "DCMotor.h"

const int pwm[2] = {5,9};
const int in1[2] = {6,10};
const int in2[2] = {7,11};
const int enA[2] = {2,3};
const int enB[2] = {8,4};
// used in an interrupt
volatile int pos_i[2] = {0};
volatile float velocity_i[2]= {0};
volatile long prevT_i[2]= {0};

DCMotor m0(pwm[0],in1[0],in2[0],enA[0],enB[0],85);
DCMotor m1(pwm[0],in1[0],in2[0],enA[0],enB[0],78);
void ISR0();
void ISR1();
void setup() {
  Serial.begin(76800);
  m0.SetUp(ISR0);
  m0.SetVel(-20); 
  m1.SetUp(ISR1);
  m1.SetVel(-20);
}

void loop() {
  ATOMIC_BLOCK(ATOMIC_RESTORESTATE){
    m0.m_pos = pos_i[0];
    m0.m_rawVel = velocity_i[0];
    m1.m_pos = pos_i[1];
    m1.m_rawVel = velocity_i[1];
  }
  m0.Run();
  m1.Run();
  //m0.SetPwm(100);
  // digitalWrite(in1[0],HIGH);
  // digitalWrite(in2[0],LOW);
  // analogWrite(pwm[0],100);
  //Serial.println();
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
  pos_i[1] = pos_i[1] + increment;

  // Compute velocity with method 2
  long currT = micros();
  float deltaT = ((float) (currT - prevT_i[1]))/1.0e6;
  velocity_i[1] = increment/deltaT;
  prevT_i[1] = currT;
}