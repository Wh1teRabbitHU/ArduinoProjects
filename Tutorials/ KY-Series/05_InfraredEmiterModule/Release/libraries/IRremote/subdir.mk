################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/IRremote.cpp \
/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/irPronto.cpp \
/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/irRecv.cpp \
/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/irSend.cpp \
/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_Aiwa.cpp \
/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_Denon.cpp \
/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_Dish.cpp \
/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_JVC.cpp \
/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_LG.cpp \
/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_Mitsubishi.cpp \
/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_NEC.cpp \
/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_Panasonic.cpp \
/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_RC5_RC6.cpp \
/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_Samsung.cpp \
/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_Sanyo.cpp \
/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_Sharp.cpp \
/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_Sony.cpp \
/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_Template.cpp \
/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_Whynter.cpp 

LINK_OBJ += \
./libraries/IRremote/IRremote.cpp.o \
./libraries/IRremote/irPronto.cpp.o \
./libraries/IRremote/irRecv.cpp.o \
./libraries/IRremote/irSend.cpp.o \
./libraries/IRremote/ir_Aiwa.cpp.o \
./libraries/IRremote/ir_Denon.cpp.o \
./libraries/IRremote/ir_Dish.cpp.o \
./libraries/IRremote/ir_JVC.cpp.o \
./libraries/IRremote/ir_LG.cpp.o \
./libraries/IRremote/ir_Mitsubishi.cpp.o \
./libraries/IRremote/ir_NEC.cpp.o \
./libraries/IRremote/ir_Panasonic.cpp.o \
./libraries/IRremote/ir_RC5_RC6.cpp.o \
./libraries/IRremote/ir_Samsung.cpp.o \
./libraries/IRremote/ir_Sanyo.cpp.o \
./libraries/IRremote/ir_Sharp.cpp.o \
./libraries/IRremote/ir_Sony.cpp.o \
./libraries/IRremote/ir_Template.cpp.o \
./libraries/IRremote/ir_Whynter.cpp.o 

