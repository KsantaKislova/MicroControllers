#include "stm32f4xx.h"
#include "main.h"

volatile uint32_t delayTimerValue = 0;

// SysTick interrupt handle
void SysTick_Handler(void){
	delayTimerValue--;
}


// Set delay in milliseconds using SysTick timer
void delayMs(uint32_t delay){
	delayTimerValue = delay;

	while(delayTimerValue);
}


int main(void){
	RCC -> AHB1ENR |=(1<<21);
	GPIOD -> MODER |=0x55550000;
	while(1) {
		GPIOD -> ODR |=0x0000FF00;
		delayMs(1000);

		GPIOD -> ODR &= ~(0x0000FF00);
		delayMs(1000);
	}
}
