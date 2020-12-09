cls

wla-z80.exe -o main.asm main.o

::echo [objects] > linkfile
::echo main.o >> linkfile

wlalink -drvs linkfile output.sms

::java -jar C:\SEGA\Emulicious\Emulicious.jar output.sms
output.sms