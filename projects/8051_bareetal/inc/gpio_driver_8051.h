

typedef struct{
	uint8_t GPIO_High;//possible values from @GPIO_PIN_NUMBER
	uint8_t GPIO_Low; //Possible values from @GPIO_PIN_MODES
	
}GPIO_PinConfig_t;

typedef struct{
	Gpio_RegDef_t *pGPIOx;// this holds the base address of the gpio port to which the pin belongs
	GPIO_PinConfig_t GPIO_PinConfig;//this hold gpio pin configuration setting
}Gpio_Handle_t;