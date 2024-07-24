#include<8051.h>

#include<stdint.h>

#define P0_PIN_1  (uint8_t)(1<<0)
#define P0_PIN_2  (uint8_t)(1<<1)
#define P0_PIN_3  (uint8_t)(1<<2)
#define P0_PIN_4  (uint8_t)(1<<3)
#define P0_PIN_5  (uint8_t)(1<<4)
#define P0_PIN_6  (uint8_t)(1<<5)
#define P0_PIN_7  (uint8_t)(1<<6)
#define P0_PIN_8  (uint8_t)(1<<7)

#define P1_PIN_1  (uint8_t)(1<<0)
#define P1_PIN_2  (uint8_t)(1<<1)
#define P1_PIN_3  (uint8_t)(1<<2)
#define P1_PIN_4  (uint8_t)(1<<3)
#define P1_PIN_5  (uint8_t)(1<<4)
#define P1_PIN_6  (uint8_t)(1<<5)
#define P1_PIN_7  (uint8_t)(1<<6)
#define P1_PIN_8  (uint8_t)(1<<7)

#define P2_PIN_1  (uint8_t)(1<<0)
#define P2_PIN_2  (uint8_t)(1<<1)
#define P2_PIN_3  (uint8_t)(1<<2)
#define P2_PIN_4  (uint8_t)(1<<3)
#define P2_PIN_5  (uint8_t)(1<<4)
#define P2_PIN_6  (uint8_t)(1<<5)
#define P2_PIN_7  (uint8_t)(1<<6)
#define P2_PIN_8  (uint8_t)(1<<7)

#define P3_PIN_1  (uint8_t)(1<<0)
#define P3_PIN_2  (uint8_t)(1<<1)
#define P3_PIN_3  (uint8_t)(1<<2)
#define P3_PIN_4  (uint8_t)(1<<3)
#define P3_PIN_5  (uint8_t)(1<<4)
#define P3_PIN_6  (uint8_t)(1<<5)
#define P3_PIN_7  (uint8_t)(1<<6)
#define P3_PIN_8  (uint8_t)(1<<7)


void delay(uint32_t i);
void blink(unsigned char port, unsigned char pin);
void main(void)
{	
	P1=0x00;	
	P2=0x00;
	P0=0xff;
	P3=0x00;
	P2_0=1;                           //this way we can access port bit.
	delay(20000);
	while(1)
	{
			blink(1,P1_PIN_8);
		
	}
}
void delay(uint32_t i)
{
	for(uint32_t j=0;j<10;j++)
	{
		for(uint32_t k=0;k<i;k++)
		{
			__asm__("nop");
		}
	}
}

void blink(unsigned char port, unsigned char pin)
{
    switch (port)
    {
        case 0:
            P0 ^= (pin); // Toggle pin on Port 0
            break;
        case 1:
            P1 ^= (pin); // Toggle pin on Port 1
            break;
        case 2:
            P2 ^= (pin); // Toggle pin on Port 2
            break;
        case 3:
            P3 ^= (pin); // Toggle pin on Port 3
            break;
        default:
            // Invalid port, handle error if necessary
            break;
    }
    delay(1000); // 1 second delay
}