@echo off

cls

if exist test.o del test.o


echo Compile
wla-z80 -o test.o main.asm 

echo [objects] > linkfile
echo test.o >> linkfile

echo Link
wlalink linkfile output.sms

if exist output.sms.sym del output.sms.sym
if exist test.o del test.o

echo Run
::java -jar C:\SEGA\Emulicious\Emulicious.jar output.sms
output.sms

@echo on