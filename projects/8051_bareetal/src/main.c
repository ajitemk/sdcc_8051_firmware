#include"../inc/ajitem_8051.h"
void main(void)
{
	Gpio_Handle_t GpioLedP0;
	GpioLedP0.pGPIOx=P0;
	GpioLedP0.pGPIOx=HIGH;
	uint32_t i=1000;
	while(i--);
	GpioLedP0.pGPIOx=LOW;
	i=1000;
	while(i--);
}