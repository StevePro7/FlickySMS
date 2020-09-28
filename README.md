# FlickySMS
Flicky built for the SC-3000 and SG-1000 in 1984

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