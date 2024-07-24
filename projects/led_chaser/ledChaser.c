#include<8051.h>

#include<stdint.h>

#define PIN_1  (uint8_t)(1<<0)
#define PIN_2  (uint8_t)(1<<1)
#define PIN_3  (uint8_t)(1<<2)
#define PIN_4  (uint8_t)(1<<3)
#define PIN_5  (uint8_t)(1<<4)
#define PIN_6  (uint8_t)(1<<5)
#define PIN_7  (uint8_t)(1<<6)
#define PIN_8  (uint8_t)(1<<7)

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

#define PORT_0 0
#define PORT_1 1

#define PORT_2 2

#define PORT_3 3


void delay(uint32_t i);
void blink(unsigned char port, unsigned char pin);
void main(void)
{	
	uint8_t i;
	uint8_t ledPins[8]={PIN_1,PIN_2,PIN_3,PIN_4,PIN_5,PIN_6,PIN_7,PIN_8};
	P1=0x00;	
	P2=0x00;
	P0=0xff;
	P3=0x00;
	P2_0=1;                           //this way we can access port bit.
	delay(20000);
	while(1)
	{
		//led chaser with for loop start
		for(i=0;i<8;i++)
		{
			//one method for blink
			P2 |= 1<<i;
			delay(1000);
			P2 &= ~(1<<i);
			delay(1000);
			//second method ofr blink
			blink(PORT_0,ledPins[i]);
		}
		//led chaser with for loop end				blink(1,P1_PIN_1);

			blink(1,P1_PIN_2);

			blink(1,P1_PIN_3);

			blink(1,P1_PIN_4);

			blink(1,P1_PIN_5);

			blink(1,P1_PIN_6);

			blink(1,P1_PIN_7);

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
	delay(1000);
}