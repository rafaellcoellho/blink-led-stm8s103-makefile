#include "blink.h"
#include "stm8l.h"

void blink_led(void)
{
	int d;

	PB_DDR = 0x20;
	PB_CR1 = 0x20;

	do {
		PB_ODR ^= 0x20;
		for(d = 0; d < 20000; d++) { }
	} while(1);
}
