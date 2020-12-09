clear

wla-z80 main.asm

#echo [objects] > linkfile
#echo main.o >> linkfile

wlalink linkfile output.sms

java -jar ~/SEGA/Emulicious/Emulicious.jar output.sms
#output.sms