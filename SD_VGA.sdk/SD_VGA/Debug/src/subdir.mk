################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/I2C_16bit.c \
../src/echo.c \
../src/led_button.c \
../src/main.c \
../src/platform.c \
../src/sd.c 

OBJS += \
./src/I2C_16bit.o \
./src/echo.o \
./src/led_button.o \
./src/main.o \
./src/platform.o \
./src/sd.o 

C_DEPS += \
./src/I2C_16bit.d \
./src/echo.d \
./src/led_button.d \
./src/main.d \
./src/platform.d \
./src/sd.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -I"D:\BaiduNetdiskDownload\P10_SD_VGA_m\SD_VGA.sdk\CrossGCC_Lua\src" -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../freertos901_xilinx_bsp_0/ps7_cortexa9_0/include -I"D:\BaiduNetdiskDownload\P10_SD_VGA_m\SD_VGA.sdk\CrossGCC_Lua\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


