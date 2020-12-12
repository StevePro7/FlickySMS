cls

::wla-z80.exe -o main.asm main.o
wla-z80 main.asm

::echo [objects] > linkfile
::echo main.o >> linkfile

::wlalink -drvs linkfile output.sms
wlalink linkfile output.sms

::java -jar C:\SEGA\Emulicious\Emulicious.jar output.sms
output.sms