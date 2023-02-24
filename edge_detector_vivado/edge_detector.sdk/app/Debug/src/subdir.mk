################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/dynclk.c \
../src/main.c \
../src/ov5640.c \
../src/platform.c \
../src/ps_iic_control.c \
../src/vtc_control.c \
../src/xclk_control.c 

OBJS += \
./src/dynclk.o \
./src/main.o \
./src/ov5640.o \
./src/platform.o \
./src/ps_iic_control.o \
./src/vtc_control.o \
./src/xclk_control.o 

C_DEPS += \
./src/dynclk.d \
./src/main.d \
./src/ov5640.d \
./src/platform.d \
./src/ps_iic_control.d \
./src/vtc_control.d \
./src/xclk_control.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../app_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


