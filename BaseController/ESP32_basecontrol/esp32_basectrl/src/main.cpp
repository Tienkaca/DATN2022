#include <Arduino.h>
#include "DCMotor.h"
#include "Frame.h"
#include "hw_config.h"
volatile int pos_i[2] = {0};
volatile float velocity_i[2] = {0};
volatile long prevT_i[2] = {0};

DCMotor Motor0(DC0_PWM, DC0_IN1, DC0_IN2, DC0_ENA, DC0_ENB, DC0_RATIO);
DCMotor Motor1(DC1_PWM, DC1_IN1, DC1_IN2, DC1_ENA, DC1_ENB, DC1_RATIO);
char c;
int a = 0, b = 0;
Frame buff;
long prevT = 0;
void ISR0();
void ISR1();
void setup()
{
  Serial.begin(115200);
  Motor0.SetUp(ISR0);
  Motor0.SetVel(50);
  Motor1.SetUp(ISR1);
  Motor1.SetVel(50);
}

void loop()
{

  Motor0.m_pos = pos_i[0];
  Motor0.m_rawVel = velocity_i[0];
  Motor1.m_pos = pos_i[1];
  Motor1.m_rawVel = velocity_i[1];

  Motor0.Run();
  Motor1.Run();
}

void IRAM_ATTR ISR0()
{
  // Read encoder B when ENCA rises
  int b = digitalRead(DC0_ENB);
  int increment = 0;
  if (b > 0)
  {
    // If B is high, increment forward
    increment = 1;
  }
  else
  {
    // Otherwise, increment backward
    increment = -1;
  }
  pos_i[0] = pos_i[0] + increment;

  // Compute velocity with method 2
  long currT = micros();
  float deltaT = ((float)(currT - prevT_i[0])) / 1.0e6;
  velocity_i[0] = increment / deltaT;
  prevT_i[0] = currT;
}
void IRAM_ATTR ISR1()
{
  // Read encoder B when ENCA rises
  int b = digitalRead(DC1_ENB);
  int increment = 0;
  if (b > 0)
  {
    // If B is high, increment forward
    increment = 1;
  }
  else
  {
    // Otherwise, increment backward
    increment = -1;
  }
  pos_i[1] = pos_i[1] + increment;

  // Compute velocity with method 2
  long currT = micros();
  float deltaT = ((float)(currT - prevT_i[1])) / 1.0e6;
  velocity_i[1] = increment / deltaT;
  prevT_i[1] = currT;
}