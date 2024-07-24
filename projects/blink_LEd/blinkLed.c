#include<reg51.h>
void main(void)
{
	while(1)
	{
		unsigned int i=1000;
		P1=0x00;

		while(i)
		{
			i--;
		}
		P1=0x00;
		i=1000;
		while(i)
		{
			i--;
		}	
	}
}