CPP_DEPS += \
./libraries/IRremote/IRremote.cpp.d \
./libraries/IRremote/irPronto.cpp.d \
./libraries/IRremote/irRecv.cpp.d \
./libraries/IRremote/irSend.cpp.d \
./libraries/IRremote/ir_Aiwa.cpp.d \
./libraries/IRremote/ir_Denon.cpp.d \
./libraries/IRremote/ir_Dish.cpp.d \
./libraries/IRremote/ir_JVC.cpp.d \
./libraries/IRremote/ir_LG.cpp.d \
./libraries/IRremote/ir_Mitsubishi.cpp.d \
./libraries/IRremote/ir_NEC.cpp.d \
./libraries/IRremote/ir_Panasonic.cpp.d \
./libraries/IRremote/ir_RC5_RC6.cpp.d \
./libraries/IRremote/ir_Samsung.cpp.d \
./libraries/IRremote/ir_Sanyo.cpp.d \
./libraries/IRremote/ir_Sharp.cpp.d \
./libraries/IRremote/ir_Sony.cpp.d \
./libraries/IRremote/ir_Template.cpp.d \
./libraries/IRremote/ir_Whynter.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/IRremote/IRremote.cpp.o: /Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/IRremote.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/tools/arduino/avr-gcc/4.9.2-atmel3.5.3-arduino2/bin/avr-g++" -c -g -Os -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10609 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/cores/arduino" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/variants/standard" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<" -o "$@"  -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/IRremote/irPronto.cpp.o: /Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/irPronto.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/tools/arduino/avr-gcc/4.9.2-atmel3.5.3-arduino2/bin/avr-g++" -c -g -Os -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10609 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/cores/arduino" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/variants/standard" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<" -o "$@"  -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/IRremote/irRecv.cpp.o: /Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/irRecv.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/tools/arduino/avr-gcc/4.9.2-atmel3.5.3-arduino2/bin/avr-g++" -c -g -Os -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10609 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/cores/arduino" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/variants/standard" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<" -o "$@"  -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/IRremote/irSend.cpp.o: /Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/irSend.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/tools/arduino/avr-gcc/4.9.2-atmel3.5.3-arduino2/bin/avr-g++" -c -g -Os -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10609 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/cores/arduino" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/variants/standard" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<" -o "$@"  -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/IRremote/ir_Aiwa.cpp.o: /Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_Aiwa.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/tools/arduino/avr-gcc/4.9.2-atmel3.5.3-arduino2/bin/avr-g++" -c -g -Os -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10609 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/cores/arduino" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/variants/standard" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<" -o "$@"  -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/IRremote/ir_Denon.cpp.o: /Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_Denon.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/tools/arduino/avr-gcc/4.9.2-atmel3.5.3-arduino2/bin/avr-g++" -c -g -Os -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10609 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/cores/arduino" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/variants/standard" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<" -o "$@"  -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/IRremote/ir_Dish.cpp.o: /Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_Dish.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/tools/arduino/avr-gcc/4.9.2-atmel3.5.3-arduino2/bin/avr-g++" -c -g -Os -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10609 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/cores/arduino" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/variants/standard" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<" -o "$@"  -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/IRremote/ir_JVC.cpp.o: /Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_JVC.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/tools/arduino/avr-gcc/4.9.2-atmel3.5.3-arduino2/bin/avr-g++" -c -g -Os -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10609 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/cores/arduino" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/variants/standard" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<" -o "$@"  -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/IRremote/ir_LG.cpp.o: /Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_LG.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/tools/arduino/avr-gcc/4.9.2-atmel3.5.3-arduino2/bin/avr-g++" -c -g -Os -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10609 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/cores/arduino" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/variants/standard" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<" -o "$@"  -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/IRremote/ir_Mitsubishi.cpp.o: /Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_Mitsubishi.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/tools/arduino/avr-gcc/4.9.2-atmel3.5.3-arduino2/bin/avr-g++" -c -g -Os -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10609 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/cores/arduino" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/variants/standard" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<" -o "$@"  -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/IRremote/ir_NEC.cpp.o: /Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_NEC.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/tools/arduino/avr-gcc/4.9.2-atmel3.5.3-arduino2/bin/avr-g++" -c -g -Os -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10609 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/cores/arduino" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/variants/standard" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<" -o "$@"  -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/IRremote/ir_Panasonic.cpp.o: /Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_Panasonic.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/tools/arduino/avr-gcc/4.9.2-atmel3.5.3-arduino2/bin/avr-g++" -c -g -Os -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10609 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/cores/arduino" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/variants/standard" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<" -o "$@"  -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/IRremote/ir_RC5_RC6.cpp.o: /Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_RC5_RC6.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/tools/arduino/avr-gcc/4.9.2-atmel3.5.3-arduino2/bin/avr-g++" -c -g -Os -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10609 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/cores/arduino" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/variants/standard" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<" -o "$@"  -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/IRremote/ir_Samsung.cpp.o: /Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_Samsung.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/tools/arduino/avr-gcc/4.9.2-atmel3.5.3-arduino2/bin/avr-g++" -c -g -Os -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10609 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/cores/arduino" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/variants/standard" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<" -o "$@"  -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/IRremote/ir_Sanyo.cpp.o: /Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_Sanyo.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/tools/arduino/avr-gcc/4.9.2-atmel3.5.3-arduino2/bin/avr-g++" -c -g -Os -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10609 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/cores/arduino" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/variants/standard" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<" -o "$@"  -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/IRremote/ir_Sharp.cpp.o: /Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_Sharp.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/tools/arduino/avr-gcc/4.9.2-atmel3.5.3-arduino2/bin/avr-g++" -c -g -Os -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10609 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/cores/arduino" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/variants/standard" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<" -o "$@"  -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/IRremote/ir_Sony.cpp.o: /Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_Sony.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/tools/arduino/avr-gcc/4.9.2-atmel3.5.3-arduino2/bin/avr-g++" -c -g -Os -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10609 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/cores/arduino" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/variants/standard" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<" -o "$@"  -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/IRremote/ir_Template.cpp.o: /Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_Template.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/tools/arduino/avr-gcc/4.9.2-atmel3.5.3-arduino2/bin/avr-g++" -c -g -Os -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10609 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/cores/arduino" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/variants/standard" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<" -o "$@"  -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/IRremote/ir_Whynter.cpp.o: /Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1/ir_Whynter.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/tools/arduino/avr-gcc/4.9.2-atmel3.5.3-arduino2/bin/avr-g++" -c -g -Os -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10609 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/cores/arduino" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/packages/arduino/hardware/avr/1.6.13/variants/standard" -I"/Applications/sloeber.app/Contents/Eclipse/arduinoPlugin/libraries/IRremote/2.0.1" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<" -o "$@"  -Wall
	@echo 'Finished building: $<'
	@echo ' '


