#ifndef DCMOTOR_H
#define DCMOTOR_H

class DCMotor
{
public:
    float m_kp,m_ki,m_kd;
    const unsigned int m_pwmPin,m_in1Pin,m_in2Pin,m_enAPin,m_enBPin;
    const unsigned int m_ratio;
    long unsigned int m_prevTime = 0;
    int m_pos = 0;
    float m_rawVel = 0,m_tarVel = 10,m_prevVel = 0, m_currVel = 0;
    float m_e = 0,m_eI = 0,m_eD = 0;
    DCMotor(unsigned int pwmPin,unsigned int in1Pin,unsigned int in2Pin,unsigned int enAPin,unsigned int enBPin,unsigned int ratio,float kp = 5,float ki = 10,float kd = 0);
    void SetUp(void (*isr)());
    void SetPwm(const int& pwm);
    void SetVel(const float& vel);
    void Run();
};  

#endif