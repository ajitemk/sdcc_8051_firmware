#include<stdint.h>
#define P0_BASEADDR 0x80
#define P1_BASEADDR 0x90
#define P2_BASEADDR 0xA0
#define P3_BASEADDR 0xB0
#define HIGH 1
#define LOW 0
typedef struct
{
	uint8_t Pin_1; //80	90	A0	B0
	uint8_t Pin_2; //81
	uint8_t Pin_3; //82
	uint8_t Pin_4; //83
	uint8_t Pin_5; //84
	uint8_t Pin_6; //85
	uint8_t Pin_7; //86
	uint8_t Pin_8; //87
}Gpio_RegDef_t;

#define P0 (Gpio_RegDef_t*)P0_BASEADDR
#define P1 (Gpio_RegDef_t*)P1_BASEADDR
#define P2 (Gpio_RegDef_t*)P2_BASEADDR
#define P3 (Gpio_RegDef_t*)P3_BASEADDR

#include "gpio_driver_8051.h"