# FlickySMS
Flicky built for the SC-3000 and SG-1000 in 1984

SUMMARY
02C4		to hack what start level you'd like to practice
02CA		to hack how many lives you'd like to have

30/09/2020
http://www.retrogamingpower.co.uk/flicky/flicky.htm

ROM
http://www.get-your-rom.com/download/sg1k/flicky-rom/japan

Piopio and Nyannyan
https://strategywiki.org/wiki/Flicky


28/09/2020
Today I (finally?) worked out how to reverse engineer Flicky Z80 asm source code
and hack the start level for practice and number of lives on start

e.g.
original 
_DATA_2C3_:	
	.db $01 $01 $00 $00 $0C $80 $00 $02
	
start level 9 	$09
start lives 7	$06		[out by one]
_DATA_2C3_:	
	.db $01 $09 $00 $00 $0C $80 $00 $06

Address:
02C3

SUMMARY
02C4		to hack what start level you'd like to practice
02CA		to hack how many lives you'd like to have

Q.
How do I work this out?

A.
Open Flicky.sg using Emulicious emulator
Debugging window | Run menu | Suspend on open
Debug | step thru code
find "Port_IOPort1" reference
e.g.
when press "A" to start game
_LABEL_27D9_
set breakpoint all spots  here

Run code on and press "A" on title screen to start
code should break on "Port_IOPort1" input detection
step thru calls | you will see level screen being "built"
Drawing the level
_LABEL_1CFA_:	

"Guess" level stored in RAM	at $C0E8
i.e.
_LABEL_1CE4_:	
ld a, (_RAM_C0E8_)	; _RAM_C0E8_ = $C0E8
just before this code:
_LABEL_1CE4_:	
	ld a, (_RAM_C0E8_)	; _RAM_C0E8_ = $C0E8

Launch Memory map
right click _RAM_C0E8_
Toggle watch point | F8 resume
Doing this will break into debugging code each time data in _RAM_C0E8_ changes
e.g.
setting the level variable

Confirm when code breaks at 
_LABEL_1CE4_:	
	ld a, (_RAM_C0E8_)	; _RAM_C0E8_ = $C0E8
	
hover over _RAM_C0E8_ and will be $01
this $01 is second $01 above in _DATA_2C3_:	as this byte block starts at _RAM_C0E7_	
	
	

27/09/2020
Folder "02"
Emulicious.asm	is the complete build that assembles OK
Flicky.asm		is the work in progress

Source
Emulicious.asm
E:\Steven\INSTALLATIONSEGA\ROM_Sega\8-bit\Disassemble\Flicky03_SMS


Binary File Write
D:\Steven\_NET\VS2017\BinaryFileWrite


27/09/2020
call _LABEL_1C_
populates the first palette with 14x colors
_DATA_2A_:	
	.db $02 $80 $82 $81 $0E $82 $FF $83 $03 $84 $76 $85 $03 $86

_LABEL_254D_:
large method that loads a bunch of tiles into VRAM

_LABEL_23FE_
turn background crimson

_LABEL_1D79_:
draw the top and bottom parts


_LABEL_1CE4_:	
big method


_LABEL_1D59_:
Push Start Button
SEGA 1984

_LABEL_BC_:	
Turn screen on


_LABEL_4BA_:
flast Push start button


_LABEL_207B_:	
big method


call _LABEL_25F2_
load the demo level
		
		
_LABEL_209_:
big function	does this transition to start game?


_LABEL_4BA_:	
_LABEL_149_:	
code is here during the flashing title screen


Finally got title screen flashing
_LABEL_78A_:    
_LABEL_8B4_:    
_LABEL_1C93_:    
_LABEL_6F22_:    
_LABEL_70F4_:    
_LABEL_7214_:    


Another bunch of calls
_LABEL_427_:


Game start
trap when port1 fire pressed
e.g.
_LABEL_27D9_

Game start setup
_LABEL_207B_:	


is this the game loop
_LABEL_2D7_:	


Drawing the level
_LABEL_1CFA_:	



Trying to guess level stored in RAM		
_LABEL_1CE4_:	
ld a, (_RAM_C0E8_)	; _RAM_C0E8_ = $C0E8


LEVEL found
_LABEL_1CE4_:

but the code to set the nest must be in a different spot

_RAM_C0E8_
stores the level and everything is indexed
; Pointer Table from 480C to 485B (40 entries, indexed by _RAM_C0E8_)	


Are all the important variables stored in RAM from C0E7 onwards??
_LABEL_2AE_:	

ld hl, _DATA_2C3_

_DATA_2C3_:	
	.db $01 $01 $00 $00 $0C $80 $00 $02
	
; Data from 2CB to 2D6 (12 bytes)	
_DATA_2CB_:	
	.dsb 12, $00
	


so to start level 9 and have 7 lives
_DATA_2C3_:	
	.db $01 $09 $00 $00 $0C $80 $00 $06