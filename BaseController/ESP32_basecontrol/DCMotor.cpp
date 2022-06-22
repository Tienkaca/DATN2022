#include "DCMotor.h"
#include <Arduino.h>
DCMotor::DCMotor(unsigned int pwmPin, unsigned int in1Pin, unsigned int in2Pin, unsigned int enAPin, unsigned int enBPin, unsigned int ratio, float kp = 5, float ki = 10, float kd = 0)
    : m_pwmPin(pwmPin), m_in1Pin(in1Pin), m_in2Pin(in2Pin), m_enAPin(enAPin), m_enBPin(enBPin), m_ratio(ratio),
      m_kp(kp), m_ki(ki), m_kd(kd)
{
}
void DCMotor::SetUp(void (*isr)())
{
    pinMode(m_enAPin, INPUT);
    pinMode(m_enBPin, INPUT);
    pinMode(m_pwmPin, OUTPUT);
    pinMode(m_in1Pin, OUTPUT);
    pinMode(m_in2Pin, OUTPUT);
    attachInterrupt(digitalPinToInterrupt(m_enAPin), isr, RISING);
}

void DCMotor::SetVel(const float &vel)
{
    m_tarVel = vel;
}
void DCMotor::Run()
{
    long currT = micros();
    float deltaT = ((float)(currT - m_prevTime)) / 1.0e6;
    m_prevTime = currT;
    // Convert count/s to RPM
    m_rawVel = m_rawVel / (m_ratio * 11) * 60.0;
    // Low-pass filter (25 Hz cutoff)
    m_currVel = 0.854 * m_currVel + 0.0728 * m_rawVel + 0.0728 * m_prevVel;
    m_prevVel = m_rawVel;
    // Serial.print("m_currVel:\t");Serial.print(m_currVel);Serial.print('\t');
    //  Compute the control signal u
    m_e = m_tarVel - m_currVel;
    // Serial.print("e:\t");Serial.print(e);Serial.print('\t');
    m_eI = m_eI + m_e * deltaT;
    float u = m_kp * m_e + m_ki * m_eI;
    // Serial.print("u:\t");Serial.print(u);Serial.print('\t');
    SetPwm(u);
}
void DCMotor::SetPwm(const int &pwm)
{
    int absPwm = abs(pwm);
    if (absPwm > 255)
        absPwm = 255;
    analogWrite(m_pwmPin, pwm); // Motor speed

    if (pwm > 0)
    {
        // Turn one way
        digitalWrite(m_in1Pin, HIGH);
        digitalWrite(m_in2Pin, LOW);
    }
    else if (pwm < 0)
    {
        // Turn the other way
        digitalWrite(m_in1Pin, LOW);
        digitalWrite(m_in2Pin, HIGH);
    }
    else
    {
        // Or dont turn
        digitalWrite(m_in1Pin, LOW);
        digitalWrite(m_in2Pin, LOW);
    }
}