################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/lapi.c \
../src/lauxlib.c \
../src/lbaselib.c \
../src/lbitlib.c \
../src/lcode.c \
../src/lcorolib.c \
../src/lctype.c \
../src/ldblib.c \
../src/ldebug.c \
../src/ldo.c \
../src/ldump.c \
../src/lfunc.c \
../src/lgc.c \
../src/linit.c \
../src/liolib.c \
../src/llex.c \
../src/lmathlib.c \
../src/lmem.c \
../src/loadlib.c \
../src/lobject.c \
../src/lopcodes.c \
../src/loslib.c \
../src/lparser.c \
../src/lstate.c \
../src/lstring.c \
../src/lstrlib.c \
../src/ltable.c \
../src/ltablib.c \
../src/ltm.c \
../src/lua.c \
../src/luac.c \
../src/lundump.c \
../src/lutf8lib.c \
../src/lvm.c \
../src/lzio.c 

OBJS += \
./src/lapi.o \
./src/lauxlib.o \
./src/lbaselib.o \
./src/lbitlib.o \
./src/lcode.o \
./src/lcorolib.o \
./src/lctype.o \
./src/ldblib.o \
./src/ldebug.o \
./src/ldo.o \
./src/ldump.o \
./src/lfunc.o \
./src/lgc.o \
./src/linit.o \
./src/liolib.o \
./src/llex.o \
./src/lmathlib.o \
./src/lmem.o \
./src/loadlib.o \
./src/lobject.o \
./src/lopcodes.o \
./src/loslib.o \
./src/lparser.o \
./src/lstate.o \
./src/lstring.o \
./src/lstrlib.o \
./src/ltable.o \
./src/ltablib.o \
./src/ltm.o \
./src/lua.o \
./src/luac.o \
./src/lundump.o \
./src/lutf8lib.o \
./src/lvm.o \
./src/lzio.o 

C_DEPS += \
./src/lapi.d \
./src/lauxlib.d \
./src/lbaselib.d \
./src/lbitlib.d \
./src/lcode.d \
./src/lcorolib.d \
./src/lctype.d \
./src/ldblib.d \
./src/ldebug.d \
./src/ldo.d \
./src/ldump.d \
./src/lfunc.d \
./src/lgc.d \
./src/linit.d \
./src/liolib.d \
./src/llex.d \
./src/lmathlib.d \
./src/lmem.d \
./src/loadlib.d \
./src/lobject.d \
./src/lopcodes.d \
./src/loslib.d \
./src/lparser.d \
./src/lstate.d \
./src/lstring.d \
./src/lstrlib.d \
./src/ltable.d \
./src/ltablib.d \
./src/ltm.d \
./src/lua.d \
./src/luac.d \
./src/lundump.d \
./src/lutf8lib.d \
./src/lvm.d \
./src/lzio.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -I../../freertos901_xilinx_bsp_0/ps7_cortexa9_0/include -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


