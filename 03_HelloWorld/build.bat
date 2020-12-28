@echo off
cls

::wla-z80.exe -o main.asm main.o
echo Compile
wla-z80 main.asm

::echo [objects] > linkfile
::echo main.o >> linkfile

echo Link
::wlalink -drvs linkfile output.sms
wlalink linkfile output.sms

echo Run
::java -jar C:\SEGA\Emulicious\Emulicious.jar output.sms
output.sms