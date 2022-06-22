// DC motor 1:
#ifndef HW_CONFIG_H
#define HW_CONFIG_H

#define ESP32

#ifdef ESP32
// DC-Motor0 ENCODER:
#define DC0_ENA 3
#define DC0_ENB 4
#define DC0_PWM 5
#define DC0_IN1 6
#define DC0_IN2 7
// PROPERTIES
#define DC0_RATIO 78

// DC-Motor0:
#define DC1_ENA 2
#define DC1_ENB 8
#define DC1_PWM 9
#define DC1_IN1 10
#define DC1_IN2 11

#define DC1_RATIO 78

#endif

#endif