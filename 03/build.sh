@echo off

clear

if [ -a test.o ]
then
    rm test.o
fi

echo Compile
wla-z80 -o test.o main.asm 

echo [objects] > linkfile
echo test.o >> linkfile

echo Link
wlalink linkfile output.sms

echo Run
# https://linuxhint.com/what_is_dev_null
java -jar ~/SEGA/Emulicious/Emulicious.jar output.sms 2> /dev/null
#output.sms


if [ -a test.o ]
then
    rm test.o
fi