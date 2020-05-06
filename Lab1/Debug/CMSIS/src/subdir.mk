################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS/src/system_stm32f4xx.c 

OBJS += \
./CMSIS/src/system_stm32f4xx.o 

C_DEPS += \
./CMSIS/src/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS/src/system_stm32f4xx.o: ../CMSIS/src/system_stm32f4xx.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DSTM32F407VGTx -DDEBUG -c -I/Lab1/CMSIS/inc -I/Lab1/Core/inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"CMSIS/src/system_stm32f4xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

