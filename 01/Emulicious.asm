; This disassembly was created using Emulicious (http://www.emulicious.net)	
.MEMORYMAP	
SLOTSIZE $4000	
SLOT 0 $0000	
SLOT 1 $4000	
SLOT 2 $8000	
DEFAULTSLOT 2	
.ENDME	
.ROMBANKMAP	
BANKSTOTAL 2	
BANKSIZE $4000	
BANKS 2	
.ENDRO	
	
.enum $C000 export	
_RAM_C000_ db	
.ende	
	
.enum $C0C9 export	
_RAM_C0C9_ db	
_RAM_C0CA_ db	
_RAM_C0CB_ db	
_RAM_C0CC_ db	
_RAM_C0CD_ db	
_RAM_C0CE_ db	
_RAM_C0CF_ dsb $8	
_RAM_C0D7_ db	
_RAM_C0D8_ db	
.ende	
	
.enum $C0DA export	
_RAM_C0DA_ db	
.ende	
	
.enum $C0DC export	
_RAM_C0DC_ db	
.ende	
	
.enum $C0DE export	
_RAM_C0DE_ db	
_RAM_C0DF_ db	
_RAM_C0E0_ db	
_RAM_C0E1_ db	
.ende	
	
.enum $C0E3 export	
_RAM_C0E3_ dw	
_RAM_C0E5_ dw	
_RAM_C0E7_ db	
_RAM_C0E8_ db	
_RAM_C0E9_ db	
_RAM_C0EA_ db	
_RAM_C0EB_ db	
_RAM_C0EC_ db	
_RAM_C0ED_ db	
_RAM_C0EE_ db	
_RAM_C0EF_ db	
_RAM_C0F0_ db	
_RAM_C0F1_ dw	
_RAM_C0F3_ dsb $4	
_RAM_C0F7_ dw	
_RAM_C0F9_ db	
_RAM_C0FA_ db	
_RAM_C0FB_ dsb $3	
_RAM_C0FE_ db	
_RAM_C0FF_ db	
_RAM_C100_ db	
_RAM_C101_ db	
_RAM_C102_ db	
_RAM_C103_ db	
.ende	
	
.enum $C107 export	
_RAM_C107_ db	
_RAM_C108_ db	
_RAM_C109_ db	
_RAM_C10A_ db	
_RAM_C10B_ db	
_RAM_C10C_ db	
_RAM_C10D_ db	
_RAM_C10E_ db	
_RAM_C10F_ db	
_RAM_C110_ db	
_RAM_C111_ db	
_RAM_C112_ db	
_RAM_C113_ db	
_RAM_C114_ db	
_RAM_C115_ db	
_RAM_C116_ db	
_RAM_C117_ db	
_RAM_C118_ db	
_RAM_C119_ db	
_RAM_C11A_ db	
.ende	
	
.enum $C11C export	
_RAM_C11C_ db	
.ende	
	
.enum $C125 export	
_RAM_C125_ db	
.ende	
	
.enum $C13D export	
_RAM_C13D_ db	
_RAM_C13E_ db	
_RAM_C13F_ db	
_RAM_C140_ db	
.ende	
	
.enum $C147 export	
_RAM_C147_ db	
_RAM_C148_ dsb $7	
_RAM_C14F_ db	
_RAM_C150_ db	
_RAM_C151_ db	
_RAM_C152_ db	
_RAM_C153_ db	
_RAM_C154_ db	
_RAM_C155_ db	
_RAM_C156_ db	
_RAM_C157_ db	
_RAM_C158_ dw	
_RAM_C15A_ db	
.ende	
	
.enum $C15C export	
_RAM_C15C_ dsb $6	
_RAM_C162_ db	
.ende	
	
.enum $C164 export	
_RAM_C164_ db	
.ende	
	
.enum $C166 export	
_RAM_C166_ dsb $8	
.ende	
	
.enum $C176 export	
_RAM_C176_ db	
.ende	
	
.enum $C182 export	
_RAM_C182_ dsb $18	
_RAM_C19A_ db	
_RAM_C19B_ db	
_RAM_C19C_ db	
.ende	
	
.enum $C1A1 export	
_RAM_C1A1_ db	
_RAM_C1A2_ db	
.ende	
	
.enum $C1A5 export	
_RAM_C1A5_ dsb $4	
_RAM_C1A9_ db	
_RAM_C1AA_ db	
.ende	
	
.enum $C1B1 export	
_RAM_C1B1_ db	
.ende	
	
.enum $C1B9 export	
_RAM_C1B9_ db	
.ende	
	
.enum $C1D9 export	
_RAM_C1D9_ db	
.ende	
	
.enum $C1F1 export	
_RAM_C1F1_ dsb $10	
.ende	
	
.enum $C320 export	
_RAM_C320_ db	
_RAM_C321_ db	
_RAM_C322_ db	
.ende	
	
.enum $C324 export	
_RAM_C324_ dsb $a8	
.ende	
	
; Ports	
.define Port_PSG $7F	
.define Port_VDPData $BE	
.define Port_VDPAddress $BF	
.define _PORT_DE_ $DE	
.define _PORT_DF_ $DF	
	
; Input Ports	
.define Port_VDPStatus $BF	
.define Port_IOPort1 $DC	
	
.BANK 0 SLOT 0	
.ORG $0000	
	
_LABEL_0_:	
		di
		ld sp, $C0C8
		im 1
		call _LABEL_7395_
		ld hl, _RAM_C000_
		ld bc, $0400
-:	
		ld (hl), $00
		inc hl
		dec bc
		ld a, c
		or b
		jr nz, -
		call _LABEL_2884_
		jr _LABEL_70_
	
_LABEL_1C_:	
		in a, (Port_VDPStatus)
		ld b, $0E
		ld hl, _DATA_2A_
-:	
		ld a, (hl)
		out (Port_VDPAddress), a
		inc hl
		djnz -
		ret
	
; Data from 2A to 37 (14 bytes)	
_DATA_2A_:	
	.db $02 $80 $82 $81 $0E $82 $FF $83 $03 $84 $76 $85 $03 $86
	
_LABEL_38_:	
		jp _LABEL_209_
	
	; Data from 3B to 65 (43 bytes)
	.dsb 43, $00
	
_LABEL_66_:	
		jp _LABEL_1E9_
	
	; Data from 69 to 6F (7 bytes)
	.db $00 $00 $00 $00 $00 $00 $00
	
_LABEL_70_:	
		ld b, $0A
		call _LABEL_1B3_
		call _LABEL_1C_
		call _LABEL_1BF_
_LABEL_7B_:	
		di
		call _LABEL_C5_
		call _LABEL_1BF_
		call _LABEL_254D_
		call _LABEL_23FE_
		call _LABEL_BC_
		ld a, $01
		ld (_RAM_C0E1_), a
		ld b, $A0
-:	
		ei
		push bc
		call _LABEL_4BA_
		pop bc
		ld a, (_RAM_C0E1_)
		rlca
		jp c, _LABEL_2AE_
		djnz -
		call _LABEL_C5_
		ld bc, $0087
		call _LABEL_CE_
		ld b, $02
		call _LABEL_1B3_
		call _LABEL_45E_
		ld hl, $C0E1
	; Data from B5 to BB (7 bytes)
	.db $7E $07 $DA $AE $02 $18 $BF
	
_LABEL_BC_:	
		ld a, $E2
		out (Port_VDPAddress), a
		ld a, $81
		out (Port_VDPAddress), a
		ret
	
_LABEL_C5_:	
		ld a, $82
		out (Port_VDPAddress), a
		ld a, $81
		out (Port_VDPAddress), a
		ret
	
_LABEL_CE_:	
		ld a, b
		out (Port_VDPAddress), a
		ld a, c
		out (Port_VDPAddress), a
		ret
	
_LABEL_D5_:	
		call +
		push af
		pop af
		in a, (Port_VDPData)
		ret
	
_LABEL_DD_:	
		push af
		call _LABEL_F6_
		pop af
		out (Port_VDPData), a
		ret
	
_LABEL_E5_:	
		push bc
		push af
		call _LABEL_F6_
-:	
		pop af
		out (Port_VDPData), a
		push af
		dec bc
		ld a, b
		or c
		jr nz, -
		pop af
		pop bc
		ret
	
_LABEL_F6_:	
		ld a, l
		out (Port_VDPAddress), a
		ld a, h
		or $40
		out (Port_VDPAddress), a
		ret
	
+:	
		ld a, l
		out (Port_VDPAddress), a
		ld a, h
		out (Port_VDPAddress), a
		ret
	
_LABEL_106_:	
		di
		call _LABEL_F6_
		push de
		push bc
-:	
		ld a, (de)
		out (Port_VDPData), a
		inc de
		dec bc
		ld a, c
		or b
		jr nz, -
		pop bc
		pop de
		ret
	
_LABEL_118_:	
		di
		push hl
		call _LABEL_F6_
		push de
		push bc
		ld hl, _RAM_C0EB_
-:	
		ld a, (de)
		and $0F
		jr z, +
		ld a, (de)
		jr ++
	
+:	
		ld a, (de)
		or (hl)
++:	
		out (Port_VDPData), a
		inc de
		dec bc
		ld a, c
		or b
		jr nz, -
		pop bc
		pop de
		pop hl
		ret
	
_LABEL_138_:	
		di
		call _LABEL_F6_
		push de
		push bc
-:	
		ld a, (de)
		out (Port_VDPData), a
		dec bc
		ld a, c
		or b
		jr nz, -
		pop bc
		pop de
		ret
	
_LABEL_149_:	
		di
		push hl
		push de
		push bc
		ld a, c
		ld (_RAM_C10B_), a
-:	
		ld a, (de)
		call _LABEL_DD_
		push de
		ld de, $0008
		add hl, de
		pop de
		dec bc
		ld a, c
		or b
		jr nz, -
		pop bc
		pop de
		pop hl
		ei
		ret
	
_LABEL_165_:	
		di
		ld hl, $3B00
		ld de, _RAM_C1A1_
		ld bc, $0080
		call _LABEL_106_
		ret
	
_LABEL_173_:	
		ld hl, $3B00
		call _LABEL_F6_
		ld hl, _RAM_C1A1_
		ld a, (_RAM_C10C_)
		inc a
		cp $05
		jr c, +
		xor a
+:	
		ld (_RAM_C10C_), a
		ld c, a
		rlca
		rlca
		rlca
		rlca
		ld e, a
		ld d, $00
		add hl, de
		ld d, c
		ld a, $05
		sub c
		rlca
		rlca
		rlca
		rlca
		or a
		jr z, +
		ld b, a
		ld c, Port_VDPData
		otir
+:	
		ld a, e
		or a
		jr z, +
		ld b, a
		ld hl, _RAM_C1A1_
		otir
+:	
		ld hl, _RAM_C1F1_
		ld b, $10
		otir
		ret
	
_LABEL_1B3_:	
		ld de, $FFFF
--:	
		ld hl, $39DE
-:	
		add hl, de
		jr c, -
		djnz --
		ret
	
_LABEL_1BF_:	
		ld hl, $3800
		ld bc, $0300
		ld a, $20
		call _LABEL_E5_
		ld hl, _RAM_C0EC_
		bit 5, (hl)
		ret nz
		ld de, _RAM_C1A1_
		ld b, $20
-:	
		push bc
		ld hl, _DATA_1E5_
		ld bc, $0004
		ldir
		pop bc
		djnz -
		call _LABEL_165_
		ret
	
; Data from 1E5 to 1E8 (4 bytes)	
_DATA_1E5_:	
	.db $F0 $00 $00 $00
	
_LABEL_1E9_:	
		push af
		ld a, (_RAM_C0CA_)
		cp $10
		jr c, +
		xor a
		ld (_RAM_C0CA_), a
		ld a, (_RAM_C0C9_)
		and a
		jr z, ++
		xor a
		ld (_RAM_C0C9_), a
+:	
		pop af
		retn
	
++:	
		cpl
		ld (_RAM_C0C9_), a
		pop af
		retn
	
_LABEL_209_:	
		di
		push ix
		push iy
		push af
		push bc
		push de
		push hl
		ex af, af'
		push af
		exx
		push bc
		push de
		push hl
		in a, (Port_VDPStatus)
		ld a, (_RAM_C0CA_)
		inc a
		cp $F0
		jr nc, +
		ld a, $F0
+:	
		ld (_RAM_C0CA_), a
		ld a, (_RAM_C0C9_)
		or a
		jr z, +
		call _LABEL_290_
		jp _LABEL_27F_
	
+:	
		call _LABEL_27D9_
		ld a, (_RAM_C0E1_)
		or a
		call nz, _LABEL_495_
		call _LABEL_2012_
		call _LABEL_1E1F_
		ld a, (_RAM_C0EC_)
		rlca
		jr nc, +
		rlca
		jr c, +
		ld hl, _RAM_C107_
		inc (hl)
		ld hl, _RAM_C151_
		inc (hl)
		call _LABEL_6A6_
		call _LABEL_78A_
		ld a, (_RAM_C102_)
		or a
		jp nz, +
		call _LABEL_173_
		call _LABEL_76E_
		ld hl, _RAM_C10A_
		inc (hl)
+:	
		ld hl, _RAM_C108_
		inc (hl)
		inc hl
		inc (hl)
		ld a, (_RAM_C0E1_)
		or a
		jr nz, +
		call _LABEL_6F22_
+:	
		ld a, $01
		ld (_RAM_C102_), a
_LABEL_27F_:	
		pop hl
		pop de
		pop bc
		exx
		pop af
		ex af, af'
		pop hl
		pop de
		pop bc
		pop af
		pop iy
		pop ix
		ei
		reti
	
_LABEL_290_:	
		ld a, $9F
		out (Port_PSG), a
		ld a, $BF
		out (Port_PSG), a
		ld a, $DF
		out (Port_PSG), a
		ld a, $FF
		out (Port_PSG), a
		ret
	
_LABEL_2A1_:	
		ei
		push hl
		ld hl, _RAM_C102_
		ld (hl), $00
-:	
		ld a, (hl)
		or a
		jr z, -
		pop hl
		ret
	
_LABEL_2AE_:	
		xor a
		ld (_RAM_C0E1_), a
		ld hl, _DATA_2C3_
		ld de, _RAM_C0E7_
		ld bc, $0014
		ldir
		call _LABEL_207B_
		jp _LABEL_2D7_
	
; Data from 2C3 to 2CA (8 bytes)	
_DATA_2C3_:	
	.db $01 $01 $00 $00 $0C $80 $00 $02
	
; Data from 2CB to 2D6 (12 bytes)	
_DATA_2CB_:	
	.dsb 12, $00
	
_LABEL_2D7_:	
		ei
		ld a, (_RAM_C0C9_)
		or a
		call nz, _LABEL_417_
		ld a, (_RAM_C0E1_)
		rlca
		ret c
		ld hl, _RAM_C0EC_
		ld a, (hl)
		rlca
		jp nc, +
		rlca
		jp c, ++
		rlca
		jp c, _LABEL_387_
		rlca
		jp c, _LABEL_3D0_
		call _LABEL_427_
		jr _LABEL_2D7_
	
+:	
		ld a, $84
		ld (_RAM_C320_), a
		ld b, $0A
		call _LABEL_1B3_
		call _LABEL_23F0_
		ld b, $28
		call _LABEL_1B3_
		call _LABEL_3FD_
		call _LABEL_3E4_
		call _LABEL_C5_
		jp _LABEL_7B_
	
++:	
		ld a, $83
		ld (_RAM_C320_), a
		call _LABEL_2A1_
		bit 4, (hl)
		jr z, +
		ld hl, $C0EC
	; Data from 32A to 333 (10 bytes)
	.db $CB $A6 $CD $71 $23 $CD $53 $1F $18 $09
	
+:	
		call _LABEL_2043_
		call _LABEL_233F_
		call _LABEL_1F10_
		ld b, $F0
-:	
		push bc
		call _LABEL_18BF_
		ei
		halt
		pop bc
		djnz -
		call _LABEL_3FD_
		ld a, (_RAM_C0E1_)
		or a
		ret nz
		ld hl, _RAM_C0E7_
		inc (hl)
		ld a, $64
		cp (hl)
		jr z, +
		inc hl
		inc (hl)
		ld a, (hl)
		cp $29
		jr nz, ++
		ld (hl), $01
		inc hl
		inc (hl)
		jr ++
	
+:	
		ld hl, _DATA_2C3_
		ld de, _RAM_C0E7_
		ld bc, $0005
		ldir
++:	
		call _LABEL_207B_
		ld hl, _DATA_2CB_
		ld de, _RAM_C0EF_
		ld bc, $0004
		ldir
		ld hl, _RAM_C0EC_
		res 6, (hl)
		jp _LABEL_2D7_
	
_LABEL_387_:	
		ld a, $85
		ld (_RAM_C320_), a
		ld b, $40
-:	
		push bc
		ei
		call _LABEL_2A1_
		call _LABEL_B78_
		ei
		call _LABEL_2A1_
		call _LABEL_10DD_
		call _LABEL_156D_
		pop bc
		djnz -
		ld a, (_RAM_C0E1_)
		or a
		ret nz
		ld hl, _RAM_C10E_
		ld de, _RAM_C0E3_
		ld bc, $0002
		ldir
		ld a, (_RAM_C0EE_)
		or a
		jr z, +
		dec a
		ld (_RAM_C0EE_), a
		call _LABEL_207B_
		ld hl, _RAM_C0EC_
		res 5, (hl)
		jp _LABEL_2D7_
	
+:	
		ld hl, _RAM_C0EC_
		ld (hl), $00
		jp _LABEL_2D7_
	
_LABEL_3D0_:	
		call _LABEL_2A1_
		ld hl, _RAM_C0EC_
		set 0, (hl)
		call _LABEL_17FA_
		call _LABEL_18F1_
		call _LABEL_17A9_
		jp _LABEL_2D7_
	
_LABEL_3E4_:	
		ld hl, _RAM_C0FF_
		ld bc, $0122
		ld a, (_RAM_C0EC_)
		bit 5, a
		jr z, _LABEL_3F4_
		ld bc, $0026
_LABEL_3F4_:	
		ld (hl), $00
		inc hl
		dec bc
		ld a, b
		or c
		jr nz, _LABEL_3F4_
		ret
	
_LABEL_3FD_:	
		ld hl, _RAM_C0EC_
		bit 5, (hl)
		ret nz
		ld hl, _RAM_C1A1_
		ld b, $80
-:	
		ld a, b
		and $03
		jr nz, +
		ld (hl), $E0
		jr ++
	
+:	
		ld (hl), $00
++:	
		inc hl
		djnz -
		ret
	
_LABEL_417_:	
		push bc
		push de
		push hl
		call _LABEL_7395_
		pop hl
		pop de
		pop bc
		ld a, (_RAM_C0C9_)
		or a
		ret z
		jr _LABEL_417_
	
_LABEL_427_:	
		ei
		xor a
		ld (_RAM_C102_), a
		ld a, (_RAM_C0C9_)
		or a
		call nz, _LABEL_417_
		ld a, (_RAM_C155_)
		or a
		jr nz, +
		ld a, (_RAM_C10D_)
		bit 7, a
		jr z, ++
		call _LABEL_5E2_
-:	
		call _LABEL_A1B_
		call _LABEL_C58_
		call _LABEL_13C4_
		call _LABEL_C4E_
		call _LABEL_BD9_
+:	
		call _LABEL_141A_
		ret
	
++:	
		call _LABEL_2A1_
		call _LABEL_2A1_
		jr -
	
_LABEL_45E_:	
		call +
		call _LABEL_2D7_
		di
	; Data from 465 to 473 (15 bytes)
	.db $21 $EC $C0 $36 $00 $CD $95 $73 $CD $08 $04 $CD $73 $01 $C9
	
+:	
		ld a, (_RAM_C0CC_)
		inc a
		and $03
		ld (_RAM_C0CC_), a
		add a, a
		add a, a
		ld e, a
		add a, a
		add a, e
		ld e, a
		ld d, $00
		ld hl, _DATA_4F2_
		add hl, de
		ld de, _RAM_C0E7_
		ld bc, $000C
		ldir
		call _LABEL_207B_
		ret
	
_LABEL_495_:	
		ld a, (_RAM_C101_)
		and $C0
		jr nz, ++
		ld hl, _RAM_C0CD_
		ld a, (_RAM_C107_)
		and $07
		jr nz, +
		inc (hl)
+:	
		ld a, (hl)
		ld e, a
		ld d, $00
		ld hl, _DATA_532_
		add hl, de
		ld a, (hl)
		ld (_RAM_C101_), a
		ret
	
++:	
		ld a, $FF
		ld (_RAM_C0E1_), a
		ret
	
_LABEL_4BA_:	
		ld hl, _RAM_C0CE_
		inc (hl)
		ld a, $08
		cp (hl)
		jr nz, +
		ld (hl), $00
		push hl
		call _LABEL_2433_
		pop hl
+:	
		ld a, (hl)
		ld e, a
		ld d, $00
		ld hl, _DATA_522_
		add hl, de
		ex de, hl
		ld hl, $2300
		ld b, $08
-:	
		push bc
		push de
		push hl
		ld bc, $003A
		call _LABEL_149_
		push de
		ld de, $0800
		add hl, de
		pop de
		call _LABEL_149_
		pop hl
		inc hl
		pop de
		inc de
		pop bc
		djnz -
		ret
	
; Data from 4F2 to 521 (48 bytes)	
_DATA_4F2_:	
	.db $04 $04 $00 $00 $00 $80 $00 $00 $00 $00 $00 $00 $04 $04 $01 $00
	.db $00 $80 $00 $00 $00 $00 $00 $00 $04 $04 $00 $04 $00 $80 $00 $00
	.db $00 $00 $00 $00 $04 $04 $02 $00 $00 $80 $00 $00 $00 $00 $00 $00
	
; Data from 522 to 531 (16 bytes)	
_DATA_522_:	
	.db $F0 $F0 $70 $70 $50 $50 $40 $40 $F0 $F0 $70 $70 $50 $50 $40 $40
	
; Data from 532 to 5E1 (176 bytes)	
_DATA_532_:	
	.db $00 $04 $04 $04 $04 $54 $04 $04 $04 $04 $04 $04 $54 $04 $04 $04
	.db $04 $04 $54 $54 $00 $08 $08 $00 $00 $00 $08 $58 $08 $08 $08 $08
	.db $08 $08 $58 $58 $08 $00 $00 $00 $00 $00 $00 $58 $00 $00 $00 $00
	.db $08 $08 $08 $58 $08 $08 $08 $08 $00 $00 $00 $00 $00 $50 $54 $54
	.db $54 $04 $04 $04 $04 $04 $04 $01 $59 $59 $59 $59 $09
	.dsb 11, $00
	.db $08 $08 $08 $08 $08 $08 $58 $08 $08 $08 $08 $08 $08 $08 $58 $08
	.db $08 $08 $08 $08 $58 $58 $00 $00 $04 $04 $04 $00 $00 $54 $54 $54
	.db $04 $04 $54 $54 $04 $00 $00 $00 $00 $00 $00 $54 $00 $00 $00 $00
	.db $04 $04 $04 $04 $54 $04 $04 $04 $04 $00 $00 $00 $00 $50 $58 $58
	.db $58 $08 $08 $08 $08 $08 $08 $01 $54 $54 $54 $54 $04
	.dsb 11, $00
	
_LABEL_5E2_:	
		ld a, (_RAM_C10D_)
		push af
		ld de, _RAM_C113_
		ld a, (_RAM_C10D_)
		ld (de), a
		inc de
		ld a, (_RAM_C111_)
		ld (de), a
		pop af
		ld hl, _RAM_C10E_
		rrca
		jr c, +
		rrca
		ret nc
		ld a, (_RAM_C111_)
		add a, (hl)
		ld b, a
		and $07
		ld (hl), a
		ld a, b
		cp $08
		jr c, ++
		inc hl
		ld a, (hl)
		dec a
		and $1F
		ld (hl), a
		ld hl, _RAM_C10D_
		set 6, (hl)
		jr ++
	
+:	
		ld a, (_RAM_C111_)
		neg
		add a, (hl)
		ld b, a
		and $07
		ld (hl), a
		ld a, b
		and $F8
		jr z, ++
		inc hl
		ld a, (hl)
		inc a
		and $1F
		ld (hl), a
		ld hl, _RAM_C10D_
		set 6, (hl)
++:	
		ld a, (_RAM_C10F_)
		ld hl, $3840
		ld e, a
		ld d, $00
		add hl, de
		ld de, $480C
		ld b, $14
		call _LABEL_1CE4_
		ei
		ld hl, _RAM_C10D_
		res 6, (hl)
		call +
		call _LABEL_78A_
		ei
		ret
	
+:	
		ld a, (_RAM_C113_)
		ld b, a
		ld a, (_RAM_C114_)
		bit 0, b
		jr z, +
		neg
+:	
		ld hl, _RAM_C112_
		add a, (hl)
		and $0F
		ld (hl), a
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_686_
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld hl, $0000
		ld bc, $0020
		call _LABEL_106_
		ld hl, $0020
		add hl, de
		ex de, hl
		ld hl, $1000
		ld bc, $0020
		call _LABEL_106_
		ret
	
; Pointer Table from 686 to 6A5 (16 entries, indexed by _RAM_C112_)	
_DATA_686_:	
	.dw _DATA_3DCF_ _DATA_3E0F_ _DATA_3E4F_ _DATA_3E8F_ _DATA_3ECF_ _DATA_3F0F_ _DATA_3F4F_ _DATA_3F8F_
	.dw _DATA_3FCF_ _DATA_400F_ _DATA_404F_ _DATA_408F_ _DATA_40CF_ _DATA_410F_ _DATA_414F_ _DATA_418F_
	
_LABEL_6A6_:	
		ld a, (_RAM_C155_)
		or a
		ret nz
		ld hl, _RAM_C0EC_
		bit 0, (hl)
		ret z
		ld hl, _RAM_C10D_
		bit 3, (hl)
		jr nz, +++
		ld a, (_RAM_C101_)
		and $30
		jr z, ++
		ld a, (_RAM_C119_)
		or a
		jr nz, +++
		set 3, (hl)
		ld a, $86
		push hl
		ld hl, _RAM_C320_
		bit 0, (hl)
		jr nz, +
		ld (hl), a
+:	
		pop hl
		ld (_RAM_C119_), a
		jr +++
	
++:	
		xor a
		ld (_RAM_C119_), a
+++:	
		ld a, (_RAM_C101_)
		bit 3, a
		jr nz, +
		bit 2, a
		jr z, _LABEL_724_
		res 4, (hl)
		bit 1, (hl)
		jr nz, _LABEL_741_
		set 7, (hl)
		set 0, (hl)
		res 5, (hl)
		ld a, $01
		ld (_RAM_C157_), a
		ld a, (_RAM_C110_)
		cp $20
		jr z, _LABEL_74A_
		inc a
		inc a
		ld (_RAM_C110_), a
		jr _LABEL_74A_
	
+:	
		res 4, (hl)
		bit 0, (hl)
		jr nz, _LABEL_741_
		set 7, (hl)
		set 1, (hl)
		res 5, (hl)
		xor a
		ld (_RAM_C157_), a
		ld a, (_RAM_C110_)
		cp $20
		jr z, _LABEL_74A_
		inc a
		inc a
		ld (_RAM_C110_), a
		jr _LABEL_74A_
	
_LABEL_724_:	
		ld hl, _RAM_C10D_
		bit 4, (hl)
		jr nz, _LABEL_74A_
		ld a, (_RAM_C110_)
		or a
		jr nz, +
		push af
		ld a, (hl)
		and $08
		ld (hl), a
		pop af
		jr _LABEL_74A_
	
+:	
		set 5, (hl)
		dec a
		ld (_RAM_C110_), a
		jr _LABEL_74A_
	
_LABEL_741_:	
		ld hl, _RAM_C110_
		dec (hl)
		jr z, _LABEL_724_
		dec (hl)
		jr z, _LABEL_724_
_LABEL_74A_:	
		ld hl, _RAM_C111_
		ld a, (_RAM_C110_)
		ld (hl), $04
		cp $20
		jr nc, +
		ld (hl), $03
		cp $18
		ret nc
		ld (hl), $02
		cp $10
		ret nc
		ld (hl), $01
		cp $08
		ret nc
		ld (hl), $00
		ret
	
+:	
		ld a, $20
		ld (_RAM_C110_), a
		ret
	
_LABEL_76E_:	
		di
		ld a, (_RAM_C155_)
		or a
		ret nz
		ld hl, _RAM_C0EC_
		bit 0, (hl)
		ret z
		bit 4, (hl)
		ret nz
		bit 5, (hl)
		ret nz
		call _LABEL_893_
		call _LABEL_8C4_
		call _LABEL_81E_
		ret
	
_LABEL_78A_:	
		ld hl, _RAM_C10D_
		bit 3, (hl)
		ret z
		ld hl, _RAM_C117_
		bit 7, (hl)
		jr nz, +
		ld a, (_RAM_C115_)
		add a, $02
		push hl
		call _LABEL_8B4_
		call _LABEL_D5_
		push af
		inc hl
		call _LABEL_D5_
		ld b, a
		pop af
		or b
		pop hl
		cp $04
		jr c, _LABEL_7B7_
		cp $62
		jr nc, _LABEL_7B7_
		inc (hl)
		jr ++
	
_LABEL_7B7_:	
		ld hl, _RAM_C117_
		ld (hl), $C0
		ld hl, _RAM_C10D_
		set 3, (hl)
		ret
	
+:	
		ld a, (_RAM_C115_)
		add a, $11
		push hl
		call _LABEL_8B4_
		call _LABEL_D5_
		push af
		inc hl
		call _LABEL_D5_
		ld b, a
		pop af
		or b
		pop hl
		cp $04
		jr c, +
		cp $62
		jr nc, +
		dec (hl)
		ld a, (hl)
		and $7F
		jr nz, ++
		inc (hl)
		jr ++
	
+:	
		ld (hl), $00
		ld hl, _RAM_C10D_
		res 3, (hl)
		ret
	
++:	
		ld de, _DATA_9DB_
		ld a, (hl)
		cp $40
		jr z, _LABEL_7B7_
		and $7F
		ld l, a
		ld h, $00
		add hl, de
		ld b, (hl)
		ld a, (_RAM_C117_)
		bit 7, a
		jr nz, +
		ld a, b
		neg
		ld b, a
+:	
		ld a, b
		ld (_RAM_C116_), a
		ld a, (_RAM_C115_)
		add a, b
		ld (_RAM_C115_), a
		cp $A0
		ret c
		ld a, $9F
		ld (_RAM_C115_), a
		ret
	
_LABEL_81E_:	
		ld a, (_RAM_C107_)
		ld b, a
		xor a
		ld hl, _RAM_C10D_
		bit 4, (hl)
		jr nz, +
		ld de, _DATA_91D_
		bit 0, (hl)
		jr nz, ++
		ld de, _DATA_943_
		bit 1, (hl)
		jr nz, ++
+:	
		ld de, _DATA_8F7_
++:	
		bit 3, (hl)
		jr nz, +
		bit 5, (hl)
		jr nz, ++
+:	
		inc a
		bit 2, b
		jr z, +
		inc a
+:	
		bit 3, (hl)
		jr z, ++
		ld c, a
		ld a, (_RAM_C115_)
		and $07
		xor $07
		add a, a
		add a, c
++:	
		add a, a
		ld l, a
		ld h, $00
		add hl, de
		push hl
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld hl, $0020
		ld bc, $0030
		call _LABEL_106_
		ld hl, $0820
		call _LABEL_106_
		ld hl, $1020
		call _LABEL_106_
		pop hl
		ld de, $0072
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
_LABEL_87D_:	
		ld bc, $0030
		ld hl, $2020
		call _LABEL_118_
		ld hl, $2820
		call _LABEL_118_
		ld hl, $3020
		call _LABEL_118_
		ret
	
_LABEL_893_:	
		ld a, (_RAM_C115_)
		cp $10
		jr nc, +
		ld hl, $382F
		ld de, _DATA_8ED_
		ld bc, $0502
		jr ++
	
+:	
		sub $10
		call _LABEL_8B4_
		ld de, _DATA_8E9_
		ld bc, $0702
++:	
		call _LABEL_1CB8_
		ret
	
_LABEL_8B4_:	
		and $F8
		rrca
		rrca
		rrca
		ld h, a
		ld e, $20
		call _LABEL_1C2D_
		ld de, $380F
		add hl, de
		ret
	
_LABEL_8C4_:	
		ld a, (_RAM_C10D_)
		bit 3, a
		ret nz
-:	
		ld a, (_RAM_C115_)
		add a, $10
		call _LABEL_8B4_
		dec hl
		call _LABEL_D5_
		cp $62
		jr z, +
		inc hl
		inc hl
		inc hl
		call _LABEL_D5_
		cp $62
		ret nz
+:	
		ld hl, _RAM_C115_
		dec (hl)
		jr -
	
; Data from 8E9 to 8EC (4 bytes)	
_DATA_8E9_:	
	.db $60 $60 $60 $60
	
; Data from 8ED to 8F6 (10 bytes)	
_DATA_8ED_:	
	.db $04 $07 $05 $08 $06 $09 $60 $60 $60 $60
	
; Pointer Table from 8F7 to 91C (19 entries, indexed by _RAM_C107_)	
_DATA_8F7_:	
	.dw _DATA_42EF_ _DATA_42EF_ _DATA_42EF_ _DATA_42EF_ _DATA_431F_ _DATA_42F0_ _DATA_4320_ _DATA_42F1_
	.dw _DATA_4321_ _DATA_42F2_ _DATA_4322_ _DATA_42F3_ _DATA_4323_ _DATA_42F4_ _DATA_4324_ _DATA_42F5_
	.dw _DATA_4325_ _DATA_42F6_ _DATA_4326_
	
; Pointer Table from 91D to 942 (19 entries, indexed by _RAM_C115_)	
_DATA_91D_:	
	.dw _DATA_422F_ _DATA_41CF_ _DATA_41FF_ _DATA_434F_ _DATA_437F_ _DATA_4350_ _DATA_4380_ _DATA_4351_
	.dw _DATA_4381_ _DATA_4352_ _DATA_4382_ _DATA_4353_ _DATA_4383_ _DATA_4354_ _DATA_4384_ _DATA_4355_
	.dw _DATA_4385_ _DATA_4356_ _DATA_4386_
	
; Pointer Table from 943 to 9DA (76 entries, indexed by _RAM_C115_)	
_DATA_943_:	
	.dw _DATA_42BF_ _DATA_425F_ _DATA_428F_ _DATA_43AF_ _DATA_43DF_ _DATA_43B0_ _DATA_43E0_ _DATA_43B1_
	.dw _DATA_43E1_ _DATA_43B2_ _DATA_43E2_ _DATA_43B3_ _DATA_43E3_ _DATA_43B4_ _DATA_43E4_ _DATA_43B5_
	.dw _DATA_43E5_ _DATA_43B6_ _DATA_43E6_ _DATA_45C7_ _DATA_45C7_ _DATA_45C7_ _DATA_45C7_ _DATA_45F7_
	.dw _DATA_45C8_ _DATA_45F8_ _DATA_45C9_ _DATA_45F9_ _DATA_45CA_ _DATA_45FA_ _DATA_45CB_ _DATA_45FB_
	.dw _DATA_45CC_ _DATA_45FC_ _DATA_45CD_ _DATA_45FD_ _DATA_45CE_ _DATA_45FE_ _DATA_4507_ _DATA_44A7_
	.dw _DATA_44D7_ _DATA_4627_ _DATA_4657_ _DATA_4628_ _DATA_4658_ _DATA_4629_ _DATA_4659_ _DATA_462A_
	.dw _DATA_465A_ _DATA_462B_ _DATA_465B_ _DATA_462C_ _DATA_465C_ _DATA_462D_ _DATA_465D_ _DATA_462E_
	.dw _DATA_465E_ _DATA_4597_ _DATA_4537_ _DATA_4567_ _DATA_4687_ _DATA_46B7_ _DATA_4688_ _DATA_46B8_
	.dw _DATA_4689_ _DATA_46B9_ _DATA_468A_ _DATA_46BA_ _DATA_468B_ _DATA_46BB_ _DATA_468C_ _DATA_46BC_
	.dw _DATA_468D_ _DATA_46BD_ _DATA_468E_ _DATA_46BE_
	
; Data from 9DB to A1A (64 bytes)	
_DATA_9DB_:	
	.dsb 15, $02
	.dsb 18, $01
	.db $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01
	.db $00 $00 $01 $00 $00 $01 $00 $00 $01 $00 $00 $01 $00 $00 $00
	
_LABEL_A1B_:	
		call +
		call _LABEL_A9D_
		ret
	
+:	
		ld hl, _RAM_C10D_
		res 4, (hl)
		bit 3, (hl)
		ret nz
		xor a
		ld (_RAM_C118_), a
		ld a, (_RAM_C115_)
		add a, $18
		call _LABEL_8B4_
		call _LABEL_D5_
		ld d, a
		cp $04
		ret c
		inc hl
		call _LABEL_D5_
		ld e, a
		ld hl, _RAM_C118_
		ld a, d
		cp $62
		jr nc, +
		set 1, (hl)
+:	
		ld a, e
		cp $62
		jr nc, +
		set 0, (hl)
+:	
		ld a, (hl)
		and $03
		ret z
		cp $03
		jp z, _LABEL_7B7_
		dec a
		jr nz, +
		ld a, d
		ld hl, $0B46
		ld bc, $0012
		cpir
		ret nz
		ld a, (_RAM_C101_)
		and $0C
		ret nz
		ld hl, _RAM_C10D_
		ld a, (hl)
		or $92
		and $FE
		ld (hl), a
		ld a, $08
		ld (_RAM_C110_), a
		ret
	
+:	
		ld a, e
		ld hl, $0B34
		ld bc, $0012
		cpir
		ret nz
		ld a, (_RAM_C101_)
		and $0C
		ret nz
		ld hl, _RAM_C10D_
		ld a, (hl)
		or $91
		and $FD
		ld (hl), a
		ld a, $08
		ld (_RAM_C110_), a
		ret
	
_LABEL_A9D_:	
		ld hl, _RAM_C10D_
		bit 7, (hl)
		ret z
		ld a, (_RAM_C115_)
		add a, $08
		ld c, a
		add a, $08
		ld b, $02
		ld hl, _RAM_C10D_
		bit 0, (hl)
		jr z, _LABEL_AE2_
-:	
		push bc
		call _LABEL_8B4_
		dec hl
		call _LABEL_D5_
		ld hl, $0B58
		push af
		ld a, (_RAM_C111_)
		ld bc, $0004
		or a
		jr z, +
		ld bc, $0008
		dec a
		jr z, +
		ld bc, $000C
		dec a
		jr z, +
		ld bc, $0010
+:	
		pop af
		cpir
		pop bc
		jr z, ++
		ld a, c
		djnz -
		ret
	
_LABEL_AE2_:	
		push bc
		call _LABEL_8B4_
		inc hl
		inc hl
		call _LABEL_D5_
		ld hl, $0B68
		push af
		ld a, (_RAM_C111_)
		ld bc, $0004
		or a
		jr z, +
		ld bc, $0008
		dec a
		jr z, +
		ld bc, $000C
		dec a
		jr z, +
		ld bc, $0010
+:	
		pop af
		cpir
		pop bc
		jr z, ++
		ld a, c
		djnz _LABEL_AE2_
		ret
	
++:	
		ld hl, _RAM_C10D_
		ld a, (_RAM_C110_)
		add a, $0C
		ld (_RAM_C110_), a
		set 5, (hl)
		bit 1, (hl)
		jr nz, +
		set 1, (hl)
		res 0, (hl)
		ret
	
+:	
		set 0, (hl)
		res 1, (hl)
		ret
	
	; Data from B2C to B77 (76 bytes)
	.db $04 $05 $06 $07 $08 $09 $60 $61 $63 $65 $67 $6C $6E $70 $75 $77
	.db $79 $7E $80 $82 $87 $89 $8B $90 $92 $94 $A3 $A5 $AA $9A $9C $A1
	.db $91 $93 $98 $88 $8A $8F $7F $81 $86 $76 $78 $7D $62 $64 $66 $6B
	.db $62 $6D $6F $74 $62 $76 $78 $7D $62 $7F $81 $86 $62 $A2 $A4 $A6
	.db $62 $99 $9B $9D $62 $90 $92 $94 $62 $87 $89 $8B
	
_LABEL_B78_:	
		ld hl, _RAM_C0EC_
		bit 3, (hl)
		ret nz
		ld a, (_RAM_C107_)
		and $02
		ret nz
		ld a, (_RAM_C11A_)
		inc a
		ld (_RAM_C11A_), a
		and $07
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_BB9_
		add hl, de
		push hl
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld hl, $0020
		ld bc, $0030
		call _LABEL_106_
		ld hl, $0820
		call _LABEL_106_
		ld hl, $1020
		call _LABEL_106_
		pop hl
		ld de, $0010
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		jp _LABEL_87D_
	
; Pointer Table from BB9 to BC8 (8 entries, indexed by _RAM_C11A_)	
_DATA_BB9_:	
	.dw _DATA_4417_ _DATA_4447_ _DATA_4417_ _DATA_4447_ _DATA_4447_ _DATA_4477_ _DATA_4477_ _DATA_4477_
	
	; Data from BC9 to BD8 (16 bytes)
	.db $E7 $46 $17 $47 $E7 $46 $17 $47 $17 $47 $47 $47 $47 $47 $47 $47
	
_LABEL_BD9_:	
		ld ix, _RAM_C1B1_
		ld b, $02
--:	
		push bc
		ld bc, $0707
		call _LABEL_1C62_
		cp $05
		jr z, +
		cp $08
		jr z, +
-:	
		ld de, $0004
		add ix, de
		pop bc
		djnz --
		ret
	
+:	
		call +
		ld hl, _RAM_C0EC_
		set 5, (hl)
		ld (ix+0), $E0
		xor a
		ld (_RAM_C13E_), a
		jr -
	
+:	
		push ix
		ld ix, _RAM_C1B9_
		ld iy, _RAM_C125_
		ld b, $08
--:	
		push bc
		ld a, $03
		cp (iy+0)
		jr nz, ++
		ld (iy+0), $01
		ld (iy+1), $00
-:	
		ld bc, $0C03
		call _LABEL_1C62_
		cp $62
		jr c, ++
		ld a, (ix+1)
		cp $7D
		jr c, +
		dec (ix+1)
		jr -
	
+:	
		inc (ix+1)
		jr -
	
++:	
		ld de, $0004
		add ix, de
		dec de
		add iy, de
		pop bc
		djnz --
		pop ix
		ret
	
_LABEL_C4E_:	
		call _LABEL_156D_
		call +
		call _LABEL_10DD_
		ret
	
_LABEL_C58_:	
		ld a, (_RAM_C114_)
		or a
		ret z
		di
		ld c, a
		ld b, $20
		ld hl, _RAM_C1A2_
		ld a, (_RAM_C113_)
		ld d, a
		ld a, c
		bit 1, d
		jr z, _LABEL_C6F_
		neg
_LABEL_C6F_:	
		push af
		add a, (hl)
		ld (hl), a
		pop af
		inc hl
		inc hl
		inc hl
		inc hl
		djnz _LABEL_C6F_
		ei
		ret
	
+:	
		di
		ld ix, _RAM_C1B1_
		ld iy, _RAM_C11C_
		set 7, (iy+3)
		ld b, $02
-:	
		push bc
		res 1, (iy+3)
		call _LABEL_CD9_
		call +
		ld de, $0004
		add ix, de
		add iy, de
		pop bc
		djnz -
		ei
		ret
	
+:	
		bit 5, (iy+0)
		ret nz
		ld a, (_RAM_C10A_)
		ld b, $00
		cp $04
		jr z, +
		inc b
		cp $08
		jr z, +
		inc b
		cp $0C
		jr z, +
		ret c
		xor a
		ld (_RAM_C10A_), a
		ret
	
+:	
		bit 4, (iy+0)
		jr z, +
		ld b, $02
+:	
		ld c, $0C
		bit 3, (iy+0)
		jr z, +
		ld c, $00
+:	
		ld a, b
		rlca
		rlca
		add a, c
		ld (ix+2), a
		ret
	
_LABEL_CD9_:	
		ld a, (iy+0)
		rlca
		jp c, _LABEL_EEC_
		rlca
		jp c, _LABEL_F05_
		rlca
		jp c, _LABEL_E06_
		rlca
		jp c, _LABEL_F93_
		inc b
		inc b
		rlca
		jr nc, _LABEL_D10_
-:	
		dec (ix+1)
		bit 1, (iy+3)
		ret nz
		push bc
		ld hl, $0F62
		ld de, $08F2
		call _LABEL_D2F_
		ld hl, $0F31
		ld bc, $1204
		call _LABEL_DDF_
		pop bc
		djnz -
		ret
	
_LABEL_D10_:	
		inc (ix+1)
		bit 1, (iy+3)
		ret nz
		push bc
		ld hl, $0F31
		ld de, $081E
		call _LABEL_D2F_
		ld hl, $0F62
		ld bc, $120B
		call _LABEL_DDF_
		pop bc
		djnz _LABEL_D10_
		ret
	
_LABEL_D2F_:	
		push de
		ld b, $09
_LABEL_D32_:	
		push bc
		push de
		pop bc
		call _LABEL_10C8_
		cp $60
		jr z, ++
		bit 1, (iy+0)
		jr z, +
		ld c, $31
		cp $04
		jr c, +++
		cp $62
		jr nc, +++
+:	
		ld c, $00
		cp $04
		jr c, +++
		push hl
		ld bc, $0031
		cpir
		pop hl
		jr z, +++
++:	
		ld c, $F8
		ld a, d
		add a, c
		ld d, a
		pop bc
		bit 1, (iy+0)
		jr z, ++
		ld a, $F8
		bit 3, (iy+0)
		jr nz, +
		ld a, $08
+:	
		bit 0, b
		jr z, ++
		add a, e
		ld e, a
++:	
		ei
		djnz _LABEL_D32_
		ld (iy+1), $01
		pop de
		ret
	
+++:	
		ld a, c
		cp $29
		pop bc
		pop de
		ret c
		set 1, (iy+3)
		ld a, b
		bit 1, (iy+0)
		jr z, +
		add a, $02
		jr ++
	
+:	
		sub $03
++:	
		jr nc, +
		xor a
+:	
		ld (iy+1), a
		ld a, (_RAM_C115_)
		add a, $10
		cp (ix+0)
		jr c, ++++
		sub $18
		cp (ix+0)
		jr nc, +++
		ld a, (ix+1)
		cp $78
		bit 3, (iy+0)
		jr nz, +
		jr c, +++
		jr ++
	
+:	
		jr nc, +++
++:	
		set 0, (iy+3)
		jr +++++
	
+++:	
		ld bc, $081B
		bit 3, (iy+0)
		jr z, +
		ld c, $F5
+:	
		call _LABEL_10C8_
		cp $62
		ret c
++++:	
		set 4, (iy+0)
		res 2, (iy+0)
		ret
	
_LABEL_DDF_:	
		bit 4, (iy+0)
		ret nz
		call _LABEL_10C8_
		ld bc, $0008
		cpir
		jr z, +++++
		and $FE
		cp $60
		jp z, _LABEL_EC8_
		call _LABEL_102B_
		ret
	
+++++:	
		ld (iy+2), $0A
		set 5, (iy+0)
		set 1, (iy+3)
		ret
	
_LABEL_E06_:	
		dec (iy+2)
		ret nz
		bit 0, (iy+3)
		res 5, (iy+0)
		jp nz, _LABEL_E77_
		set 4, (iy+0)
		ld a, (_RAM_C115_)
		add a, $10
		cp (ix+0)
		jp c, _LABEL_EB8_
		sub $18
		cp (ix+0)
		jp nc, _LABEL_EC8_
		ld a, (ix+1)
		cp $78
		jr nc, +
		bit 3, (iy+0)
		jr nz, _LABEL_E77_
		jr ++
	
+:	
		bit 3, (iy+0)
		jr z, _LABEL_E77_
++:	
		ld bc, $0008
-:	
		call _LABEL_E61_
		jr nz, +
		jr nc, _LABEL_E58_
		jr ++
	
+:	
		jr c, _LABEL_E58_
++:	
		call _LABEL_10C8_
		cp $63
		jr nc, _LABEL_EC8_
		jr -
	
_LABEL_E58_:	
		set 0, (iy+0)
		ld (iy+1), $09
		ret
	
_LABEL_E61_:	
		ld a, c
		bit 3, (iy+0)
		jr nz, +
		add a, $10
+:	
		sub $08
		ld c, a
		add a, (ix+1)
		cp $78
		bit 3, (iy+0)
		ret
	
_LABEL_E77_:	
		call +++
		ld bc, $0008
--:	
		call _LABEL_E61_
		jr nz, +
		jr c, ++
-:	
		res 0, (iy+3)
		ret
	
+:	
		jr c, -
++:	
		call _LABEL_10C8_
		cp $63
		jr c, --
		call +++
		bit 0, (iy+3)
		res 0, (iy+3)
		ret nz
		set 4, (iy+0)
		jr _LABEL_E58_
	
+++:	
		res 4, (iy+0)
		bit 3, (iy+0)
		jr z, +
		res 3, (iy+0)
		ret
	
+:	
		set 3, (iy+0)
		ret
	
_LABEL_EB8_:	
		call ++
		jr z, +
-:	
		set 1, (iy+0)
		ld de, $0808
		call _LABEL_D2F_
		ret
	
_LABEL_EC8_:	
		set 4, (iy+0)
		call ++
		jr z, -
+:	
		set 2, (iy+0)
		set 1, (iy+0)
		set 1, (iy+3)
		ld (iy+1), $0F
		ret
	
++:	
		bit 7, (iy+3)
		ret nz
		ld a, r
		and $03
		ret
	
_LABEL_EEC_:	
		ld (ix+0), $00
		ld (ix+1), $08
		ld (ix+3), $00
		ld (iy+2), $80
		res 7, (iy+0)
		set 6, (iy+0)
		ret
	
_LABEL_F05_:	
		dec (iy+2)
		ret nz
		ld (ix+3), $0F
		ld (iy+0), $00
		ret
	
; Data from F12 to F92 (129 bytes)	
_DATA_F12_:	
	.db $0D $0C $0B $0A $09 $08 $07 $06 $05 $04 $03 $02 $01 $01 $00 $01
	.db $00 $00 $01 $00 $00 $00 $00 $6A $73 $7C $85 $8E $97 $A0 $A9 $63
	.db $6C $75 $7E $87 $90 $99 $A2 $62 $64 $6D $76 $7F $88 $91 $9A $A3
	.db $68 $71 $7A $83 $8C $95 $9E $A7 $69 $72 $7B $84 $8D $96 $9F $A8
	.db $6A $73 $7C $85 $8E $97 $A0 $A9 $6B $74 $7D $86 $8F $98 $A1 $AA
	.db $64 $6D $76 $7F $88 $91 $9A $A3 $62 $63 $6C $75 $7E $87 $90 $99
	.db $A2 $68 $71 $7A $83 $8C $95 $9E $A7 $69 $72 $7B $84 $8D $96 $9F
	.db $A8 $6A $73 $7C $85 $8E $97 $A0 $A9 $6B $74 $7D $86 $8F $98 $A1
	.db $AA
	
_LABEL_F93_:	
		bit 2, (iy+0)
		jp nz, _LABEL_105E_
		ld bc, $020C
		bit 3, (iy+0)
		jr z, +
		ld c, $04
+:	
		call _LABEL_10C8_
		cp $62
		jr nc, _LABEL_FD5_
		cp $04
		jp c, _LABEL_FD5_
		call _LABEL_FF0_
		call _LABEL_FC6_
		sub b
		ld (ix+0), a
		inc (iy+1)
		ld a, (iy+1)
		cp $11
		ret nz
		jr ++
	
_LABEL_FC6_:	
		ld a, (iy+1)
		ld c, a
		ld b, $00
		ld hl, _DATA_F12_
		add hl, bc
		ld b, (hl)
		ld a, (ix+0)
		ret
	
_LABEL_FD5_:	
		ld b, $03
		call _LABEL_10C8_
		cp $60
		jr z, +
		cp $61
		jr z, +
		inc (ix+0)
		jr _LABEL_FD5_
	
+:	
		ld (iy+1), $13
++:	
		set 2, (iy+0)
		ret
	
_LABEL_FF0_:	
		bit 0, (iy+0)
		jr nz, +
		bit 1, (iy+0)
		jr nz, ++
		ld b, $01
--:	
		ld a, (ix+1)
		bit 3, (iy+0)
		jr nz, _LABEL_1015_
-:	
		inc (ix+1)
		call _LABEL_102B_
		bit 3, (iy+0)
		ret nz
		djnz -
		ret
	
_LABEL_1015_:	
		dec (ix+1)
		call _LABEL_102B_
		bit 3, (iy+0)
		ret z
		djnz _LABEL_1015_
		ret
	
+:	
		ld b, $04
		jr --
	
++:	
		ld b, $03
		jr --
	
_LABEL_102B_:	
		push bc
		ld c, $FF
		bit 3, (iy+0)
		jr nz, +
		ld c, $11
+:	
		ld b, $0C
		call _LABEL_10C8_
		cp $62
		jr nc, +
		ld b, $04
		call _LABEL_10C8_
		cp $62
		pop bc
		ret c
		push bc
+:	
		pop bc
		set 1, (iy+3)
		bit 3, (iy+0)
		jr nz, +
		set 3, (iy+0)
		ret
	
+:	
		res 3, (iy+0)
		ret
	
_LABEL_105E_:	
		call _LABEL_FF0_
		call _LABEL_FC6_
		add a, b
		ld (ix+0), a
		call +++
		bit 2, (iy+0)
		jr nz, ++
		ld b, $10
-:	
		call _LABEL_10C8_
		and $FE
		cp $60
		ret z
		cp $04
		jr c, +
		cp $0A
		ret c
+:	
		ld a, (ix+0)
		cp $10
		jr nc, +
		inc (ix+1)
		inc (ix+1)
		ret
	
+:	
		dec (ix+0)
		jr -
	
++:	
		ld a, $05
		cp (iy+1)
		ret z
		dec (iy+1)
		ret
	
+++:	
		ld b, $11
		bit 3, (iy+0)
		jr nz, +
		ld c, $10
		jr ++
	
+:	
		ld c, $00
++:	
		call _LABEL_10C8_
		cp $02
		jr c, +
		cp $62
		ret c
+:	
		res 4, (iy+0)
		res 2, (iy+0)
		res 0, (iy+0)
		res 1, (iy+0)
		ret
	
_LABEL_10C8_:	
		push bc
		ld a, (_RAM_C10E_)
		bit 3, (iy+0)
		jr nz, +
		xor $07
		neg
+:	
		add a, c
		ld c, a
		call _LABEL_1C62_
		pop bc
		ret
	
_LABEL_10DD_:	
		ld hl, _RAM_C108_
		ld a, (hl)
		cp $06
		jr c, +
		ld (hl), $00
		ld hl, _RAM_C13D_
		inc (hl)
		ld a, $14
		cp (hl)
		jr nz, +
		ld (hl), $00
+:	
		ld ix, _RAM_C1B9_
		ld iy, _RAM_C125_
		ld b, $08
-:	
		di
		push bc
		call +
		call _LABEL_1142_
		call _LABEL_1314_
		ld de, $0004
		add ix, de
		ld de, $0003
		add iy, de
		pop bc
		djnz -
		ei
		ret
	
+:	
		ld a, (_RAM_C0EC_)
		bit 5, a
		ret nz
		ld a, (iy+0)
		cp $03
		ret nc
		ld bc, $0A04
		call _LABEL_1C62_
		cp $04
		ret c
		cp $0A
		ret nc
		ld (iy+0), $03
		ld a, (_RAM_C13E_)
		inc a
		ld (iy+1), a
		ld (_RAM_C13E_), a
		ld a, $87
		ld (_RAM_C320_), a
		ret
	
_LABEL_1142_:	
		ld a, (iy+0)
		or a
		jr z, +
		dec a
		jr z, ++
		dec a
		jp z, _LABEL_1245_
		dec a
		jp z, _LABEL_1246_
		dec a
		jp z, _LABEL_12AB_
		dec a
		jp z, _LABEL_12BF_
		dec a
		jp z, _LABEL_1307_
		ret
	
+:	
		ld a, (_RAM_C108_)
		or a
		ret nz
		ld a, (_RAM_C13D_)
		ld hl, _DATA_1400_
		ld e, a
		ld d, $00
		add hl, de
		ld a, (hl)
		ld d, a
		ld bc, $0804
		add a, b
		ld b, a
		call _LABEL_1C62_
		and $FE
		cp $60
		ret nz
		ld a, d
		add a, (ix+0)
		ld (ix+0), a
		ret
	
++:	
		ld a, (iy+2)
		or a
		jr z, +
		dec a
		jr z, _LABEL_11DD_
		dec a
		jp z, _LABEL_1229_
+:	
		ld a, (ix+0)
		and $F8
		ld (ix+0), a
		ld (ix+2), $20
		dec (ix+1)
		ld a, (ix+3)
		cp $0F
		jr z, +
		dec (ix+1)
+:	
		ld bc, $0C00
		ld a, (_RAM_C10E_)
		neg
		add a, c
		ld c, a
		call _LABEL_1C62_
		and $FE
		cp $60
		jr nz, +
		ld bc, $1102
		ld a, (_RAM_C10E_)
		neg
		add a, c
		ld c, a
		call _LABEL_1C62_
		cp $02
		ret c
		cp $62
		jr c, _LABEL_1223_
		ret z
		ld a, (ix+3)
		dec a
		ret z
+:	
		inc (iy+2)
		ret
	
_LABEL_11DD_:	
		ld a, (ix+0)
		and $F8
		ld (ix+0), a
		ld (ix+2), $28
		inc (ix+1)
		ld a, (ix+3)
		cp $0F
		jr z, +
		inc (ix+1)
+:	
		ld bc, $0C08
		ld a, (_RAM_C10E_)
		add a, c
		ld c, a
		call _LABEL_1C62_
		and $FE
		cp $60
		jr nz, +
		ld bc, $1105
		ld a, (_RAM_C10E_)
		add a, c
		ld c, a
		call _LABEL_1C62_
		cp $02
		ret c
		cp $62
		jr c, _LABEL_1223_
		ret z
		ld a, (ix+3)
		dec a
		ret z
+:	
		dec (iy+2)
		ret
	
_LABEL_1223_:	
		ld a, $02
		ld (iy+2), a
		ret
	
_LABEL_1229_:	
		inc (ix+0)
		inc (ix+0)
		ld bc, $1104
		call _LABEL_1C62_
		cp $02
		jr c, +
		cp $62
		ret c
+:	
		ld a, r
		or h
		and $01
		ld (iy+2), a
		ret
	
_LABEL_1245_:	
		ret
	
_LABEL_1246_:	
		ld hl, _RAM_C1B1_
		ld b, $02
-:	
		push bc
		push hl
		ld a, $10
		ld b, (hl)
		add a, b
		ld c, a
		inc hl
		ld a, $10
		ld d, (hl)
		add a, d
		ld e, a
		ld a, (ix+0)
		add a, $08
		cp b
		jr c, _LABEL_126E_
		cp c
		jr nc, _LABEL_126E_
		ld a, (ix+1)
		add a, $04
		cp d
		jr c, _LABEL_126E_
		cp e
		jr c, +
_LABEL_126E_:	
		pop hl
		ld de, $0004
		add hl, de
		pop bc
		djnz -
		ret
	
+:	
		ld a, (iy+1)
		ld (_RAM_C13E_), a
		push iy
		ld iy, _RAM_C125_
		ld de, $0003
		ld b, $08
-:	
		push af
		cp (iy+1)
		jr nc, +
		ld a, $FF
		cp (iy+1)
		jr z, +
		ld (iy+1), $00
		ld (iy+0), $01
+:	
		add iy, de
		pop af
		djnz -
		pop iy
		ld a, $87
		ld (_RAM_C320_), a
		jr _LABEL_126E_
	
_LABEL_12AB_:	
		ld a, (_RAM_C1A9_)
		sub $0C
		ld (ix+0), a
		ld a, (_RAM_C1AA_)
		add a, $0C
		ld (ix+1), a
		inc (iy+0)
		ret
	
_LABEL_12BF_:	
		ld a, (ix+1)
		sub $04
		ld (ix+1), a
		ld a, (iy+1)
		dec a
		rlca
		rlca
		ld e, a
		ld b, a
		rlca
		ld c, a
		ld a, (_RAM_C115_)
		cp $50
		jr c, +
		sub $0C
		sub c
		jr ++
	
+:	
		add a, $18
		add a, c
++:	
		ld (ix+0), a
		ld a, $40
		add a, b
		ld (ix+2), a
		ld (ix+3), $0F
		inc (iy+0)
		ld a, $88
		ld (_RAM_C320_), a
		ld d, $00
		ld hl, _DATA_1EF0_
		add hl, de
		ld de, _RAM_C0F3_
		ld bc, $0004
		ldir
		call _LABEL_1DE3_
		ret
	
_LABEL_1307_:	
		ld hl, _RAM_C153_
		inc (hl)
		ld (iy+1), $FF
		ld (iy+0), $FF
		ret
	
_LABEL_1314_:	
		ld a, (_RAM_C108_)
		or a
		ret nz
		ld a, (ix+2)
		ld hl, $1414
		push hl
		ld bc, $0006
		cpir
		ld e, c
		ld d, $00
		pop hl
		add hl, de
		ld a, (hl)
		ld (ix+2), a
		ret
	
_LABEL_132F_:	
		ld a, (_RAM_C13E_)
		or a
		ret z
		di
		ld a, (_RAM_C115_)
		ld hl, _RAM_C13F_
		ld (hl), a
		inc hl
		ld (hl), $7D
		ld a, (_RAM_C13E_)
		ld b, a
		ld de, $0001
_LABEL_1346_:	
		push bc
		push de
		ld b, $08
		ld ix, _RAM_C1B9_
		ld iy, $C125
-:	
		ld a, e
		cp (iy+1)
		jr z, +
		push bc
		ld bc, $0004
		add ix, bc
		pop bc
		inc iy
		inc iy
		inc iy
		djnz -
		pop de
		jr _LABEL_13BE_
	
+:	
		pop de
		ld hl, $C140
		add hl, de
		ld a, (hl)
		ld (ix+0), a
		ld hl, $C148
		add hl, de
		ld a, (hl)
		or a
		jr z, ++
		cp $80
		jr nc, +
		add a, $01
		jr ++
	
+:	
		sub $01
++:	
		ld hl, _RAM_C140_
		add a, (hl)
		ld (ix+1), a
		ld (hl), a
		ld (ix+2), $28
		cp $7D
		jr c, +
		ld (ix+2), $18
		jr z, +
		ld (ix+2), $20
+:	
		ld bc, $0C07
		call _LABEL_1C62_
		cp $62
		jr c, _LABEL_13BE_
		ld a, (ix+1)
		cp $7D
		jr c, 5
		dec (ix+1)
		dec (ix+1)
		jr _LABEL_13BE_
	
		inc (ix+1)
		inc (ix+1)
_LABEL_13BE_:	
		inc de
		pop bc
		djnz _LABEL_1346_
		ei
		ret
	
_LABEL_13C4_:	
		ld hl, _RAM_C151_
		ld a, (hl)
		cp $02
		ret c
		ld (hl), $00
		ld hl, _RAM_C147_
		ld de, _RAM_C148_
		ld bc, $0007
		lddr
		ld a, (_RAM_C115_)
		ld (de), a
		ld hl, _RAM_C14F_
		ld de, _RAM_C150_
		ld bc, $0007
		lddr
		ld hl, _RAM_C10D_
		ld a, (_RAM_C114_)
		bit 0, (hl)
		jr nz, +
		neg
+:	
		ld (de), a
		call _LABEL_132F_
		ld hl, _RAM_C113_
		ld (hl), $00
		inc hl
		ld (hl), $00
		ret
	
; Data from 1400 to 1419 (26 bytes)	
_DATA_1400_:	
	.db $00 $00 $00 $01 $01 $02 $01 $01 $00 $00 $00 $00 $00 $FF $FF $FE
	.db $FF $FF $00 $00 $18 $20 $28 $2C $24 $1C
	
_LABEL_141A_:	
		ld ix, _RAM_C1A1_
		ld de, _RAM_C152_
		ld hl, _RAM_C0EC_
		ld a, (hl)
		rrca
		jp c, _LABEL_14D0_
		ld a, (de)
		or a
		jr z, _LABEL_143D_
		dec a
		jr z, +
		dec a
		jr z, _LABEL_1470_
		set 0, (hl)
		ex de, hl
		ld (hl), $00
		xor a
		ld (_RAM_C0CD_), a
		ret
	
_LABEL_143D_:	
		ld a, (_RAM_C109_)
		cp $01
		ret c
		xor a
		ld (_RAM_C109_), a
		dec (ix+1)
		inc (ix+5)
		ld a, (ix+9)
		sub $0A
		cp (ix+1)
		ret nz
		ex de, hl
		inc (hl)
		ld hl, _RAM_C10D_
		ld b, $08
-:	
		ld (hl), $00
		djnz -
		call _LABEL_81E_
		ret
	
+:	
		call _LABEL_81E_
		call _LABEL_893_
		ld hl, _RAM_C152_
		inc (hl)
		ret
	
_LABEL_1470_:	
		ld a, (_RAM_C109_)
		cp $01
		ret c
		xor a
		ld (_RAM_C109_), a
		inc (ix+1)
		dec (ix+5)
		ld a, (ix+9)
		cp (ix+1)
		jr nz, ++
		ex de, hl
		inc (hl)
		ex de, hl
		call _LABEL_2A1_
		ld b, $00
		ld a, (_RAM_C153_)
		cp $08
		jr c, +
		set 6, (hl)
		ld b, $01
+:	
		ld a, b
		ld (_RAM_C155_), a
		ei
		call _LABEL_2A1_
		ret
	
++:	
		ld a, (_RAM_C0EC_)
		rrca
		ret nc
		ld a, (_RAM_C154_)
		add a, $04
		ld (_RAM_C154_), a
		ld b, $08
		ld ix, _RAM_C1B9_
		ld de, $0004
-:	
		cp (ix+2)
		jr nz, +
		ld (ix+0), $E0
		ld (ix+2), $00
		ld (ix+3), $00
+:	
		add ix, de
		djnz -
		ret
	
_LABEL_14D0_:	
		ld a, (de)
		or a
		jr z, +
		dec a
		jp z, _LABEL_143D_
		dec a
		jr z, ++
		dec a
		jr z, _LABEL_1470_
		xor a
		ld (de), a
		ret
	
+:	
		bit 3, (hl)
		ret nz
		ld a, (ix+9)
		cp $68
		ret c
		cp $78
		ret nc
		ld a, (_RAM_C13E_)
		or a
		ret z
		ld a, (_RAM_C115_)
		add a, $0F
		cp (ix+0)
		ret nz
		ex de, hl
		inc (hl)
		ld a, $01
		ld (_RAM_C155_), a
		ret
	
++:	
		ld a, (_RAM_C13E_)
		ld b, a
		xor a
--:	
		inc a
		push bc
		ld ix, $C1B9
		ld iy, _RAM_C125_
		ld b, $08
-:	
		push bc
		cp (iy+1)
		call z, +
		ld bc, $0004
		add ix, bc
		ld bc, $0003
		add iy, bc
		pop bc
		djnz -
		pop bc
		djnz --
		ld hl, _RAM_C152_
		inc (hl)
		xor a
		ld (_RAM_C13E_), a
		ld a, $3C
		ld (_RAM_C154_), a
		ret
	
+:	
		push af
		push ix
		push iy
		inc (iy+0)
		call _LABEL_1142_
		ld a, $00
		ld (_RAM_C102_), a
		ei
		halt
		call _LABEL_13C4_
		pop iy
		pop ix
		push ix
		push iy
		call _LABEL_1142_
		ld a, $00
		ld (_RAM_C102_), a
		ei
		ld b, $01
		call _LABEL_1B3_
		pop iy
		pop ix
		call _LABEL_1142_
		pop af
		ret
	
_LABEL_156D_:	
		ld ix, _RAM_C1D9_
		ld iy, _RAM_C182_
		ld b, $06
-:	
		push bc
		ld a, (iy+0)
		or a
		call z, ++
		dec a
		call z, _LABEL_15C5_
		dec a
		call z, _LABEL_1603_
		dec a
		call z, _LABEL_1745_
		dec a
		jr nz, +
		ld (ix+0), $E0
		ld (ix+3), $00
		ld (iy+0), $FF
+:	
		ld de, $0004
		add ix, de
		add iy, de
		pop bc
		djnz -
		ret
	
++:	
		push af
		ld a, (_RAM_C19C_)
		or a
		jr nz, +
		ld bc, $0404
		call _LABEL_10C8_
		cp $60
		jr nc, +
		inc (iy+0)
		ld a, $01
		ld (_RAM_C19C_), a
		ld a, $89
		ld (_RAM_C320_), a
+:	
		pop af
		ret
	
_LABEL_15C5_:	
		push af
		ld a, (_RAM_C115_)
		add a, $08
		ld (ix+0), a
		ld a, $74
		ld hl, _RAM_C10D_
		bit 7, (hl)
		jr z, ++
		bit 0, (hl)
		jr nz, +
		add a, $10
+:	
		ld (ix+1), a
++:	
		ld a, (_RAM_C101_)
		and $C0
		jr z, ++
		inc (iy+0)
		ld a, (ix+1)
		cp $78
		jr nc, +
		inc (iy+1)
+:	
		ld (iy+2), $35
		xor a
		ld (_RAM_C19C_), a
		ld a, $91
		ld (_RAM_C320_), a
++:	
		pop af
		ret
	
_LABEL_1603_:	
		push af
		call _LABEL_16DF_
		ld bc, $0600
		bit 0, (iy+1)
		jr nz, +
		ld c, $0C
		ld e, c
+:	
		call _LABEL_10C8_
		cp $62
		jr c, +
		ld a, (iy+1)
		xor $01
		ld (iy+1), a
+:	
		ld a, (iy+2)
		or a
		jr z, _LABEL_1684_
		dec (iy+2)
		ld c, $08
		cp $10
		jr nc, +
		dec c
		dec c
		dec c
		dec c
		cp $08
		jr nc, +
		dec c
		dec c
		cp $04
		jr nc, +
		dec c
		dec c
+:	
		ld a, c
		bit 0, (iy+1)
		jr z, +
		neg
+:	
		add a, (ix+1)
		ld (ix+1), a
		ld b, $09
		ld c, e
		ld a, (ix+2)
		cp $F4
		jr z, +
		ld b, $10
+:	
		call _LABEL_10C8_
		cp $04
		jr c, +
		cp $62
		jr nc, +
		ld a, (ix+0)
		add a, $02
		ld (ix+0), a
+:	
		ld a, (ix+2)
		cp $F4
		jr nc, _LABEL_1682_
		ld b, $0C
		cp $0C
		jr c, +
		ld b, $F4
+:	
		add a, b
		ld (ix+2), a
_LABEL_1682_:	
		pop af
		ret
	
_LABEL_1684_:	
		ld a, (ix+2)
		cp $F4
		jr z, _LABEL_16D7_
		ld b, $10
		ld c, e
		call _LABEL_10C8_
		cp $62
		jr nc, +
		cp $04
		jr c, +
		inc (iy+2)
		jr _LABEL_1682_
	
+:	
		inc (iy+0)
		ld a, (_RAM_C115_)
		sub (ix+0)
		cp $C0
		jr nc, ++
		ld b, $50
		ld a, (_RAM_C0E1_)
		or a
		jr z, +
		ld b, $80
+:	
		ld (iy+2), b
		ld (ix+2), $F0
		ld a, (ix+0)
		add a, $08
		ld (ix+0), a
-:	
		dec (ix+0)
		ld bc, $0703
		call _LABEL_1C62_
		cp $04
		jr c, -
		cp $62
		jr nc, -
		jr _LABEL_1682_
	
_LABEL_16D7_:	
		inc (iy+0)
++:	
		inc (iy+0)
		jr _LABEL_1682_
	
_LABEL_16DF_:	
		push iy
		ld hl, _RAM_C1B1_
		ld iy, _RAM_C11C_
		ld b, $02
_LABEL_16EA_:	
		push bc
		push hl
		ld a, (hl)
		sub $04
		ld b, a
		add a, $10
		ld c, a
		inc hl
		ld a, (hl)
		sub $04
		ld d, a
		add a, $10
		ld e, a
		ld a, (ix+0)
		cp b
		jr c, +
		cp c
		jr nc, +
		ld a, (ix+1)
		cp d
		jr c, +
		cp e
		jr nc, +
		inc hl
		ld a, (hl)
		ld (ix+2), a
		ld (ix+3), $0B
		inc hl
		ld (hl), $00
		ld a, (ix+0)
		sub $08
		ld (ix+0), a
		set 7, (iy+0)
		ld a, $92
		ld (_RAM_C320_), a
		ld hl, _DATA_1EF4_
		ld de, _RAM_C0F3_
		ld bc, $0004
		ldir
		call _LABEL_1DE3_
+:	
		pop hl
		ld de, $0004
		add hl, de
		add iy, de
		pop bc
		djnz _LABEL_16EA_
		pop iy
		ret
	
_LABEL_1745_:	
		push af
		dec (iy+2)
		jr nz, 4
		inc (iy+0)
		jr _LABEL_17A7_
	
		ld a, (iy+3)
		or a
		jr nz, _LABEL_17A7_
		ld a, (iy+2)
		and $0F
		jr z, +
		ld (ix+3), a
+:	
		ld bc, $0204
		call _LABEL_1C62_
		cp $04
		jr c, _LABEL_17A7_
		cp $0A
		jr nc, _LABEL_17A7_
		ld (iy+3), $01
		ld a, (_RAM_C115_)
		sub $10
		ld (ix+0), a
		ld a, (_RAM_C13E_)
		or a
		jr z, +
		dec a
+:	
		rlca
		rlca
		ld e, a
		add a, $40
		ld (ix+2), a
		ld (ix+3), $0F
		ld d, $00
		ld hl, _DATA_1EF0_
		add hl, de
		ld de, _RAM_C0F3_
		ld bc, $0004
		ldir
		call _LABEL_1DE3_
		ld a, $90
		ld (_RAM_C320_), a
		ld (iy+2), $05
_LABEL_17A7_:	
		pop af
		ret
	
_LABEL_17A9_:	
		ld a, (_RAM_C107_)
		and $07
		ret nz
		ld hl, _RAM_C156_
		inc (hl)
		ld a, $03
		cp (hl)
		jr nc, +
		ld (hl), $00
+:	
		ld a, (hl)
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_17C8_
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ex de, hl
		jp (hl)
	
; Jump Table from 17C8 to 17CF (4 entries, indexed by _RAM_C156_)	
_DATA_17C8_:	
	.dw _LABEL_17D0_ _LABEL_17D8_ _LABEL_17E0_ _LABEL_17D8_
	
; 1st entry of Jump Table from 17C8 (indexed by _RAM_C156_)	
_LABEL_17D0_:	
		ld de, _DATA_3655_
		ld hl, _DATA_36E5_
		jr +
	
; 2nd entry of Jump Table from 17C8 (indexed by _RAM_C156_)	
_LABEL_17D8_:	
		ld de, _DATA_3775_
		ld hl, _DATA_3895_
		jr +
	
; 3rd entry of Jump Table from 17C8 (indexed by _RAM_C156_)	
_LABEL_17E0_:	
		ld de, _DATA_3805_
		ld hl, _DATA_3925_
		jr +
	
+:	
		push hl
		ld hl, $1558
		ld bc, $0090
		call _LABEL_106_
		pop de
		ld hl, $15E8
		call _LABEL_106_
		ret
	
_LABEL_17FA_:	
		ld ix, _RAM_C1A1_
		ld hl, _RAM_C10D_
		ld a, (_RAM_C157_)
		ld c, a
		ld a, (_RAM_C111_)
		cp $02
		jr c, +
		rrca
		and $0F
+:	
		ld d, $98
		ld e, $E0
		bit 0, c
		jr z, +
		ld d, $60
		ld e, $D0
		neg
+:	
		add a, (ix+1)
		ld (ix+1), a
		ld (ix+5), a
		ld (ix+9), a
		ld a, d
		ld b, $00
		bit 7, (hl)
		jr z, ++
		add a, $10
		ld b, $08
		bit 3, (hl)
		jr z, +
		add a, $10
		jr ++
	
+:	
		bit 5, (hl)
		jr z, ++
		add a, $20
++:	
		ld (ix+2), a
		add a, $04
		ld (ix+6), a
		ld a, e
		add a, b
		ld (ix+10), a
		ld a, (_RAM_C115_)
		ld (ix+0), a
		ld (ix+4), a
		ld (ix+8), a
		ld (ix+3), $05
		ld (ix+7), $0F
		ld (ix+11), $08
		call +
		call ++
		ret
	
+:	
		ld a, (_RAM_C107_)
		and $07
		cp $04
		ret c
		ld a, (_RAM_C10D_)
		bit 3, a
		jr nz, 4
		bit 5, a
		ret nz
		and $88
		ret z
		ld a, (ix+2)
		add a, $08
		ld (ix+2), a
		add a, $04
		ld (ix+6), a
		ld a, (ix+10)
		add a, $04
		ld (ix+10), a
		ret
	
++:	
		bit 7, (hl)
		jr nz, ++
		ld c, $04
		ld a, (ix+2)
		cp $98
		jr nc, +
		ld c, $FC
+:	
		ld a, c
		add a, (ix+9)
		ld (ix+9), a
		ret
	
++:	
		ld a, $07
		bit 0, (hl)
		jr z, +
		neg
+:	
		add a, (ix+9)
		ld (ix+9), a
		ret
	
_LABEL_18BF_:	
		ld hl, _RAM_C0CD_
		inc (hl)
		ld a, (hl)
		and $0F
		ld e, a
		ld d, $00
		ld hl, _DATA_18E1_
		add hl, de
		ld a, (hl)
		ld hl, $2180
		ld bc, $0050
		call _LABEL_E5_
		ld hl, $2980
		ld bc, $0050
		call _LABEL_E5_
		ret
	
; Data from 18E1 to 18F0 (16 bytes)	
_DATA_18E1_:	
	.db $F0 $E0 $B0 $A0 $30 $20 $C0 $70 $50 $40 $60 $80 $90 $D0 $30 $20
	
_LABEL_18F1_:	
		di
		ld hl, _RAM_C108_
		inc (hl)
		ld a, (hl)
		cp $03
		ret c
		ld (hl), $00
		ld ix, _RAM_C1B1_
		ld iy, _RAM_C15A_
		ld b, $14
-:	
		push bc
		ld a, (iy+0)
		cp $FF
		jr z, +
		call ++
		ld a, (iy+0)
		and $0B
		jr z, +
		call _LABEL_1A40_
		call _LABEL_19AB_
		call _LABEL_19EB_
		call _LABEL_1A3F_
+:	
		ld de, $0004
		add ix, de
		ld de, $0002
		add iy, de
		pop bc
		djnz -
		ld a, (ix-4)
		cp $E0
		ret nz
		ei
		call _LABEL_2A1_
		ld hl, _RAM_C0EC_
		set 6, (hl)
		ret
	
++:	
		ld a, b
		cp $10
		jr nc, +++
		cp $0B
		jr nc, +
		cp $06
		jr nc, +++
+:	
		ld a, (iy+0)
		cp $06
		ret nc
		ld a, b
		cp $0F
		jr nz, +
		ld hl, _RAM_C162_
		ld a, (hl)
		cp $03
		ret nz
		jr ++
	
+:	
		cp $06
		jr nc, +
		ld hl, _RAM_C176_
		ld a, (hl)
		and $03
		cp $03
		ret nz
+:	
		ld a, (ix-3)
		cp $F6
		ret nc
++:	
		ld (iy+0), $05
		ld (ix+2), $20
		ld (ix+3), $0A
		ret
	
+++:	
		ld a, (iy+0)
		cp $02
		ret nc
		ld a, b
		cp $14
		jr z, ++
		cp $0B
		jr nc, +
		ld hl, _RAM_C164_
		ld a, (hl)
		cp $FF
		ret nz
+:	
		ld a, (ix-3)
		cp $08
++:	
		ret c
		ld (iy+0), $01
		ld (ix+2), $28
		ld (ix+3), $0A
		ret
	
_LABEL_19AB_:	
		ld a, (iy+0)
		cp $02
		ret c
		cp $04
		ret z
		cp $05
		ret z
		ld hl, _DATA_1B31_
		ld e, (iy+1)
		inc (iy+1)
		ld d, $00
		add hl, de
		ld a, (hl)
		add a, (ix+0)
		ld (ix+0), a
		cp $C0
		jr c, +
		ld (iy+0), $FF
		ld (ix+0), $E0
		ret
	
+:	
		ld a, (iy+0)
		and $03
		cp $03
		ret z
		ld a, (hl)
		and $F0
		ret nz
		inc (iy+0)
		ld (ix+2), $18
		ret
	
_LABEL_19EB_:	
		ld a, (iy+1)
		rrca
		rrca
		rrca
		rrca
		and $0F
		ld e, a
		ld d, $00
		ld hl, (_RAM_C158_)
		add hl, de
		ld a, (iy+0)
		or a
		ret z
		dec a
		jr z, +
		dec a
		jr z, +++
		dec a
		jr z, +++
		dec a
		ret z
		dec a
		jr z, ++
		dec a
		jr z, ++++
		dec a
		jr z, ++++
		ret
	
+:	
		inc (ix+1)
		ld a, (ix+1)
		cp $20
		ret c
		inc (iy+0)
		ret
	
++:	
		dec (ix+1)
		ld a, (ix+1)
		cp $E0
		ret nc
		inc (iy+0)
		ret
	
+++:	
		ld a, (hl)
		add a, (ix+1)
		ld (ix+1), a
		ret
	
++++:	
		ld a, (ix+1)
		sub (hl)
		ld (ix+1), a
		ret
	
_LABEL_1A3F_:	
		ret
	
_LABEL_1A40_:	
		push ix
		push iy
		ld ix, _RAM_C1A1_
		ld d, (ix+8)
		ld e, (ix+9)
		ld ix, _RAM_C1B1_
		ld iy, _RAM_C15A_
		ld b, $14
_LABEL_1A58_:	
		push bc
		ld a, (iy+0)
		cp $FF
		jr z, _LABEL_1AA1_
		and $03
		cp $03
		jr nz, _LABEL_1AA1_
		ld a, (ix+0)
		add a, $02
		cp d
		jr c, _LABEL_1AA1_
		sub $0A
		cp d
		jr nc, _LABEL_1AA1_
		ld a, (ix+1)
		add a, $04
		cp e
		jr c, _LABEL_1AA1_
		sub $18
		cp e
		jr nc, _LABEL_1AA1_
		ld (iy+0), $FF
		ld (ix+0), $E0
		ld (ix+3), $00
		ld hl, _RAM_C153_
		inc (hl)
		ld c, (hl)
		ld b, $00
		ld hl, $3885
		add hl, bc
		ld a, $0B
		call _LABEL_DD_
		ld a, $87
		ld (_RAM_C320_), a
_LABEL_1AA1_:	
		push de
		ld de, $0004
		add ix, de
		ld de, $0002
		add iy, de
		pop de
		pop bc
		djnz _LABEL_1A58_
		pop iy
		pop ix
		ret
	
_LABEL_1AB5_:	
		ld a, (_RAM_C0EA_)
		ld b, a
		ld a, $FA
-:	
		add a, $06
		djnz -
		ld l, a
		ld h, $00
		ld de, $1B8F
		add hl, de
		ld (_RAM_C158_), hl
		ld iy, _RAM_C15A_
		ld ix, _RAM_C1B1_
		ld b, $14
-:	
		ld (ix+0), $9F
		ld a, b
		ld (iy+0), $00
		ld (ix+1), $00
		cp $10
		jr nc, +
		ld (iy+0), $04
		ld (ix+1), $FF
		cp $0B
		jr nc, +
		ld (iy+0), $00
		ld (ix+1), $00
		cp $06
		jr nc, +
		ld (iy+0), $04
		ld (ix+1), $FF
+:	
		ld de, $0004
		add ix, de
		ld de, $0002
		add iy, de
		djnz -
		ld a, (_RAM_C0EA_)
		and $03
		cp $03
		ret nz
		ld de, _RAM_C15C_
		ld hl, _DATA_1C25_
		ld b, $04
-:	
		push bc
		push hl
		ld bc, $0008
		ldir
		ld hl, $0002
		add hl, de
		ex de, hl
		pop hl
		pop bc
		djnz -
		ret
	
; Data from 1B31 to 1C24 (244 bytes)	
_DATA_1B31_:	
	.db $FA $FA $FA $FA $FA $FA $FA $FA $FB $FB $FB $FB $FB $FB $FB $FB
	.db $FC $FC $FC $FC $FC $FC $FD $FD $FD $FD $FD $FD $FE $FE $FE $FE
	.db $FE $FE $FF $FF $FF $FF $FF $FF $FF $FF $00 $00 $00 $00 $01 $01
	.db $01 $01 $01 $01 $01 $01 $02 $02 $02 $02 $02 $02 $03 $03 $03 $03
	.db $03 $03 $04 $04 $04 $04 $04 $04 $05 $05 $05 $05 $05 $05 $05 $05
	.db $06 $06 $06 $06 $06 $06 $06 $06 $07 $07 $07 $07 $07 $07 $01 $01
	.db $01 $02 $02 $02 $00 $01 $02 $00 $FE $FE $01 $01 $02 $02 $03 $03
	.db $00 $01 $02 $02 $03 $04 $04 $03 $FE $FD $02 $00 $02 $02 $02 $02
	.db $FD $FD $00 $00 $00 $05 $FF $05 $00 $00 $00 $05 $FC $FC $00 $01
	.db $02 $01 $02 $02 $FF $00 $02 $02 $05 $07 $FF $FF $02 $04 $00 $00
	.db $04 $02 $00 $FB $02 $02 $00 $00 $00 $04 $05 $05 $02 $02 $05 $03
	.db $FE $FE $00 $01 $05 $05 $01 $00 $05 $FC $05 $05 $FA $00 $07 $07
	.db $F9 $F9 $07 $07 $08 $00 $08 $00 $0A $00 $00 $09 $00 $00 $00 $00
	.db $07 $FB $07 $FB $07 $FB $01 $04 $01 $01 $04 $01 $00 $00 $00 $00
	.db $00 $00 $06 $07 $00 $F9 $00 $00 $09 $00 $00 $F7 $03 $03 $06 $01
	.db $04 $FD $FB $00
	
; Data from 1C25 to 1C2C (8 bytes)	
_DATA_1C25_:	
	.db $00 $02 $00 $04 $00 $06 $00 $08
	
_LABEL_1C2D_:	
		ld d, $00
		ld l, d
		ld b, $08
-:	
		add hl, hl
		jr nc, +
		add hl, de
+:	
		djnz -
		ret
	
	; Data from 1C39 to 1C61 (41 bytes)
	.db $06 $10 $AF $29 $17 $BB $38 $03 $93 $CB $C5 $10 $F6 $C9 $3E $10
	.db $CB $23 $CB $12 $ED $6A $38 $09 $ED $42 $30 $08 $09 $3D $20 $F0
	.db $C9 $B7 $ED $42 $1C $3D $20 $E8 $C9
	
_LABEL_1C62_:	
		di
		push bc
		push de
		push hl
		ld a, (ix+1)
		add a, c
		and $F8
		rrca
		rrca
		rrca
		ld e, a
		ld d, $00
		ld a, (ix+0)
		add a, b
		and $F8
		ld l, a
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, de
		ld de, $3800
		add hl, de
		ld a, $3B
		cp h
		jp z, +
		call _LABEL_D5_
		jr ++
	
+:	
		ld a, $20
++:	
		pop hl
		pop de
		pop bc
		ret
	
_LABEL_1C93_:	
		di
-:	
		push bc
		ld a, (_RAM_C0E0_)
		or a
		jr z, +
		ld b, $00
		call _LABEL_138_
		jr ++
	
+:	
		ld b, $00
		call _LABEL_106_
		ex de, hl
		add hl, bc
		ex de, hl
++:	
		push de
		ld de, $0020
		add hl, de
		pop de
		pop bc
		ld a, h
		cp $3B
		ret z
		djnz -
		ret
	
_LABEL_1CB8_:	
		di
--:	
		push bc
		push hl
		ld b, c
-:	
		call _LABEL_D5_
		cp $04
		jr c, +
		push hl
		push bc
		ld hl, $0B2C
		ld bc, $0008
		cpir
		pop bc
		pop hl
		jr nz, +
		ld a, (de)
		call _LABEL_DD_
+:	
		inc hl
		inc de
		djnz -
		pop hl
		push de
		ld de, $0020
		add hl, de
		pop de
		pop bc
		djnz --
		ret
	
_LABEL_1CE4_:	
		push hl
		ld a, (_RAM_C0E8_)
		dec a
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_480C_
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		pop hl
_LABEL_1CF5_:	
		di
		push bc
		push hl
		ld b, $10
_LABEL_1CFA_:	
		push bc
		ld a, (de)
		and $F0
		jr z, ++
		cp $C0
		jr nc, ++
		ld b, a
		cp $10
		jr nz, +
		call _LABEL_D5_
		cp $0A
		jr c, ++
+:	
		ld a, b
		rrca
		rrca
		rrca
		rrca
		call _LABEL_1D59_
		call _LABEL_DD_
++:	
		inc hl
		ld a, l
		and $1F
		jr nz, +
		ld bc, $FFE0
		add hl, bc
+:	
		ld a, (de)
		and $0F
		jr z, ++
		cp $0C
		jr nc, ++
		ld b, a
		cp $01
		jr nz, +
		call _LABEL_D5_
		cp $0A
		jr c, ++
+:	
		ld a, b
		call _LABEL_1D59_
		call _LABEL_DD_
++:	
		inc hl
		ld a, l
		and $1F
		jr nz, +
		ld bc, $FFE0
		add hl, bc
+:	
		inc de
		pop bc
		djnz _LABEL_1CFA_
		ei
		pop hl
		ld bc, $0020
		add hl, bc
		pop bc
		djnz _LABEL_1CF5_
		ret
	
_LABEL_1D59_:	
		add a, $60
		cp $63
		ret c
		sub $63
		ld c, a
		ld a, (_RAM_C10E_)
		ld b, a
		push de
		push hl
		rlca
		rlca
		rlca
		add a, b
		ld e, a
		ld d, $00
		ld b, $00
		ld hl, _DATA_1D9B_
		add hl, de
		add hl, bc
		ld a, (hl)
		pop hl
		pop de
		ret
	
_LABEL_1D79_:	
		ld hl, $3840
		ld bc, $0280
		call _LABEL_E5_
		ld hl, $3800
		ld de, _DATA_4777_
		ld bc, $0040
		call _LABEL_106_
		ld hl, $3AC0
		ld de, _DATA_4777_
		ld bc, $0040
		call _LABEL_106_
		ret
	
; Data from 1D9B to 1DE2 (72 bytes)	
_DATA_1D9B_:	
	.db $63 $64 $65 $66 $67 $68 $69 $6A $6B $6C $6D $6E $6F $70 $71 $72
	.db $73 $74 $75 $76 $77 $78 $79 $7A $7B $7C $7D $7E $7F $80 $81 $82
	.db $83 $84 $85 $86 $87 $88 $89 $8A $8B $8C $8D $8E $8F $90 $91 $92
	.db $93 $94 $95 $96 $97 $98 $99 $9A $9B $9C $9D $9E $9F $A0 $A1 $A2
	.db $A3 $A4 $A5 $A6 $A7 $A8 $A9 $AA
	
_LABEL_1DE3_:	
		ld a, (_RAM_C0E1_)
		or a
		ret nz
		xor a
		ld de, _RAM_C0F7_
		ld hl, _RAM_C0F3_
		ld a, (de)
		adc a, (hl)
		daa
		ld (de), a
		inc de
		inc hl
		ld a, (de)
		adc a, (hl)
		daa
		ld (de), a
		jr c, +
		inc hl
		ld a, (hl)
		dec hl
		or a
		jr z, _LABEL_1E0D_
+:	
		inc de
		inc hl
		ld a, (de)
		adc a, (hl)
		daa
		ld (de), a
		inc de
		inc hl
		ld a, (de)
		adc a, (hl)
		daa
		ld (de), a
_LABEL_1E0D_:	
		ld a, $04
		ld (_RAM_C0DF_), a
		ld hl, _RAM_C0F7_
		ld de, $3808
		call _LABEL_1E62_
		call _LABEL_1EBE_
		ret
	
_LABEL_1E1F_:	
		xor a
		ld hl, _RAM_C0FA_
		ld de, _RAM_C0FE_
		ld a, (de)
		sub (hl)
		jr c, ++
		jr z, +
		jr +++
	
+:	
		dec hl
		dec de
		ld a, (de)
		sub (hl)
		jr c, ++
		jr z, +
		jr +++
	
+:	
		dec hl
		dec de
		ld a, (de)
		sub (hl)
		jr c, ++
		jr z, +
		jr +++
	
+:	
		dec hl
		dec de
		ld a, (de)
		sub (hl)
		jr nc, +++
++:	
		ld hl, _RAM_C0F7_
		ld de, _RAM_C0FB_
		ld bc, $0004
		ldir
_LABEL_1E53_:	
		ld a, $04
		ld (_RAM_C0DF_), a
		ld de, $3816
		ld hl, _RAM_C0FB_
		call _LABEL_1E62_
+++:	
		ret
	
_LABEL_1E62_:	
		push de
		push hl
		ld de, _RAM_C0CF_
		ld bc, $0008
		ldir
		pop hl
		call _LABEL_1FDF_
		pop hl
		ld a, (_RAM_C0DF_)
		cp $04
		jr nz, +
		ld de, _RAM_C0DE_
		ld bc, $0807
		jp +++
	
+:	
		cp $02
		jr c, ++
		jr z, +
		ld de, _RAM_C0DC_
		ld bc, $0605
		jp +++
	
+:	
		ld de, _RAM_C0DA_
		ld bc, $0403
		jp +++
	
++:	
		ld de, _RAM_C0D8_
		ld bc, $0201
		jp +++
	
+++:	
		di
		call _LABEL_F6_
-:	
		ld a, c
		or a
		jr z, +
		dec c
		ld a, (de)
		cp $30
		jr nz, +
		ld a, $20
		jr ++
	
+:	
		ld c, $00
		ld a, (de)
++:	
		out (Port_VDPData), a
		dec de
		djnz -
		ei
		ret
	
_LABEL_1EBE_:	
		ld de, _RAM_C0F9_
		ld hl, _RAM_C0ED_
		ld a, (hl)
		rrca
		jr c, +
		ld a, (de)
		cp $08
		ret c
		set 0, (hl)
		jr ++
	
+:	
		rrca
		jr c, +
		ld a, (de)
		cp $16
		ret c
		set 1, (hl)
		jr ++
	
+:	
		rrca
		ret c
		ld a, (de)
		cp $24
		ret nz
		set 2, (hl)
++:	
		ld hl, _RAM_C0EE_
		inc (hl)
		call _LABEL_22BF_
		ld a, $93
		ld (_RAM_C320_), a
		ret
	
; Data from 1EF0 to 1EF3 (4 bytes)	
_DATA_1EF0_:	
	.db $00 $01 $00 $00
	
; Data from 1EF4 to 1F0F (28 bytes)	
_DATA_1EF4_:	
	.db $00 $02 $00 $00 $00 $03 $00 $00 $00 $04 $00 $00 $00 $05 $00 $00
	.db $00 $10 $00 $00 $00 $20 $00 $00 $00 $50 $00 $00
	
_LABEL_1F10_:	
		ld hl, _RAM_C0F1_
		ld a, (hl)
		or a
		jp nz, _LABEL_2364_
		dec hl
		ld a, (hl)
		ld b, $00
		cp $20
		jr c, +
		inc b
		cp $30
		jr c, +
		inc b
		cp $40
		jr c, +
		inc b
		cp $50
		jr c, +
		inc b
+:	
		ld a, b
		rlca
		rlca
		ld e, a
		ld d, $00
		ld hl, _DATA_1FA1_
		add hl, de
		push hl
		ld a, $03
		ld (_RAM_C0DF_), a
		ld de, $38D3
		call _LABEL_1E62_
		pop hl
		ld de, _RAM_C0F3_
		ld bc, $0004
		ldir
		call _LABEL_1DE3_
		ret
	
	; Data from 1F53 to 1FA0 (78 bytes)
	.db $21 $CF $02 $11 $F3 $C0 $01 $04 $00 $ED $B0 $21 $B5 $1F $3A $53
	.db $C1 $B7 $28 $0A $47 $AF $C6 $02 $10 $FC $5F $16 $00 $19 $E5 $3E
	.db $02 $32 $DF $C0 $11 $D2 $38 $CD $62 $1E $E1 $11 $F3 $C0 $01 $02
	.db $00 $ED $B0 $CD $E3 $1D $3A $53 $C1 $FE $14 $D8 $CD $A3 $23 $21
	.db $A5 $1F $11 $F3 $C0 $01 $03 $00 $ED $B0 $CD $E3 $1D $C9
	
; Data from 1FA1 to 1FDE (62 bytes)	
_DATA_1FA1_:	
	.db $00 $00 $02 $00 $00 $00 $01 $00 $00 $50 $00 $00 $00 $30 $00 $00
	.db $00 $10 $00 $00 $00 $00 $50 $02 $00 $05 $50 $07 $00 $10 $50 $12
	.db $00 $15 $50 $17 $00 $20 $50 $22 $00 $25 $50 $27 $00 $30 $50 $32
	.db $00 $35 $50 $37 $00 $40 $50 $42 $00 $45 $50 $47 $00 $50
	
_LABEL_1FDF_:	
		xor a
		ld hl, _RAM_C0CF_
		ld de, _RAM_C0D7_
		ld a, (_RAM_C0DF_)
		ld c, a
		ld b, a
		cp $05
		ret nc
-:	
		ld a, (hl)
		and $0F
		cp $0A
		ret nc
		ld a, (hl)
		and $F0
		cp $A0
		ret nc
		inc hl
		djnz -
		ld hl, $C0CF
		xor a
		ld b, c
-:	
		rrd
		or $30
		ld (de), a
		inc de
		rrd
		or $30
		ld (de), a
		inc de
		inc hl
		djnz -
		ret
	
_LABEL_2012_:	
		ld a, (_RAM_C0EC_)
		and $61
		dec a
		ret nz
		ld hl, _RAM_C0EF_
		inc (hl)
		ld a, $3C
		sub (hl)
		ret nz
		ld (hl), a
		ld hl, _RAM_C0F0_
		ld a, $01
		add a, (hl)
		daa
		ld (hl), a
		sub $60
		ret nz
		ld (hl), a
		inc hl
		ld a, $01
		add a, (hl)
		daa
		ld (hl), a
		sub $60
		ret nz
		ld (hl), a
		inc hl
		ld a, $01
		add a, (hl)
		daa
		ld (hl), a
		sub $24
		ret nz
		ld (hl), a
		ret
	
_LABEL_2043_:	
		ld de, $3877
		ld hl, _RAM_C0F0_
		ld a, $01
		ld (_RAM_C0DF_), a
		call _LABEL_1E62_
		ld de, _DATA_2073_
		ld hl, $3879
		ld bc, $0004
		call _LABEL_106_
		ld de, $3871
		ld hl, _RAM_C0F1_
		call _LABEL_1E62_
		ld de, _DATA_2077_
		ld hl, $3873
		ld bc, $0004
		call _LABEL_106_
		ret
	
; Data from 2073 to 2076 (4 bytes)	
_DATA_2073_:	
	.db $53 $45 $43 $2E
	
; Data from 2077 to 207A (4 bytes)	
_DATA_2077_:	
	.db $4D $49 $4E $2E
	
_LABEL_207B_:	
		di
		call _LABEL_C5_
		call _LABEL_7395_
		ld hl, _RAM_C0EC_
		res 0, (hl)
		call _LABEL_1BF_
		call _LABEL_3E4_
		call _LABEL_20FC_
		call _LABEL_25F2_
		ld a, $60
		call _LABEL_1D79_
		call _LABEL_2773_
		call _LABEL_2448_
		call _LABEL_1E0D_
		call _LABEL_1E53_
		call _LABEL_22BF_
		call _LABEL_22D7_
		call _LABEL_212A_
		call _LABEL_2263_
		call _LABEL_2137_
		call _LABEL_173_
		ld iy, _RAM_C11C_
		ld de, $0004
		set 7, (iy+0)
		add iy, de
		set 7, (iy+0)
		call _LABEL_BC_
		ei
		xor a
		ld (_RAM_C102_), a
		ld hl, _RAM_C0EC_
		bit 4, (hl)
		jr nz, +
		ld b, $04
		call _LABEL_1B3_
		ld b, $02
-:	
		push bc
		call _LABEL_23BC_
		ld b, $04
		call _LABEL_1B3_
		call _LABEL_23E3_
		call _LABEL_2773_
		ld b, $04
		call _LABEL_1B3_
		pop bc
		djnz -
		call _LABEL_2773_
		ret
	
+:	
		call _LABEL_2318_
		ret
	
_LABEL_20FC_:	
		ld a, $81
		ld (_RAM_C320_), a
		ld a, (_RAM_C0EA_)
		ld h, a
		ld e, $04
		call _LABEL_1C2D_
		ld a, l
		add a, $03
		ld b, a
		ld a, (_RAM_C0E7_)
		cp b
		ret nz
		ld hl, _RAM_C0EA_
		inc (hl)
		ld hl, _RAM_C0EC_
		set 4, (hl)
		ld a, $82
		ld (_RAM_C320_), a
		ld a, $7F
		ld (_RAM_C115_), a
		call _LABEL_1AB5_
		ret
	
_LABEL_212A_:	
		ld hl, $1800
		ld de, _DATA_28AD_
		ld bc, $07C0
		call _LABEL_106_
		ret
	
_LABEL_2137_:	
		ld hl, _RAM_C0EC_
		bit 4, (hl)
		jr z, +
		ld hl, _RAM_C1A2_
		ld (hl), $78
		ret
	
+:	
		ld hl, _RAM_C1B1_
		ld de, _DATA_22A7_
		ld b, $08
-:	
		ld a, (de)
		ld (hl), a
		inc hl
		inc de
		djnz -
		xor a
		ld (_RAM_C19A_), a
		ld a, (_RAM_C0E8_)
		dec a
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_480C_
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		push de
		pop iy
		ld de, $0800
		ld hl, _RAM_C103_
		ld ix, _RAM_C1B9_
		ld bc, $1410
---:	
		push bc
		ld b, c
--:	
		push bc
		ld a, (iy+0)
		ld (hl), a
		ld b, $02
-:	
		xor a
		rld
		push af
		cp $0D
		call z, _LABEL_21D0_
		pop af
		push af
		cp $0E
		call z, _LABEL_21FF_
		pop af
		cp $0F
		call z, _LABEL_2225_
		ld a, $08
		add a, e
		ld e, a
		djnz -
		inc iy
		pop bc
		djnz --
		ld a, $08
		add a, d
		ld d, a
		pop bc
		djnz ---
		ld hl, _RAM_C0EC_
		bit 5, (hl)
		ret z
		ld hl, _RAM_C0E3_
		ld b, (hl)
		inc hl
		ld a, (hl)
		and $1F
		rlca
		rlca
		rlca
		sub b
		neg
		ld ix, _RAM_C1B9_
		ld de, $0004
		ld b, $08
-:	
		ld c, a
		add a, (ix+1)
		ld (ix+1), a
		add ix, de
		ld a, c
		djnz -
		ret
	
_LABEL_21D0_:	
		push ix
		push de
		ld ix, $C1D9
		ld a, (_RAM_C19A_)
		rlca
		rlca
		ld e, a
		ld d, $00
		add ix, de
		pop de
		ld a, $08
		add a, d
		ld (ix+0), a
		ld (ix+1), e
		ld (ix+2), $F4
		ld a, (_RAM_C19B_)
		ld (ix+3), a
		ld ix, _RAM_C19A_
		inc (ix+0)
		pop ix
		ret
	
_LABEL_21FF_:	
		ld a, (_RAM_C0EC_)
		bit 5, a
		ret nz
		ld (ix+0), d
		ld (ix+1), e
		ld (ix+2), $18
		ld (ix+3), $0B
		ld a, r
		bit 6, a
		jr nz, +
		ld (ix+3), $01
+:	
		push de
		ld de, $0004
		add ix, de
		pop de
		ret
	
_LABEL_2225_:	
		push ix
		push hl
		push bc
		push de
		ld a, d
		dec a
		ld (_RAM_C115_), a
		add a, $0F
		ld hl, _DATA_22AF_
		ld de, _RAM_C1A1_
		ld bc, $0010
		ldir
		ld hl, _RAM_C1A1_
		ld de, $0004
		ld b, $04
-:	
		ld (hl), a
		add hl, de
		djnz -
		pop de
		push de
		ld ix, _RAM_C1A1_
		ld (ix+1), e
		ld (ix+9), e
		ld a, $10
		add a, e
		ld (ix+5), a
		ld (ix+13), a
		pop de
		pop bc
		pop hl
		pop ix
		ret
	
_LABEL_2263_:	
		ld a, (_RAM_C0EC_)
		bit 4, a
		ret nz
		ld hl, _DATA_304D_
		ld de, _RAM_C182_
		ld bc, $0018
		ldir
		xor a
		ld (_RAM_C19C_), a
		ld hl, _RAM_C0E8_
		ld a, (hl)
		dec a
		inc hl
		sub (hl)
-:	
		cp $10
		jr c, +
		rrca
		and $7F
		jr -
	
+:	
		ld e, a
		ld d, $00
		ld hl, _DATA_30ED_
		add hl, de
		ld a, (hl)
		ld (_RAM_C19B_), a
		ld a, e
		rlca
		rlca
		rlca
		ld e, a
		ld hl, _DATA_306D_
		add hl, de
		ex de, hl
		ld hl, $1FA0
		ld bc, $0008
		call _LABEL_106_
		ret
	
; Data from 22A7 to 22AE (8 bytes)	
_DATA_22A7_:	
	.db $00 $00 $00 $00 $00 $00 $00 $00
	
; Data from 22AF to 22BE (16 bytes)	
_DATA_22AF_:	
	.db $00 $00 $30 $04 $00 $00 $34 $04 $00 $00 $38 $0F $00 $00 $3C $0F
	
_LABEL_22BF_:	
		ld a, (_RAM_C0EE_)
		ld h, a
		ld e, $05
		call _LABEL_1C2D_
		ld de, _DATA_24BD_
		add hl, de
		ex de, hl
		ld hl, $3AE3
		ld bc, $0005
		call _LABEL_106_
		ret
	
_LABEL_22D7_:	
		ld a, (_RAM_C0E1_)
		or a
		ret nz
		ld a, (_RAM_C0E7_)
		ld d, a
		and $F0
		jr z, +
		ld b, a
		xor a
-:	
		add a, $01
		daa
		djnz -
+:	
		ld e, a
		xor a
		ld a, d
		and $0F
		ld d, a
		xor a
		ld a, d
		daa
		ld d, a
		xor a
		ld a, d
		add a, e
		daa
		push af
		and $F0
		rrca
		rrca
		rrca
		rrca
		or $30
		cp $30
		jr nz, +
		ld a, $03
+:	
		ld hl, $3AFD
		call _LABEL_DD_
		inc hl
		pop af
		and $0F
		or $30
		call _LABEL_DD_
		ret
	
_LABEL_2318_:	
		ld de, _DATA_24DB_
		ld hl, $384A
		ld bc, $000B
		call _LABEL_106_
		ret
	
	; Data from 2325 to 233E (26 bytes)
	.db $11 $E6 $24 $21 $03 $38 $01 $05 $00 $CD $06 $01 $C9 $11 $EB $24
	.db $21 $0D $38 $01 $03 $00 $CD $06 $01 $C9
	
_LABEL_233F_:	
		ld de, _DATA_24EE_
		ld hl, $3865
		ld bc, $0009
		call _LABEL_106_
		ld de, _DATA_24F7_
		ld hl, $38C5
		ld bc, $000A
		call _LABEL_106_
		ld de, _DATA_2501_
		ld hl, $38D9
		ld bc, $0004
		call _LABEL_106_
		ret
	
_LABEL_2364_:	
		ld de, _DATA_2505_
		ld hl, $38D5
		ld bc, $0008
		call _LABEL_106_
		ret
	
	; Data from 2371 to 23BB (75 bytes)
	.db $3A $53 $C1 $06 $00 $FE $10 $38 $02 $06 $06 $80 $27 $47 $0F $0F
	.db $0F $0F $21 $C4 $38 $E6 $0F $28 $05 $F6 $30 $CD $DD $00 $23 $78
	.db $E6 $0F $F6 $30 $CD $DD $00 $23 $11 $0D $25 $01 $16 $00 $CD $06
	.db $01 $C9 $11 $23 $25 $21 $2A $39 $01 $0D $00 $CD $06 $01 $11 $30
	.db $25 $21 $6C $39 $01 $0A $00 $CD $06 $01 $C9
	
_LABEL_23BC_:	
		ld a, (_RAM_C0E1_)
		or a
		ret nz
		ld de, _DATA_253A_
		ld hl, $392B
		ld bc, $000A
		call _LABEL_106_
		ei
		ret
	
	; Data from 23CF to 23E2 (20 bytes)
	.db $C5 $D5 $E5 $01 $01 $00 $CD $06 $01 $FB $76 $76 $E1 $23 $D1 $13
	.db $C1 $10 $ED $C9
	
_LABEL_23E3_:	
		ld hl, $3929
		ld a, $60
		ld bc, $000E
		call _LABEL_E5_
		ei
		ret
	
_LABEL_23F0_:	
		ld hl, $392B
		ld de, _DATA_2544_
		ld bc, $0009
		call _LABEL_106_
		ei
		ret
	
_LABEL_23FE_:	
		ld bc, $0D87
		call _LABEL_CE_
		ld a, $20
		call _LABEL_1D79_
		ld hl, $38C8
		ld de, _DATA_47B7_
		ld bc, $0511
		call _LABEL_1C93_
		ld hl, $3AF5
		ld de, _DATA_2477_
		ld bc, $000A
		call _LABEL_106_
-:	
		ld hl, $39E8
		ld de, _DATA_2466_
		ld bc, $0011
		call _LABEL_106_
		ld hl, _RAM_C0E1_
		set 2, (hl)
		ret
	
_LABEL_2433_:	
		ld hl, _RAM_C0E1_
		bit 2, (hl)
		jr z, -
		res 2, (hl)
		ld hl, $39E8
		ld a, $20
		ld bc, $0011
		call _LABEL_E5_
		ret
	
_LABEL_2448_:	
		ld hl, _DATA_2481_
		ld de, _DATA_2485_
		ld b, $02
-:	
		push bc
		ld c, (hl)
		inc hl
		ld b, (hl)
		inc hl
		push hl
		push bc
		pop hl
		ld bc, $001A
		call _LABEL_106_
		ex de, hl
		add hl, bc
		ex de, hl
		pop hl
		pop bc
		djnz -
		ret
	
; Data from 2466 to 2476 (17 bytes)	
_DATA_2466_:	
	.db $50 $55 $53 $48 $20 $53 $54 $41 $52 $54 $20 $42 $55 $54 $54 $4F
	.db $4E
	
; Data from 2477 to 2480 (10 bytes)	
_DATA_2477_:	
	.db $5B $20 $5C $5D $5E $5F $31 $39 $38 $34
	
; Data from 2481 to 2484 (4 bytes)	
_DATA_2481_:	
	.db $03 $38 $E3 $3A
	
; Data from 2485 to 24BC (56 bytes)	
_DATA_2485_:	
	.db $53 $43 $4F $52 $45 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
	.db $54 $4F $50 $00 $01 $00 $01 $00 $01 $00 $03 $02 $03 $02 $03 $02
	.db $03 $02 $03 $02 $03 $02 $03 $02 $03 $02 $03 $02 $03 $02 $03 $02
	.db $03 $52 $44 $2E $16 $16 $16 $16
	
; Data from 24BD to 24DA (30 bytes)	
_DATA_24BD_:	
	.db $03 $02 $03 $02 $03 $0A $02 $03 $02 $03 $0A $0A $03 $02 $03 $0A
	.db $0A $0A $02 $03 $0A $0A $0A $0A $03 $0A $0A $0A $0A $0A
	
; Data from 24DB to 24ED (19 bytes)	
_DATA_24DB_:	
	.db $42 $4F $4E $55 $53 $20 $52 $4F $55 $4E $44 $53 $43 $4F $52 $45
	.db $54 $4F $50
	
; Data from 24EE to 24F6 (9 bytes)	
_DATA_24EE_:	
	.db $47 $41 $4D $45 $20 $54 $49 $4D $45
	
; Data from 24F7 to 2500 (10 bytes)	
_DATA_24F7_:	
	.db $54 $49 $4D $45 $20 $42 $4F $4E $55 $53
	
; Data from 2501 to 2504 (4 bytes)	
_DATA_2501_:	
	.db $50 $54 $53 $2E
	
; Data from 2505 to 2539 (53 bytes)	
_DATA_2505_:	
	.db $4E $4F $20 $42 $4F $4E $55 $53 $20 $58 $20 $32 $35 $30 $20 $50
	.db $54 $53 $2E $3D $20 $20 $20 $20 $20 $20 $50 $54 $53 $2E $50 $45
	.db $52 $46 $45 $43 $54 $20 $42 $4F $4E $55 $53 $31 $30 $30 $30 $30
	.db $20 $50 $54 $53 $2E
	
; Data from 253A to 2543 (10 bytes)	
_DATA_253A_:	
	.db $47 $41 $4D $45 $20 $53 $54 $41 $52 $54
	
; Data from 2544 to 254C (9 bytes)	
_DATA_2544_:	
	.db $47 $41 $4D $45 $20 $4F $56 $45 $52
	
_LABEL_254D_:	
		ld de, _DATA_3BF7_
		ld bc, $01D8
		ld hl, $0300
		call _LABEL_106_
		ld hl, $0B00
		call _LABEL_106_
		ld a, $D0
		ld hl, $2300
		call _LABEL_E5_
		ld hl, $2B00
		call _LABEL_E5_
		ld de, _DATA_30FD_
		ld bc, $0300
		ld hl, $0000
		call _LABEL_106_
		ld hl, $0800
		call _LABEL_106_
		ld hl, $1000
		call _LABEL_106_
		ld hl, $0000
		ld de, _DATA_3DCF_
		ld bc, $0020
		call _LABEL_106_
		ld hl, $1000
		ld de, _DATA_3DEF_
		ld bc, $0020
		call _LABEL_106_
		ld a, (_DATA_39B5_)
		ld bc, $0300
		ld hl, $2000
		call _LABEL_E5_
		ld hl, $2800
		call _LABEL_E5_
		ld hl, $3000
		call _LABEL_E5_
		ld de, _DATA_39B5_ + 2
		ld a, (_RAM_C0EA_)
		ld hl, _RAM_C0EC_
		bit 4, (hl)
		jr z, +
		dec a
+:	
		rrca
		rrca
		jr c, +
		ld de, _DATA_39F7_
+:	
		ld bc, $0020
		ld hl, $2000
		call _LABEL_106_
		ld de, _DATA_39D7_
		ld a, (_RAM_C0EA_)
		ld hl, _RAM_C0EC_
		bit 4, (hl)
		jr z, +
		dec a
+:	
		rrca
		rrca
		jr c, +
		ld de, _DATA_3A17_
+:	
		ld bc, $0060
		ld hl, $3000
		call _LABEL_106_
		ret
	
_LABEL_25F2_:	
		ld hl, $0000
		ld de, _DATA_30FD_
		ld bc, $0678
		call _LABEL_106_
		ld hl, $0800
		call _LABEL_106_
		ld hl, $1000
		call _LABEL_106_
		ld hl, $0000
		ld de, _DATA_3DCF_
		ld bc, $0020
		call _LABEL_106_
		ld hl, $1000
		ld de, _DATA_3DEF_
		ld bc, $0020
		call _LABEL_106_
		ld a, (_RAM_C0E9_)
		and $03
		ld e, a
		ld d, $00
		ld hl, _DATA_279D_
		add hl, de
		ld a, (hl)
		ld (_RAM_C0EB_), a
		ld a, (_RAM_C0EA_)
		and $03
		ld hl, _RAM_C0EC_
		bit 4, (hl)
		jr z, +
		dec a
		and $03
+:	
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_27A1_
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ex de, hl
		ld (_RAM_C0E5_), hl
		ld de, _DATA_39B5_ + 2
		ld a, (_RAM_C0EA_)
		ld hl, _RAM_C0EC_
		bit 4, (hl)
		jr z, +
		dec a
+:	
		rrca
		rrca
		jr c, +
		ld de, _DATA_39F7_
+:	
		ld bc, $0020
		ld hl, $2000
		call _LABEL_106_
		ld de, _DATA_39D7_
		ld a, (_RAM_C0EA_)
		ld hl, _RAM_C0EC_
		bit 4, (hl)
		jr z, +
		dec a
+:	
		rrca
		rrca
		jr c, +
		ld de, _DATA_3A17_
+:	
		ld bc, $0060
		ld hl, $3000
		call _LABEL_106_
		ld hl, $2020
		ld de, _DATA_3A37_
		ld bc, $0040
		call _LABEL_118_
		ld hl, $2820
		call _LABEL_118_
		ld hl, $3020
		call _LABEL_118_
		ld hl, (_RAM_C0E5_)
		ex de, hl
		ld hl, $2300
		ld bc, $0060
		call _LABEL_118_
		ld hl, $2B00
		call _LABEL_118_
		ld hl, $3300
		call _LABEL_118_
		ld hl, $2360
		ld b, $07
-:	
		push bc
		push hl
		ld hl, (_RAM_C0E5_)
		ld de, $0018
		add hl, de
		ex de, hl
		pop hl
		ld bc, $0048
		call _LABEL_118_
		push de
		ld de, $0800
		add hl, de
		pop de
		call _LABEL_118_
		push de
		ld de, $0800
		add hl, de
		pop de
		call _LABEL_118_
		ld de, $F048
		add hl, de
		pop bc
		djnz -
		ld hl, $2100
		ld bc, $0200
		ld a, (_DATA_39B5_)
		call _LABEL_E5_
		ld hl, $2900
		call _LABEL_E5_
		ld hl, $3100
		call _LABEL_E5_
		ld hl, $3558
		ld bc, $0120
		ld a, (_DATA_39B5_ + 1)
		call _LABEL_E5_
		ld hl, $3558
		ld bc, $0020
		ld a, $F0
		call _LABEL_E5_
		ld de, $0050
		add hl, de
		ld bc, $0010
		call _LABEL_E5_
		ld hl, $35E8
		ld bc, $0010
		call _LABEL_E5_
		ld de, $0040
		add hl, de
		call _LABEL_E5_
		add hl, de
		call _LABEL_E5_
		ld hl, $3050
		ld de, _DATA_3A67_
		ld bc, $0008
		call _LABEL_106_
		ld hl, $2058
		ld de, _DATA_3A6F_
		ld bc, $0008
		call _LABEL_106_
		ld bc, $0087
		call _LABEL_CE_
		ld a, (_RAM_C0EC_)
		bit 4, a
		ret z
		ld hl, $2300
		ld bc, $0010
		xor a
		call _LABEL_E5_
		ld de, $0800
		add hl, de
		call _LABEL_E5_
		add hl, de
		call _LABEL_E5_
		ret
	
_LABEL_2773_:	
		ld hl, $3840
		ld de, $480C
		ld b, $14
		call _LABEL_1CE4_
		ld hl, _RAM_C0EC_
		bit 4, (hl)
		ret z
		ld hl, $3A64
		ld de, _DATA_27A9_
		ld bc, $0308
		call _LABEL_1C93_
		ld hl, $3A74
		ld de, _DATA_27C1_
		ld bc, $0308
		call _LABEL_1C93_
		ret
	
; Data from 279D to 27A0 (4 bytes)	
_DATA_279D_:	
	.db $0C $04 $0D $00
	
; Pointer Table from 27A1 to 27A8 (4 entries, indexed by _RAM_C0EA_)	
_DATA_27A1_:	
	.dw _DATA_3B97_ _DATA_3A77_ _DATA_3AD7_ _DATA_3B37_
	
; Data from 27A9 to 27C0 (24 bytes)	
_DATA_27A9_:	
	.db $20 $20 $20 $20 $20 $20 $BD $BE $BF $C0 $C1 $C2 $C3 $C4 $C5 $C6
	.db $C7 $C8 $C9 $CA $CB $CC $CD $CE
	
; Data from 27C1 to 27D8 (24 bytes)	
_DATA_27C1_:	
	.db $AB $AC $20 $20 $20 $20 $20 $20 $AD $AE $AF $B0 $B1 $B2 $B3 $B4
	.db $B5 $B6 $B7 $B8 $B9 $BA $BB $BC
	
_LABEL_27D9_:	
		xor a
		ld (_RAM_C100_), a
		call +
		cpl
		ld (_RAM_C101_), a
		ret
	
+:	
		ld a, (_RAM_C0CB_)
		and a
		jr z, ++
		in a, (Port_IOPort1)
		ld c, a
		rl c
		rl c
		rr c
		rr c
		ld a, c
		or $C0
		ld c, a
		in a, (Port_IOPort1)
		bit 4, a
		jr nz, +
		res 6, c
+:	
		bit 5, a
		jr nz, +
		res 6, c
+:	
		ld a, c
		ret
	
++:	
		ld a, $07
		out (_PORT_DE_), a
		in a, (Port_IOPort1)
		or $C0
		ld c, a
		ld a, $07
		out (_PORT_DE_), a
		in a, (Port_IOPort1)
		bit 4, a
		jr nz, +
		res 6, c
+:	
		bit 5, a
		jr nz, +
		res 6, c
+:	
		ld a, c
		ld a, $02
		out (_PORT_DE_), a
		in a, (Port_IOPort1)
		bit 4, a
		jr nz, +
		res 4, c
+:	
		ld a, $03
		out (_PORT_DE_), a
		in a, (Port_IOPort1)
		bit 4, a
		jr nz, +
		res 5, c
+:	
		ld a, $04
		out (_PORT_DE_), a
		in a, (Port_IOPort1)
		bit 5, a
		jr nz, +
		res 1, c
+:	
		ld a, $05
		out (_PORT_DE_), a
		in a, (Port_IOPort1)
		bit 5, a
		jr nz, +
		res 2, c
+:	
		ld a, $06
		out (_PORT_DE_), a
		in a, (Port_IOPort1)
		bit 5, a
		jr nz, +
		res 3, c
+:	
		bit 6, a
		jr nz, +
		res 0, c
+:	
		ld a, $02
		out (_PORT_DE_), a
		in a, (Port_IOPort1)
		bit 4, a
		jr nz, +
		res 6, c
+:	
		ld a, $03
		out (_PORT_DE_), a
		in a, (Port_IOPort1)
		bit 4, a
		jr nz, +
		res 6, c
+:	
		ld a, $06
		ld a, c
		ret
	
_LABEL_2884_:	
		ld a, $92
		out (_PORT_DF_), a
		ld a, $55
		out (_PORT_DE_), a
		in a, (_PORT_DE_)
		cp $55
		ld c, $00
		jr z, +
		ld c, $FF
+:	
		ld a, $AA
		out (_PORT_DE_), a
		in a, (_PORT_DE_)
		cp $AA
		ld a, $00
		jr z, +
		ld a, $FF
+:	
		or c
		ld (_RAM_C0CB_), a
		ld a, $07
		out (_PORT_DE_), a
		ret
	
; Data from 28AD to 304C (1952 bytes)	
_DATA_28AD_:	
	.db $00 $02 $05 $09 $1D $1F $36 $2F $2C $7F $7E $1F $01 $00 $01 $02
	.db $00 $00 $00 $00 $00 $80 $00 $C0 $00 $C0 $02 $84 $FC $F8 $9C $02
	.db $00 $00 $02 $05 $04 $0E $0F $1B $17 $16 $3F $3F $0F $00 $00 $00
	.db $00 $00 $00 $00 $80 $80 $C0 $00 $E0 $00 $C1 $3A $FE $6C $38 $10
	.db $04 $0A $12 $3A $3F $6C $5F $58 $FF $FC $3F $01 $07 $08 $00 $00
	.db $00 $00 $00 $00 $00 $00 $80 $00 $80 $04 $08 $F8 $F8 $1C $02 $00
	.db $00 $00 $00 $00 $00 $01 $00 $03 $00 $03 $40 $21 $3F $1F $39 $40
	.db $00 $40 $A0 $90 $B8 $F8 $6C $F4 $34 $FE $7E $F8 $80 $00 $80 $40
	.db $00 $00 $00 $00 $01 $01 $03 $00 $07 $00 $83 $5C $7F $36 $1C $08
	.db $00 $00 $40 $A0 $20 $70 $F0 $D8 $E8 $68 $FC $FC $F0
	.dsb 9, $00
	.db $01 $00 $01 $20 $10 $1F $1F $38 $40 $00 $20 $50 $48 $5C $FC $36
	.db $FA $1A $FF $3F $FC $80 $E0 $10
	.dsb 10, $00
	.db $38 $7C $54 $6C $38 $FE $7C $10
	.dsb 24, $00
	.db $38 $7C $54 $7C $38 $7C $38 $10
	.dsb 23, $00
	.db $1C $3E $2E $7C $19 $3F $3E $1C $36
	.dsb 22, $00
	.db $1C $3E $2E $7E $0D $1F $3F $1E $0C $0C
	.dsb 23, $00
	.db $38 $7C $74 $3E $98 $FC $7C $38 $6C
	.dsb 22, $00
	.db $38 $7C $74 $7E $B0 $F8 $FC $78 $30 $30
	.dsb 16, $00
	.db $3F $71 $F7 $F3 $77 $3F
	.dsb 10, $00
	.db $FF $74 $75 $75 $14 $FF
	.dsb 10, $00
	.db $FF $5A $D7 $C7 $5B $FF
	.dsb 10, $00
	.db $F0 $B8 $7C $7C $78 $F0
	.dsb 10, $00
	.db $1F $1F $1F $1F $1F $1F
	.dsb 10, $00
	.db $FF $FF $FF $FF $FF $FF
	.dsb 10, $00
	.db $FF $FF $FF $FF $FF $FF
	.dsb 10, $00
	.db $E0 $E0 $E0 $E0 $E0 $E0
	.dsb 16, $00
	.db $17 $15 $15 $17
	.dsb 12, $00
	.db $70 $50 $50 $70
	.dsb 12, $00
	.db $3B $2A $12 $3B
	.dsb 12, $00
	.db $B8 $A8 $A8 $B8
	.dsb 11, $00
	.db $38 $0B $3A $0A $3B
	.dsb 12, $00
	.db $B8 $A8 $A8 $B8
	.dsb 11, $00
	.db $28 $2B $3A $0A $0B
	.dsb 12, $00
	.db $B8 $A8 $A8 $B8
	.dsb 11, $00
	.db $38 $23 $3A $0A $3B
	.dsb 12, $00
	.db $B8 $A8 $A8 $B8
	.dsb 11, $00
	.db $5D $55 $55 $55 $5D
	.dsb 11, $00
	.db $DC $54 $54 $54 $DC
	.dsb 11, $00
	.db $EE $AA $4A $8A $EE
	.dsb 11, $00
	.db $EE $AA $AA $AA $EE
	.dsb 11, $00
	.db $F7 $85 $F5 $15 $F7
	.dsb 11, $00
	.db $77 $55 $55 $55 $77
	.dsb 10, $00
	.db $01 $01 $01 $01 $00 $00 $00 $01 $00 $00 $00 $00 $00 $7C $FE $FE
	.db $BB $11 $55 $11 $BA $14 $EE $FF
	.dsb 32, $00
	.db $7C $38 $C6 $00 $00 $00 $00 $00 $00 $01 $01 $01 $01
	.dsb 9, $00
	.db $7C $FE $FE $BB $11 $55 $11 $BA $14 $6C $7C
	.dsb 32, $00
	.db $7C $38 $6C $00 $0F $1F $1F $33 $21 $29 $21 $33 $7F $00 $0F $03
	.db $00 $00 $00 $40 $80 $C0 $C0 $E0 $E0 $E0 $C0 $C0 $80 $80 $E0 $F8
	.dsb 16, $00
	.db $01 $00 $03
	.dsb 13, $00
	.db $F0 $80 $C0 $1F $3F $3F $67 $43 $53 $43 $67 $FF $01 $1F $07 $00
	.db $00 $00 $00 $00 $C0 $80 $C0 $C0 $C0 $80 $80 $00 $00 $C0 $F0
	.dsb 16, $00
	.db $17 $0C $08
	.dsb 13, $00
	.db $E0 $C0 $40 $00 $00 $00 $03 $07 $07 $0C $08 $0A $08 $0C $1F $00
	.db $00 $00 $00 $00 $00 $10 $E0 $F0 $F0 $F8 $78 $78 $72 $F6 $EE $3E
	.db $7C $7E
	.dsb 32, $00
	.db $3C $03 $00 $03 $07 $07 $0C $08 $0A $08 $0C $1F $00 $00 $00 $00
	.db $00 $00 $10 $E0 $F0 $F0 $F8 $78 $78 $70 $F0 $E0 $20 $78 $7E $20
	.db $20
	.dsb 30, $00
	.db $1C $06 $00 $00 $00 $07 $0F $0F $19 $10 $12 $14 $39 $0F $1F $01
	.db $00 $00 $00 $00 $20 $C0 $E0 $E0 $F0 $F0 $F0 $F0 $E0 $80 $E0 $F0
	.dsb 16, $00
	.db $04 $03 $01
	.dsb 13, $00
	.db $E0 $80 $00 $00 $3E $7F $7F $DD $88 $AA $88 $5D $28 $77 $FF $00
	.db $00 $00 $00 $00 $00 $00 $00 $80 $80 $80 $80 $00 $00 $00 $80
	.dsb 16, $00
	.db $3E $1C $63
	.dsb 19, $00
	.db $3E $7F $7F $DD $88 $AA $88 $5D $28 $36 $3E $00 $00 $00 $00 $00
	.db $00 $00 $00 $80 $80 $80 $80
	.dsb 20, $00
	.db $3E $1C $36
	.dsb 16, $00
	.db $02 $01 $03 $03 $07 $07 $07 $03 $03 $01 $01 $07 $1F $00 $00 $00
	.db $00 $F0 $F8 $F8 $CC $84 $94 $84 $CC $FE $00 $F0 $C0
	.dsb 16, $00
	.db $0F $01 $03
	.dsb 13, $00
	.db $80 $00 $C0 $00 $03 $01 $03 $03 $03 $01 $01 $00 $00 $03 $0F $00
	.db $00 $00 $00 $F8 $FC $FC $E6 $C2 $CA $C2 $E6 $FF $80 $F8 $E0
	.dsb 16, $00
	.db $07 $03 $02
	.dsb 13, $00
	.db $E8 $30 $10 $00 $00 $08 $07 $0F $0F $1F $1E $1E $4E $6F $77 $7C
	.db $3E $7E $00 $00 $00 $00 $C0 $E0 $E0 $30 $10 $50 $10 $30 $F8
	.dsb 19, $00
	.db $3C $C0
	.dsb 16, $00
	.db $08 $07 $0F $0F $1F $1E $1E $0E $0F $07 $04 $1E $7E $04 $04 $00
	.db $00 $C0 $E0 $E0 $30 $10 $50 $10 $30 $F8
	.dsb 19, $00
	.db $38 $60
	.dsb 18, $00
	.db $04 $03 $07 $07 $0F $0F $0F $0F $07 $01 $07 $0F $00 $00 $00 $00
	.db $00 $E0 $F0 $F0 $98 $08 $48 $28 $9C $F0 $F8 $80
	.dsb 16, $00
	.db $07 $01
	.dsb 14, $00
	.db $20 $C0 $80
	.dsb 10, $00
	.db $7F $55 $2A $55 $2A
	.dsb 11, $00
	.db $F0
	.dsb 16, $00
	.db $FF $AA $54 $AA $54
	.dsb 11, $00
	.db $E0
	.dsb 15, $00
	.db $FF $AA $55 $2A $15
	.dsb 11, $00
	.db $E0 $00 $00 $80
	.dsb 11, $00
	.db $FF $AA $55 $2A $15
	.dsb 11, $00
	.db $E0 $00 $00 $80
	.dsb 12, $00
	.db $0F
	.dsb 15, $00
	.db $FE $AA $54 $AA $54
	.dsb 12, $00
	.db $07
	.dsb 15, $00
	.db $FF $55 $2A $55 $2A
	.dsb 11, $00
	.db $07 $00 $00 $01
	.dsb 12, $00
	.db $FF $55 $AA $54 $A8
	.dsb 10, $00
	.db $07 $00 $00 $01
	.dsb 12, $00
	.db $FF $55 $AA $54 $A8 $00 $00 $00 $7C $FE $FE $7C $38 $10
	.dsb 24, $00
	
; Data from 304D to 306C (32 bytes)	
_DATA_304D_:	
	.dsb 32, $00
	
; Data from 306D to 30EC (128 bytes)	
_DATA_306D_:	
	.db $10 $7C $7C $10 $10 $10 $10 $00 $78 $78 $7E $7A $7A $7A $7E $00
	.db $10 $38 $00 $38 $38 $38 $38 $00 $00 $00 $00 $FE $FA $FA $7C $00
	.db $38 $7C $7C $7C $7C $7C $10 $10 $00 $00 $02 $FC $1C $16 $07 $00
	.db $7C $7C $7C $7C $7C $00 $FE $00 $3C $60 $7C $60 $7C $60 $3C $00
	.db $10 $38 $06 $BA $BA $FA $7C $00 $00 $00 $00 $3C $22 $7E $FE $00
	.db $7C $44 $7C $7C $7C $10 $38 $00 $00 $00 $7C $54 $7C $54 $7C $00
	.db $7C $54 $7C $54 $7C $54 $7C $00 $00 $1E $1E $1E $1E $7E $76 $00
	.db $00 $04 $3C $00 $3C $3C $3C $00 $08 $18 $18 $38 $38 $38 $08 $08
	
; Data from 30ED to 30FC (16 bytes)	
_DATA_30ED_:	
	.db $09 $0B $0F $0F $0F $01 $0E $0B $0F $07 $06 $0E $0A $06 $0F $0F
	
; Data from 30FD to 3654 (1368 bytes)	
_DATA_30FD_:	
	.dsb 48, $00
	.db $01 $07 $0F $0F $1B $11 $15 $11 $80 $E0 $F0 $F0 $D8 $88 $A8 $88
	.db $0B $07 $01 $03 $07 $03 $01 $01 $D0 $E0 $80 $C0 $E0 $C0 $80 $80
	.db $1C $3E $2E $7C $18 $1E $1C $08 $00 $38 $7C $D6 $FE $BA $44 $38
	.dsb 170, $00
	.db $18 $18 $18 $00 $18 $00 $00 $00 $28 $28 $00 $00 $00 $00 $00 $00
	.db $28 $7C $28 $7C $28 $00 $00 $00 $3C $50 $38 $14 $78 $00 $00 $00
	.db $64 $68 $10 $2C $4C
	.dsb 11, $00
	.db $10 $20 $00 $00 $00 $00 $00 $00 $08 $10 $10 $10 $08 $00 $00 $00
	.db $10 $08 $08 $08 $10 $00 $00 $00 $54 $38 $10 $38 $54 $00 $00 $00
	.db $10 $10 $38 $10 $10
	.dsb 13, $00
	.db $38 $00 $00 $00 $00 $00 $00 $00 $00 $20 $00 $00 $00 $00 $06 $0C
	.db $18 $30 $60 $00 $00 $00 $7E $66 $66 $66 $7E $00 $00 $00 $18 $38
	.db $18 $18 $18 $00 $00 $00 $7E $06 $7E $60 $7E $00 $00 $00 $7E $06
	.db $3E $06 $7E $00 $00 $00 $6C $6C $6C $7E $0C $00 $00 $00 $7E $60
	.db $7E $06 $7E $00 $00 $00 $7E $60 $7E $66 $7E $00 $00 $00 $7E $06
	.db $0C $18 $18 $00 $00 $00 $7E $66 $7E $66 $7E $00 $00 $00 $7E $66
	.db $7E $06 $7E $00 $00 $00 $00 $10 $00 $00 $10
	.dsb 51, $00
	.db $3C $66 $66 $7E $66 $00 $00 $00 $7C $66 $7C $66 $7C $00 $00 $00
	.db $3C $62 $60 $62 $3C $00 $00 $00 $7C $66 $66 $66 $7C $00 $00 $00
	.db $7E $60 $7C $60 $7E $00 $00 $00 $7E $60 $7C $60 $60 $00 $00 $00
	.db $3E $60 $6E $66 $3E $00 $00 $00 $66 $66 $7E $66 $66 $00 $00 $00
	.db $18 $18 $18 $18 $18 $00 $00 $00 $06 $06 $66 $66 $3C $00 $00 $00
	.db $66 $6C $78 $6C $66 $00 $00 $00 $60 $60 $60 $60 $7E $00 $00 $00
	.db $66 $7E $76 $66 $66 $00 $00 $00 $66 $76 $7E $6E $66 $00 $00 $00
	.db $3C $66 $66 $66 $3C $00 $00 $00 $7C $66 $66 $7C $60 $00 $00 $00
	.db $3C $66 $76 $6C $3E $00 $00 $00 $7C $66 $66 $7C $66 $00 $00 $00
	.db $3E $70 $3C $0E $7C $00 $00 $00 $7E $18 $18 $18 $18 $00 $00 $00
	.db $66 $66 $66 $66 $3C $00 $00 $00 $66 $66 $66 $24 $18 $00 $00 $00
	.db $66 $66 $6E $7E $34 $00 $00 $00 $66 $3C $18 $3C $66 $00 $00 $00
	.db $66 $66 $3C $18 $18 $00 $00 $00 $7E $0C $18 $30 $7E $00 $3C $62
	.db $CD $D1 $D1 $CD $62 $3C $7C $FC $E0 $F8 $7C $1C $FC $F8 $7C $FC
	.db $C0 $F8 $F8 $C0 $FC $7C $7C $FC $C0 $DC $DC $CC $FC $7C $38 $38
	.db $7C $5C $5C $CE $BE $BE
	.dsb 16, $00
	.db $FF $FF $FF $FF $FF $FF $FF $FF $00 $00 $00 $00 $00 $00 $00 $00
	.db $FF $FF $FF $FF $FF $FF $FF $FF $00 $00 $00 $00 $00 $00 $00 $00
	.db $FF $FF $FF $FF $FF $FF $FF $FF $00 $00 $00 $00 $00 $00 $00 $00
	.dsb 32, $FF
	.db $01 $01 $01 $01 $01 $01 $01 $01 $FE $FE $FE $FE $FE $FE $FE $FE
	.db $01 $01 $01 $01 $01 $01 $01 $01 $FE $FE $FE $FE $FE $FE $FE $FE
	.db $01 $01 $01 $01 $01 $01 $01 $01
	.dsb 32, $FE
	.db $03 $03 $03 $03 $03 $03 $03 $03 $FC $FC $FC $FC $FC $FC $FC $FC
	.db $03 $03 $03 $03 $03 $03 $03 $03 $FC $FC $FC $FC $FC $FC $FC $FC
	.db $03 $03 $03 $03 $03 $03 $03 $03
	.dsb 32, $FC
	.db $07 $07 $07 $07 $07 $07 $07 $07 $F8 $F8 $F8 $F8 $F8 $F8 $F8 $F8
	.db $07 $07 $07 $07 $07 $07 $07 $07 $F8 $F8 $F8 $F8 $F8 $F8 $F8 $F8
	.db $07 $07 $07 $07 $07 $07 $07 $07
	.dsb 32, $F8
	.db $0F $0F $0F $0F $0F $0F $0F $0F $F0 $F0 $F0 $F0 $F0 $F0 $F0 $F0
	.db $0F $0F $0F $0F $0F $0F $0F $0F $F0 $F0 $F0 $F0 $F0 $F0 $F0 $F0
	.db $0F $0F $0F $0F $0F $0F $0F $0F
	.dsb 32, $F0
	.db $1F $1F $1F $1F $1F $1F $1F $1F $E0 $E0 $E0 $E0 $E0 $E0 $E0 $E0
	.db $1F $1F $1F $1F $1F $1F $1F $1F $E0 $E0 $E0 $E0 $E0 $E0 $E0 $E0
	.db $1F $1F $1F $1F $1F $1F $1F $1F
	.dsb 32, $E0
	.db $3F $3F $3F $3F $3F $3F $3F $3F $C0 $C0 $C0 $C0 $C0 $C0 $C0 $C0
	.db $3F $3F $3F $3F $3F $3F $3F $3F $C0 $C0 $C0 $C0 $C0 $C0 $C0 $C0
	.db $3F $3F $3F $3F $3F $3F $3F $3F
	.dsb 32, $C0
	.db $7F $7F $7F $7F $7F $7F $7F $7F $80 $80 $80 $80 $80 $80 $80 $80
	.db $7F $7F $7F $7F $7F $7F $7F $7F $80 $80 $80 $80 $80 $80 $80 $80
	.db $7F $7F $7F $7F $7F $7F $7F $7F
	.dsb 32, $80
	
; Data from 3655 to 36E4 (144 bytes)	
_DATA_3655_:	
	.db $00 $00 $00 $00 $00 $00 $01 $01 $00 $00 $00 $00 $40 $A0 $20 $70
	.db $03 $01 $0F $00 $0F $01 $07 $00 $F0 $D8 $E8 $E9 $FB $FE $EC $D8
	.db $00 $10 $18 $F8 $FF $0F $00 $00 $00 $00 $00 $00 $00 $F0 $FF $0F
	.db $00 $00 $00 $00 $00 $00 $00 $F0
	.dsb 25, $00
	.db $01 $01 $09 $07 $03 $01 $01 $F0 $E0 $C0 $C0 $C0 $80 $80 $C0
	.dsb 16, $00
	.db $FF $0F $01 $01 $03 $03 $07 $07 $00 $F0 $FF $8F $C0 $C0 $E0 $E0
	.db $00 $00 $00 $F0 $FF $0F $00 $00 $00 $00 $00 $10 $18 $F8 $FF $0F
	
; Data from 36E5 to 3774 (144 bytes)	
_DATA_36E5_:	
	.db $00 $00 $00 $00 $02 $05 $04 $0E $00 $00 $00 $00 $00 $00 $80 $80
	.dsb 31, $00
	.db $0F $00 $00 $00 $00 $00 $0F $FF $F0 $00 $08 $18 $1F $FF $F0 $00
	.db $00 $0F $1B $17 $97 $DF $7F $37 $1B $C0 $80 $F0 $00 $F0 $80 $E0
	.db $00 $00 $00 $00 $08 $18 $1F $FF $F0 $00 $00 $00 $0F $FF $F0 $00
	.db $00 $00 $0F $FF $F1 $03 $03 $07 $07 $FF $F0 $80 $80 $C0 $C0 $E0
	.db $E0
	.dsb 16, $00
	.db $0F $07 $03 $03 $03 $01 $01 $03 $00 $80 $80 $90 $E0 $C0 $80 $80
	
; Data from 3775 to 3804 (144 bytes)	
_DATA_3775_:	
	.dsb 14, $00
	.db $40 $A0 $01 $01 $03 $01 $0F $00 $0F $01 $20 $70 $F0 $D8 $E8 $E8
	.db $FC $FC $00 $00 $00 $00 $00 $00 $30 $30
	.dsb 38, $00
	.db $0C $0C $07 $00 $00 $09 $07 $03 $00 $01 $F3 $CE $F8 $E0 $C0 $C0
	.db $E0 $C0 $FF $FF $00 $00 $00 $00 $00 $00 $FF $FF $00 $00 $00 $00
	.db $00 $00 $FF $FF $01 $01 $03 $03 $07 $07 $FF $FF $80 $80 $C0 $C0
	.db $E0 $E0 $FF $FF $00 $00 $00 $00 $00 $00 $FF $FF $00 $00 $00 $00
	.db $00 $00
	
; Data from 3805 to 3894 (144 bytes)	
_DATA_3805_:	
	.dsb 15, $00
	.db $40 $00 $01 $01 $03 $01 $0F $00 $0F $A0 $20 $70 $F0 $D8 $E8 $E8
	.db $FC
	.dsb 31, $00
	.db $0F $00 $00 $00 $00 $00 $0F $FF $F0 $00 $08 $18 $1F $FF $F0 $00
	.db $00 $01 $07 $00 $00 $09 $07 $03 $00 $FC $F0 $60 $F0 $FC $CF $E3
	.db $C0 $00 $00 $00 $08 $18 $1F $FF $F0 $00 $00 $00 $0F $FF $F0 $00
	.db $00 $00 $0F $FF $F1 $03 $03 $07 $07 $FF $F0 $80 $80 $C0 $C0 $E0
	.db $E0
	.dsb 16, $00
	
; Data from 3895 to 3924 (144 bytes)	
_DATA_3895_:	
	.db $00 $00 $00 $00 $00 $00 $02 $05
	.dsb 14, $00
	.db $30 $30
	.dsb 38, $00
	.db $0C $0C $04 $0E $0F $1B $17 $17 $3F $3F $80 $80 $C0 $80 $F0 $00
	.db $F0 $80 $FF $FF $00 $00 $00 $00 $00 $00 $FF $FF $00 $00 $00 $00
	.db $00 $00 $FF $FF $01 $01 $03 $03 $07 $07 $FF $FF $80 $80 $C0 $C0
	.db $E0 $E0 $FF $FF $00 $00 $00 $00 $00 $00 $FF $FF $00 $00 $00 $00
	.db $00 $00 $CF $73 $1F $07 $03 $03 $07 $03 $E0 $00 $00 $90 $E0 $C0
	.db $00 $80
	
; Data from 3925 to 39B4 (144 bytes)	
_DATA_3925_:	
	.db $00 $00 $00 $00 $00 $00 $00 $02
	.dsb 9, $00
	.db $10 $18 $F8 $FF $0F $00 $00 $00 $00 $00 $00 $00 $F0 $FF $0F $00
	.db $00 $00 $00 $00 $00 $00 $F0
	.dsb 24, $00
	.db $05 $04 $0E $0F $1B $17 $17 $3F $00 $80 $80 $C0 $80 $F0 $00 $F0
	.dsb 16, $00
	.db $FF $0F $01 $01 $03 $03 $07 $07 $00 $F0 $FF $8F $C0 $C0 $E0 $E0
	.db $00 $00 $00 $F0 $FF $0F $00 $00 $00 $00 $00 $10 $18 $F8 $FF $0F
	.db $3F $0F $06 $0F $3F $F3 $C7 $03 $80 $E0 $00 $00 $90 $E0 $C0 $00
	
; Data from 39B5 to 39D6 (34 bytes)	
_DATA_39B5_:	
	.db $F0 $D0
	.dsb 18, $69
	.db $B6 $16 $16 $16 $16 $14 $69 $69 $B6 $16 $16 $16 $16 $14
	
; Data from 39D7 to 39F6 (32 bytes)	
_DATA_39D7_:	
	.db $98 $98 $98 $98 $98 $98 $98 $96 $98 $98 $98 $98 $98 $98 $98 $96
	.dsb 16, $69
	
; Data from 39F7 to 3A16 (32 bytes)	
_DATA_39F7_:	
	.dsb 18, $47
	.db $B4 $F4 $F4 $F4 $F4 $F6 $47 $47 $B4 $F4 $F4 $F4 $F4 $F6
	
; Data from 3A17 to 3A36 (32 bytes)	
_DATA_3A17_:	
	.db $75 $75 $75 $75 $75 $75 $75 $74 $75 $75 $75 $75 $75 $75 $75 $74
	.dsb 16, $47
	
; Data from 3A37 to 3A66 (48 bytes)	
_DATA_3A37_:	
	.dsb 37, $70
	.db $F0 $B0 $90 $70 $70 $70 $70 $70 $F0 $B0 $90
	
; Data from 3A67 to 3A6E (8 bytes)	
_DATA_3A67_:	
	.db $70 $70 $70 $70 $70 $70 $F0 $B0
	
; Data from 3A6F to 3A76 (8 bytes)	
_DATA_3A6F_:	
	.db $A0 $A0 $A0 $A0 $A0 $A0 $A0 $A0
	
; 2nd entry of Pointer Table from 27A1 (indexed by _RAM_C0EA_)	
; Data from 3A77 to 3AD6 (96 bytes)	
_DATA_3A77_:	
	.dsb 16, $00
	.db $50 $50 $50 $50 $F0 $F0 $80 $80 $50 $50 $50 $50 $F0 $F0 $80 $80
	.db $50 $50 $50 $50 $F0 $F0 $80 $80 $80 $80 $50 $50 $50 $50 $50 $50
	.db $80 $80 $50 $50 $50 $50 $50 $50 $80 $80 $80 $50 $F0 $F0 $80 $80
	.db $85 $85 $55 $55 $FF $FF $88 $88 $58 $58 $55 $55 $FF $FF $88 $88
	.db $85 $85 $55 $55 $FF $FF $88 $88 $80 $80 $50 $50 $F0 $F0 $80 $80
	
; 3rd entry of Pointer Table from 27A1 (indexed by _RAM_C0EA_)	
; Data from 3AD7 to 3B36 (96 bytes)	
_DATA_3AD7_:	
	.dsb 16, $00
	.db $F0 $F0 $F0 $F0 $E0 $E0 $10 $10 $F0 $F0 $F0 $F0 $E0 $E0 $10 $10
	.db $F0 $F0 $F0 $F0 $E0 $E0 $10 $10 $10 $10 $F0 $F0 $F0 $F0 $F0 $F0
	.db $10 $10 $F0 $F0 $F0 $F0 $F0 $F0 $10 $10 $F0 $F0 $E0 $E0 $10 $10
	.db $1F $1F $FF $FF $EE $EE $11 $11 $F1 $F1 $FF $FF $EE $EE $11 $11
	.db $1F $1F $FF $FF $EE $EE $11 $11 $10 $10 $F0 $F0 $E0 $E0 $10 $10
	
; 4th entry of Pointer Table from 27A1 (indexed by _RAM_C0EA_)	
; Data from 3B37 to 3B96 (96 bytes)	
_DATA_3B37_:	
	.dsb 16, $00
	.db $50 $50 $50 $50 $F0 $F0 $70 $70 $50 $50 $50 $50 $F0 $F0 $70 $70
	.db $50 $50 $50 $50 $F0 $F0 $70 $70 $70 $70 $50 $50 $50 $50 $50 $50
	.db $70 $70 $50 $50 $50 $50 $50 $50 $70 $70 $70 $50 $F0 $F0 $70 $70
	.db $75 $75 $55 $55 $FF $FF $77 $77 $57 $57 $55 $55 $FF $FF $77 $77
	.db $75 $75 $55 $55 $FF $FF $77 $77 $70 $70 $50 $50 $F0 $F0 $70 $70
	
; 1st entry of Pointer Table from 27A1 (indexed by _RAM_C0EA_)	
; Data from 3B97 to 3BF6 (96 bytes)	
_DATA_3B97_:	
	.dsb 16, $00
	.db $F0 $E0 $B0 $A0 $30 $C0 $50 $70 $F0 $E0 $B0 $A0 $30 $C0 $50 $70
	.db $F0 $E0 $B0 $A0 $30 $C0 $50 $70 $F0 $E0 $B0 $A0 $30 $C0 $50 $70
	.db $F0 $E0 $B0 $A0 $30 $C0 $50 $70 $F0 $E0 $B0 $A0 $30 $C0 $50 $70
	.db $FF $EE $BB $AA $33 $CC $55 $77 $FF $EE $BB $AA $33 $CC $55 $77
	.db $FF $EE $BB $AA $33 $CC $55 $77 $F0 $E0 $B0 $A0 $30 $C0 $50 $70
	
; Data from 3BF7 to 3DCE (472 bytes)	
_DATA_3BF7_:	
	.db $01 $07 $0F $1F $1F $3F $3F $3F $FF $FF $FF $FF $FF $FF $FF $FF
	.db $F0 $FC $FE $FF $FF $FF $FF $FE $03 $0F $1F $1F $1F $1F $1F $1F
	.db $C0 $F0 $F8 $F8 $F8 $F8 $F8 $F8 $0F $3F $7F $7F $7F $7F $7F $7F
	.db $80 $E0 $F0 $F0 $F0 $F0 $F0 $F0 $01 $07 $0F $1F $3F $3F $7F $7F
	.db $00 $C0 $E0 $F0 $F0 $F8 $F8 $FC $0E $3F $7F $7F $7F $7F $7F $7F
	.db $00 $81 $C3 $C7 $CF $DF $FF $FF $F8 $FC $FC $FE $FE $FE $FC $FC
	.db $0F $1F $3F $3F $3F $3F $3F $3F $00 $81 $C3 $C3 $C3 $C3 $C3 $C3
	.db $F8 $FC $FE $FE $FE $FE $FE $FE $3F $3F $3F $3F $3F $3F $3F $3F
	.db $FF $FF $F0 $F0 $F0 $F0 $F0 $F0 $FC $F0 $00 $00 $00 $00 $00 $00
	.db $1F $1F $1F $1F $1F $1F $1F $1F $F8 $F8 $F8 $F8 $F8 $F8 $F8 $F8
	.db $7F $7F $7F $7F $7F $7F $7F $7F $F0 $F0 $F0 $F0 $F0 $F0 $F0 $F0
	.db $FF $C7 $83 $83 $01 $01 $00 $00 $FC $FC $FC $FC $FC $F8 $00 $00
	.db $F8 $F0 $E0 $C0 $80 $80 $80 $C0 $3F $3F $3F $3F $3F $3F $3F $1F
	.db $C3 $C3 $C3 $E3 $E3 $FB $FF $FF $FE $FE $FE $FE $FE $FE $FE $FE
	.db $80 $E0 $F0 $F8 $F8 $F8 $F8 $F0 $F8 $F8 $F8 $FC $FF $FF $FF $FF
	.db $00 $00 $00 $00 $F0 $F8 $F8 $FC $FF $FF $FF $FF $FF $FF $7F $7F
	.db $01 $01 $83 $83 $C7 $FF $FF $FF $F8 $FC $FC $FC $FC $FC $FC $F8
	.db $FF $FF $FF $FF $FF $FF $DF $CF $C0 $E0 $E0 $F0 $F0 $F8 $F8 $FC
	.db $1F $0F $0F $07 $03 $00 $00 $00 $FF $FF $FF $FF $FF $FF $3F $0F
	.db $FE $FE $FE $FE $FE $FE $FE $FC $FF $FF $F0 $F0 $F0 $F0 $F0 $F0
	.db $E0 $80 $00 $00 $00 $00 $00 $00 $1F $1F $1F $0F $0F $03 $00 $00
	.db $FF $FF $FF $FF $FF $FF $00 $00 $FC $FC $FC $F8 $F8 $F0 $00 $00
	.db $7F $7F $7F $7F $3F $0F $00 $00 $F0 $F0 $F0 $F0 $E0 $80 $00 $00
	.db $3F $3F $1F $0F $07 $01 $00 $00 $F8 $F0 $F0 $E0 $C0 $00 $00 $00
	.db $7F $7F $7F $7F $3F $0E $00 $00 $CF $C7 $C7 $C3 $83 $01 $00 $00
	.db $FC $FC $FC $F8 $F8 $F0 $00 $00 $00 $00 $1F $3F $7F $7F $7F $7F
	.db $0F $3F $FF $FF $FF $FF $FF $FF $FC $FC $F8 $F8 $F0 $F0 $E0 $C0
	.db $3F $3F $1F $0F $00 $00 $00 $00 $F0 $F0 $E0 $C0 $00 $00 $00 $00
	.db $7F $7F $3F $1F $00 $00 $00 $00 $FF $FF $FC $F0 $00 $00 $00 $00
	.db $80 $00 $00 $00 $00 $00 $00 $00
	
; Data from 3DCF to 3DEE (32 bytes)	
_DATA_3DCF_:	
	.db $81 $81 $81 $81 $81 $81 $81 $81 $C1 $C1 $C1 $C1 $C1 $C1 $C1 $C1
	.db $C3 $FF $7E $81 $81 $81 $C3 $7E $E3 $FF $3E $C1 $C1 $C1 $E3 $3E
	
; Data from 3DEF to 3E0E (32 bytes)	
_DATA_3DEF_:	
	.db $C0 $30 $0C $03 $03 $0F $3F $FF $03 $0C $30 $C0 $C0 $F0 $FC $FF
	.db $C0 $30 $0C $03 $03 $0F $3F $FF $03 $0C $30 $C0 $C0 $F0 $FC $FF
	
; Data from 3E0F to 3E4E (64 bytes)	
_DATA_3E0F_:	
	.db $03 $03 $03 $03 $03 $03 $03 $03 $83 $83 $83 $83 $83 $83 $83 $83
	.db $87 $FF $FC $03 $03 $03 $87 $FC $C7 $FF $7C $83 $83 $83 $C7 $7C
	.db $80 $60 $18 $07 $07 $1F $7F $FF $07 $18 $60 $80 $80 $E0 $F8 $FF
	.db $80 $60 $18 $07 $07 $1F $7F $FF $07 $18 $60 $80 $80 $E0 $F8 $FF
	
; Data from 3E4F to 3E8E (64 bytes)	
_DATA_3E4F_:	
	.db $07 $07 $07 $07 $07 $07 $07 $07 $06 $06 $06 $06 $06 $06 $06 $06
	.db $0F $FF $F8 $07 $07 $07 $0F $F8 $8F $FF $F9 $06 $06 $06 $8F $F9
	.db $00 $C0 $30 $0F $0F $3F $FF $FF $0F $30 $C0 $00 $00 $C0 $F0 $FF
	.db $00 $C0 $30 $0F $0F $3F $FF $FF $0F $30 $C0 $00 $00 $C0 $F0 $FF
	
; Data from 3E8F to 3ECE (64 bytes)	
_DATA_3E8F_:	
	.db $0E $0E $0E $0E $0E $0E $0E $0E $0C $0C $0C $0C $0C $0C $0C $0C
	.db $1F $FF $F1 $0E $0E $0E $1F $F1 $1E $FF $F3 $0C $0C $0C $1E $F3
	.db $00 $80 $61 $1E $1E $7F $FF $FF $1E $61 $80 $00 $00 $80 $E1 $FF
	.db $00 $80 $61 $1E $1E $7F $FF $FF $1E $61 $80 $00 $00 $80 $E1 $FF
	
; Data from 3ECF to 3F0E (64 bytes)	
_DATA_3ECF_:	
	.db $1C $1C $1C $1C $1C $1C $1C $1C $18 $18 $18 $18 $18 $18 $18 $18
	.db $3E $FF $E3 $1C $1C $1C $3E $E3 $3C $FF $E7 $18 $18 $18 $3C $E7
	.db $00 $00 $C3 $3C $3C $FF $FF $FF $3C $C3 $00 $00 $00 $00 $C3 $FF
	.db $00 $00 $C3 $3C $3C $FF $FF $FF $3C $C3 $00 $00 $00 $00 $C3 $FF
	
; Data from 3F0F to 3F4E (64 bytes)	
_DATA_3F0F_:	
	.db $38 $38 $38 $38 $38 $38 $38 $38 $30 $30 $30 $30 $30 $30 $30 $30
	.db $7C $FF $C7 $38 $38 $38 $7C $C7 $78 $FF $CF $30 $30 $30 $78 $CF
	.db $00 $01 $86 $78 $78 $FE $FF $FF $78 $86 $01 $00 $00 $01 $87 $FF
	.db $00 $01 $86 $78 $78 $FE $FF $FF $78 $86 $01 $00 $00 $01 $87 $FF
	
; Data from 3F4F to 3F8E (64 bytes)	
_DATA_3F4F_:	
	.db $70 $70 $70 $70 $70 $70 $70 $70 $60 $60 $60 $60 $60 $60 $60 $60
	.db $F8 $FF $8F $70 $70 $70 $F8 $8F $F0 $FF $9F $60 $60 $60 $F0 $9F
	.db $00 $03 $0C $F0 $F0 $FC $FF $FF $F0 $0C $03 $00 $00 $03 $0F $FF
	.db $00 $03 $0C $F0 $F0 $FC $FF $FF $F0 $0C $03 $00 $00 $03 $0F $FF
	
; Data from 3F8F to 3FCE (64 bytes)	
_DATA_3F8F_:	
	.db $E0 $E0 $E0 $E0 $E0 $E0 $E0 $E0 $C0 $C0 $C0 $C0 $C0 $C0 $C0 $C0
	.db $F1 $FF $1F $E0 $E0 $E0 $F1 $1F $E1 $FF $3F $C0 $C0 $C0 $E1 $3F
	.db $01 $06 $18 $E0 $E0 $F8 $FE $FF $E0 $18 $06 $01 $01 $07 $1F $FF
	.db $01 $06 $18 $E0 $E0 $F8 $FE $FF $E0 $18 $06 $01 $01 $07 $1F $FF
	
; Data from 3FCF to 3FFF (49 bytes)	
_DATA_3FCF_:	
	.db $C1 $C1 $C1 $C1 $C1 $C1 $C1 $C1 $81 $81 $81 $81 $81 $81 $81 $81
	.db $E3 $FF $3E $C1 $C1 $C1 $E3 $3E $C3 $FF $7E $81 $81 $81 $C3 $7E
	.db $03 $0C $30 $C0 $C0 $F0 $FC $FF $C0 $30 $0C $03 $03 $0F $3F $FF
	.db $03
	
.BANK 1 SLOT 1	
.ORG $0000	
	
	; Data from 4000 to 400E (15 bytes)
	.db $0C $30 $C0 $C0 $F0 $FC $FF $C0 $30 $0C $03 $03 $0F $3F $FF
	
; Data from 400F to 404E (64 bytes)	
_DATA_400F_:	
	.db $83 $83 $83 $83 $83 $83 $83 $83 $03 $03 $03 $03 $03 $03 $03 $03
	.db $C7 $FF $7C $83 $83 $83 $C7 $7C $87 $FF $FC $03 $03 $03 $87 $FC
	.db $07 $18 $60 $80 $80 $E0 $F8 $FF $80 $60 $18 $07 $07 $1F $7F $FF
	.db $07 $18 $60 $80 $80 $E0 $F8 $FF $80 $60 $18 $07 $07 $1F $7F $FF
	
; Data from 404F to 408E (64 bytes)	
_DATA_404F_:	
	.db $06 $06 $06 $06 $06 $06 $06 $06 $07 $07 $07 $07 $07 $07 $07 $07
	.db $8F $FF $F9 $06 $06 $06 $8F $F9 $0F $FF $F8 $07 $07 $07 $0F $F8
	.db $0F $30 $C0 $00 $00 $C0 $F0 $FF $00 $C0 $30 $0F $0F $3F $FF $FF
	.db $0F $30 $C0 $00 $00 $C0 $F0 $FF $00 $C0 $30 $0F $0F $3F $FF $FF
	
; Data from 408F to 40CE (64 bytes)	
_DATA_408F_:	
	.db $0C $0C $0C $0C $0C $0C $0C $0C $0E $0E $0E $0E $0E $0E $0E $0E
	.db $1E $FF $F3 $0C $0C $0C $1E $F3 $1F $FF $F1 $0E $0E $0E $1F $F1
	.db $1E $61 $80 $00 $00 $80 $E1 $FF $00 $80 $61 $1E $1E $7F $FF $FF
	.db $1E $61 $80 $00 $00 $80 $E1 $FF $00 $80 $61 $1E $1E $7F $FF $FF
	
; Data from 40CF to 410E (64 bytes)	
_DATA_40CF_:	
	.db $18 $18 $18 $18 $18 $18 $18 $18 $1C $1C $1C $1C $1C $1C $1C $1C
	.db $3C $FF $E7 $18 $18 $18 $3C $E7 $3E $FF $E3 $1C $1C $1C $3E $E3
	.db $3C $C3 $00 $00 $00 $00 $C3 $FF $00 $00 $C3 $3C $3C $FF $FF $FF
	.db $3C $C3 $00 $00 $00 $00 $C3 $FF $00 $00 $C3 $3C $3C $FF $FF $FF
	
; Data from 410F to 414E (64 bytes)	
_DATA_410F_:	
	.db $30 $30 $30 $30 $30 $30 $30 $30 $38 $38 $38 $38 $38 $38 $38 $38
	.db $78 $FF $CF $30 $30 $30 $78 $CF $7C $FF $C7 $38 $38 $38 $7C $C7
	.db $78 $86 $01 $00 $00 $01 $87 $FF $00 $01 $86 $78 $78 $FE $FF $FF
	.db $78 $86 $01 $00 $00 $01 $87 $FF $00 $01 $86 $78 $78 $FE $FF $FF
	
; Data from 414F to 418E (64 bytes)	
_DATA_414F_:	
	.db $60 $60 $60 $60 $60 $60 $60 $60 $70 $70 $70 $70 $70 $70 $70 $70
	.db $F0 $FF $9F $60 $60 $60 $F0 $9F $F8 $FF $8F $70 $70 $70 $F8 $8F
	.db $F0 $0C $03 $00 $00 $03 $0F $FF $00 $03 $0C $F0 $F0 $FC $FF $FF
	.db $F0 $0C $03 $00 $00 $03 $0F $FF $00 $03 $0C $F0 $F0 $FC $FF $FF
	
; Data from 418F to 41CE (64 bytes)	
_DATA_418F_:	
	.db $C0 $C0 $C0 $C0 $C0 $C0 $C0 $C0 $E0 $E0 $E0 $E0 $E0 $E0 $E0 $E0
	.db $E1 $FF $3F $C0 $C0 $C0 $E1 $3F $F1 $FF $1F $E0 $E0 $E0 $F1 $1F
	.db $E0 $18 $06 $01 $01 $07 $1F $FF $01 $06 $18 $E0 $E0 $F8 $FE $FF
	.db $E0 $18 $06 $01 $01 $07 $1F $FF $01 $06 $18 $E0 $E0 $F8 $FE $FF
	
; Data from 41CF to 41FE (48 bytes)	
_DATA_41CF_:	
	.dsb 9, $00
	.db $0F $1F $1F $33 $21 $29 $21 $33 $7F $00 $01 $03 $01 $00 $03 $00
	.db $00 $00 $00 $00 $00 $00 $00 $40 $80 $C0 $C0 $E0 $E0 $E0 $C0 $C0
	.db $80 $80 $E0 $F8 $F0 $80 $C0
	
; Data from 41FF to 422E (48 bytes)	
_DATA_41FF_:	
	.db $00 $00 $00 $00 $00 $00 $00 $00 $1F $3F $3F $67 $43 $53 $43 $67
	.db $FF $31 $23 $07 $03 $05 $02
	.dsb 10, $00
	.db $C0 $80 $C0 $C0 $C0 $80 $80 $00 $00 $C0 $F0 $E0 $60 $20 $00
	
; Data from 422F to 425E (48 bytes)	
_DATA_422F_:	
	.dsb 10, $00
	.db $07 $0F $0F $19 $10 $12 $14 $39 $0F $00 $01 $04 $03 $01
	.dsb 9, $00
	.db $20 $C0 $E0 $E0 $F0 $F0 $F0 $F0 $E8 $98 $F0 $F0 $E0 $80 $00
	
; Data from 425F to 428E (48 bytes)	
_DATA_425F_:	
	.db $00 $00 $00 $00 $00 $00 $00 $00 $02 $01 $03 $03 $07 $07 $07 $03
	.db $03 $01 $01 $07 $1F $0F $01 $03
	.dsb 9, $00
	.db $F0 $F8 $F8 $CC $84 $94 $84 $CC $FE $00 $80 $C0 $80 $00 $C0
	
; Data from 428F to 42BE (48 bytes)	
_DATA_428F_:	
	.dsb 9, $00
	.db $03 $01 $03 $03 $03 $01 $01 $00 $00 $03 $0F $07 $06 $04
	.dsb 9, $00
	.db $F8 $FC $FC $E6 $C2 $CA $C2 $E6 $FF $8C $C4 $E0 $C0 $A0 $40 $00
	
; Data from 42BF to 42EE (48 bytes)	
_DATA_42BF_:	
	.dsb 9, $00
	.db $04 $03 $07 $07 $0F $0F $0F $0F $17 $19 $0F $0F $07 $01
	.dsb 11, $00
	.db $E0 $F0 $F0 $98 $08 $48 $28 $9C $F0 $00 $80 $20 $C0 $80
	
; Data from 42EF to 42EF (1 bytes)	
_DATA_42EF_:	
	.db $00
	
; Data from 42F0 to 42F0 (1 bytes)	
_DATA_42F0_:	
	.db $00
	
; Data from 42F1 to 42F1 (1 bytes)	
_DATA_42F1_:	
	.db $00
	
; Data from 42F2 to 42F2 (1 bytes)	
_DATA_42F2_:	
	.db $00
	
; Data from 42F3 to 42F3 (1 bytes)	
_DATA_42F3_:	
	.db $00
	
; Data from 42F4 to 42F4 (1 bytes)	
_DATA_42F4_:	
	.db $00
	
; Data from 42F5 to 42F5 (1 bytes)	
_DATA_42F5_:	
	.db $00
	
; Data from 42F6 to 431E (41 bytes)	
_DATA_42F6_:	
	.db $00 $00 $00 $03 $07 $07 $0D $08 $0A $08 $05 $02 $07 $0F $03 $01
	.db $06
	.dsb 10, $00
	.db $E0 $F0 $F0 $D8 $88 $A8 $88 $D0 $A0 $70 $F8 $E0 $C0 $30
	
; Data from 431F to 431F (1 bytes)	
_DATA_431F_:	
	.db $00
	
; Data from 4320 to 4320 (1 bytes)	
_DATA_4320_:	
	.db $00
	
; Data from 4321 to 4321 (1 bytes)	
_DATA_4321_:	
	.db $00
	
; Data from 4322 to 4322 (1 bytes)	
_DATA_4322_:	
	.db $00
	
; Data from 4323 to 4323 (1 bytes)	
_DATA_4323_:	
	.db $00
	
; Data from 4324 to 4324 (1 bytes)	
_DATA_4324_:	
	.db $00
	
; Data from 4325 to 4325 (1 bytes)	
_DATA_4325_:	
	.db $00
	
; Data from 4326 to 434E (41 bytes)	
_DATA_4326_:	
	.db $00 $00 $03 $07 $07 $0D $08 $0A $08 $05 $02 $03 $03 $03 $01 $03
	.dsb 10, $00
	.db $E0 $F0 $F0 $D8 $88 $A8 $88 $D0 $A0 $60 $E0 $E0 $C0 $60 $00
	
; Data from 434F to 434F (1 bytes)	
_DATA_434F_:	
	.db $00
	
; Data from 4350 to 4350 (1 bytes)	
_DATA_4350_:	
	.db $00
	
; Data from 4351 to 4351 (1 bytes)	
_DATA_4351_:	
	.db $00
	
; Data from 4352 to 4352 (1 bytes)	
_DATA_4352_:	
	.db $00
	
; Data from 4353 to 4353 (1 bytes)	
_DATA_4353_:	
	.db $00
	
; Data from 4354 to 4354 (1 bytes)	
_DATA_4354_:	
	.db $00
	
; Data from 4355 to 4355 (1 bytes)	
_DATA_4355_:	
	.db $00
	
; Data from 4356 to 437E (41 bytes)	
_DATA_4356_:	
	.db $00 $00 $1F $3F $3F $67 $43 $53 $43 $67 $FF $01 $03 $03 $01 $01
	.dsb 9, $00
	.db $80 $00 $80 $80 $C0 $C0 $C0 $80 $80 $00 $00 $C0 $F0 $E0 $30 $00
	
; Data from 437F to 437F (1 bytes)	
_DATA_437F_:	
	.db $00
	
; Data from 4380 to 4380 (1 bytes)	
_DATA_4380_:	
	.db $00
	
; Data from 4381 to 4381 (1 bytes)	
_DATA_4381_:	
	.db $00
	
; Data from 4382 to 4382 (1 bytes)	
_DATA_4382_:	
	.db $00
	
; Data from 4383 to 4383 (1 bytes)	
_DATA_4383_:	
	.db $00
	
; Data from 4384 to 4384 (1 bytes)	
_DATA_4384_:	
	.db $00
	
; Data from 4385 to 4385 (1 bytes)	
_DATA_4385_:	
	.db $00
	
; Data from 4386 to 43AE (41 bytes)	
_DATA_4386_:	
	.db $00 $00 $00 $1F $3F $3F $67 $43 $53 $43 $67 $FF $01 $03 $03 $01
	.dsb 10, $00
	.db $80 $00 $80 $80 $C0 $C0 $C0 $90 $B0 $70 $F0 $E0 $F0 $E0 $18
	
; Data from 43AF to 43AF (1 bytes)	
_DATA_43AF_:	
	.db $00
	
; Data from 43B0 to 43B0 (1 bytes)	
_DATA_43B0_:	
	.db $00
	
; Data from 43B1 to 43B1 (1 bytes)	
_DATA_43B1_:	
	.db $00
	
; Data from 43B2 to 43B2 (1 bytes)	
_DATA_43B2_:	
	.db $00
	
; Data from 43B3 to 43B3 (1 bytes)	
_DATA_43B3_:	
	.db $00
	
; Data from 43B4 to 43B4 (1 bytes)	
_DATA_43B4_:	
	.db $00
	
; Data from 43B5 to 43B5 (1 bytes)	
_DATA_43B5_:	
	.db $00
	
; Data from 43B6 to 43DE (41 bytes)	
_DATA_43B6_:	
	.db $00 $01 $00 $01 $01 $03 $03 $03 $01 $01 $00 $00 $03 $0F $07 $0C
	.dsb 10, $00
	.db $F8 $FC $FC $E6 $C2 $CA $C2 $E6 $FF $80 $C0 $C0 $80 $80 $00
	
; Data from 43DF to 43DF (1 bytes)	
_DATA_43DF_:	
	.db $00
	
; Data from 43E0 to 43E0 (1 bytes)	
_DATA_43E0_:	
	.db $00
	
; Data from 43E1 to 43E1 (1 bytes)	
_DATA_43E1_:	
	.db $00
	
; Data from 43E2 to 43E2 (1 bytes)	
_DATA_43E2_:	
	.db $00
	
; Data from 43E3 to 43E3 (1 bytes)	
_DATA_43E3_:	
	.db $00
	
; Data from 43E4 to 43E4 (1 bytes)	
_DATA_43E4_:	
	.db $00
	
; Data from 43E5 to 43E5 (1 bytes)	
_DATA_43E5_:	
	.db $00
	
; Data from 43E6 to 4416 (49 bytes)	
_DATA_43E6_:	
	.db $00 $00 $01 $00 $01 $01 $03 $03 $03 $09 $0D $0E $0F $07 $0F $07
	.db $18
	.dsb 10, $00
	.db $F8 $FC $FC $E6 $C2 $CA $C2 $E6 $FF $80 $C0 $C0 $80
	.dsb 9, $00
	
; Data from 4417 to 4446 (48 bytes)	
_DATA_4417_:	
	.dsb 10, $00
	.db $03 $07 $07 $0D $08 $0A $08 $05 $02 $07 $0F $03 $01 $06
	.dsb 10, $00
	.db $E0 $F0 $F0 $D8 $88 $A8 $88 $D0 $A0 $70 $F8 $E0 $C0 $30
	
; Data from 4447 to 4476 (48 bytes)	
_DATA_4447_:	
	.dsb 11, $00
	.db $03 $07 $07 $0D $0A $0F $0A $05 $06 $0F $03 $01 $06
	.dsb 11, $00
	.db $E0 $F0 $F0 $D8 $A8 $F8 $A8 $D0 $B0 $78 $E0 $C0 $30
	
; Data from 4477 to 44A6 (48 bytes)	
_DATA_4477_:	
	.dsb 16, $00
	.db $03 $07 $0F $0F $0F $0F $0F $1B
	.dsb 16, $00
	.db $C0 $E0 $F0 $F0 $F0 $F0 $F0 $D8
	
; Data from 44A7 to 44D6 (48 bytes)	
_DATA_44A7_:	
	.dsb 21, $70
	.db $F0 $70 $90
	.dsb 21, $70
	.db $F0 $B0 $90
	
; Data from 44D7 to 4506 (48 bytes)	
_DATA_44D7_:	
	.dsb 16, $70
	.db $22 $70 $70 $70 $F0 $B0 $B0
	.dsb 21, $70
	.db $F0 $B0 $B0 $70
	
; Data from 4507 to 4536 (48 bytes)	
_DATA_4507_:	
	.dsb 21, $70
	.db $90 $90 $90
	.dsb 21, $70
	.db $F0 $90 $70
	
; Data from 4537 to 4566 (48 bytes)	
_DATA_4537_:	
	.dsb 21, $70
	.db $F0 $B0 $90
	.dsb 21, $70
	.db $F0 $70 $90
	
; Data from 4567 to 4596 (48 bytes)	
_DATA_4567_:	
	.dsb 20, $70
	.db $F0 $B0 $B0
	.dsb 17, $70
	.db $22 $70 $70 $70 $F0 $B0 $B0 $70
	
; Data from 4597 to 45C6 (48 bytes)	
_DATA_4597_:	
	.dsb 21, $70
	.db $F0 $90
	.dsb 22, $70
	.db $90 $90 $90
	
; Data from 45C7 to 45C7 (1 bytes)	
_DATA_45C7_:	
	.db $70
	
; Data from 45C8 to 45C8 (1 bytes)	
_DATA_45C8_:	
	.db $70
	
; Data from 45C9 to 45C9 (1 bytes)	
_DATA_45C9_:	
	.db $70
	
; Data from 45CA to 45CA (1 bytes)	
_DATA_45CA_:	
	.db $70
	
; Data from 45CB to 45CB (1 bytes)	
_DATA_45CB_:	
	.db $70
	
; Data from 45CC to 45CC (1 bytes)	
_DATA_45CC_:	
	.db $70
	
; Data from 45CD to 45CD (1 bytes)	
_DATA_45CD_:	
	.db $70
	
; Data from 45CE to 45F6 (41 bytes)	
_DATA_45CE_:	
	.dsb 14, $70
	.db $F0 $F0 $90
	.dsb 21, $70
	.db $F0 $F0 $90
	
; Data from 45F7 to 45F7 (1 bytes)	
_DATA_45F7_:	
	.db $70
	
; Data from 45F8 to 45F8 (1 bytes)	
_DATA_45F8_:	
	.db $70
	
; Data from 45F9 to 45F9 (1 bytes)	
_DATA_45F9_:	
	.db $70
	
; Data from 45FA to 45FA (1 bytes)	
_DATA_45FA_:	
	.db $70
	
; Data from 45FB to 45FB (1 bytes)	
_DATA_45FB_:	
	.db $70
	
; Data from 45FC to 45FC (1 bytes)	
_DATA_45FC_:	
	.db $70
	
; Data from 45FD to 45FD (1 bytes)	
_DATA_45FD_:	
	.db $70
	
; Data from 45FE to 4626 (41 bytes)	
_DATA_45FE_:	
	.dsb 13, $70
	.db $F0 $F0 $90
	.dsb 21, $70
	.db $F0 $F0 $90 $70
	
; Data from 4627 to 4627 (1 bytes)	
_DATA_4627_:	
	.db $70
	
; Data from 4628 to 4628 (1 bytes)	
_DATA_4628_:	
	.db $70
	
; Data from 4629 to 4629 (1 bytes)	
_DATA_4629_:	
	.db $70
	
; Data from 462A to 462A (1 bytes)	
_DATA_462A_:	
	.db $70
	
; Data from 462B to 462B (1 bytes)	
_DATA_462B_:	
	.db $70
	
; Data from 462C to 462C (1 bytes)	
_DATA_462C_:	
	.db $70
	
; Data from 462D to 462D (1 bytes)	
_DATA_462D_:	
	.db $70
	
; Data from 462E to 4656 (41 bytes)	
_DATA_462E_:	
	.dsb 10, $70
	.db $22
	.dsb 27, $70
	.db $F0 $B0 $70
	
; Data from 4657 to 4657 (1 bytes)	
_DATA_4657_:	
	.db $70
	
; Data from 4658 to 4658 (1 bytes)	
_DATA_4658_:	
	.db $70
	
; Data from 4659 to 4659 (1 bytes)	
_DATA_4659_:	
	.db $70
	
; Data from 465A to 465A (1 bytes)	
_DATA_465A_:	
	.db $70
	
; Data from 465B to 465B (1 bytes)	
_DATA_465B_:	
	.db $70
	
; Data from 465C to 465C (1 bytes)	
_DATA_465C_:	
	.db $70
	
; Data from 465D to 465D (1 bytes)	
_DATA_465D_:	
	.db $70
	
; Data from 465E to 4686 (41 bytes)	
_DATA_465E_:	
	.dsb 11, $70
	.db $22 $70 $70 $70 $F0
	.dsb 23, $70
	.db $F0 $B0
	
; Data from 4687 to 4687 (1 bytes)	
_DATA_4687_:	
	.db $70
	
; Data from 4688 to 4688 (1 bytes)	
_DATA_4688_:	
	.db $70
	
; Data from 4689 to 4689 (1 bytes)	
_DATA_4689_:	
	.db $70
	
; Data from 468A to 468A (1 bytes)	
_DATA_468A_:	
	.db $70
	
; Data from 468B to 468B (1 bytes)	
_DATA_468B_:	
	.db $70
	
; Data from 468C to 468C (1 bytes)	
_DATA_468C_:	
	.db $70
	
; Data from 468D to 468D (1 bytes)	
_DATA_468D_:	
	.db $70
	
; Data from 468E to 46B6 (41 bytes)	
_DATA_468E_:	
	.dsb 14, $70
	.db $F0 $B0
	.dsb 18, $70
	.db $22 $70 $70 $70 $70 $70 $70
	
; Data from 46B7 to 46B7 (1 bytes)	
_DATA_46B7_:	
	.db $70
	
; Data from 46B8 to 46B8 (1 bytes)	
_DATA_46B8_:	
	.db $70
	
; Data from 46B9 to 46B9 (1 bytes)	
_DATA_46B9_:	
	.db $70
	
; Data from 46BA to 46BA (1 bytes)	
_DATA_46BA_:	
	.db $70
	
; Data from 46BB to 46BB (1 bytes)	
_DATA_46BB_:	
	.db $70
	
; Data from 46BC to 46BC (1 bytes)	
_DATA_46BC_:	
	.db $70
	
; Data from 46BD to 46BD (1 bytes)	
_DATA_46BD_:	
	.db $70
	
; Data from 46BE to 4776 (185 bytes)	
_DATA_46BE_:	
	.dsb 15, $70
	.db $F0 $B0
	.dsb 18, $70
	.db $22 $70 $70 $70 $F0
	.dsb 22, $70
	.db $F0 $F0 $90
	.dsb 21, $70
	.db $F0 $F0 $90
	.dsb 21, $70
	.db $F0 $F0 $90
	.dsb 21, $70
	.db $F0 $F0 $90
	.dsb 48, $70
	
; Data from 4777 to 47B6 (64 bytes)	
_DATA_4777_:	
	.db $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01
	.db $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01
	.db $02 $03 $02 $03 $02 $03 $02 $03 $02 $03 $02 $03 $02 $03 $02 $03
	.db $02 $03 $02 $03 $02 $03 $02 $03 $02 $03 $02 $03 $02 $03 $02 $03
	
; Data from 47B7 to 480B (85 bytes)	
_DATA_47B7_:	
	.db $60 $61 $62 $63 $64 $20 $65 $66 $67 $61 $68 $69 $6A $6B $6C $6D
	.db $6E $6F $70 $71 $72 $73 $20 $74 $75 $61 $76 $77 $74 $61 $78 $79
	.db $7A $7B $6F $61 $7C $72 $7D $7E $74 $75 $7F $80 $81 $74 $82 $83
	.db $84 $85 $86 $6F $87 $88 $89 $8A $8B $8C $8D $8E $8A $8F $90 $91
	.db $92 $93 $94 $95 $96 $97
	.dsb 12, $20
	.db $98 $99 $9A
	
; Pointer Table from 480C to 485B (40 entries, indexed by _RAM_C0E8_)	
_DATA_480C_:	
	.dw _DATA_485C_ _DATA_499C_ _DATA_6DDC_ _DATA_4ADC_ _DATA_4C1C_ _DATA_4D5C_ _DATA_6DDC_ _DATA_4E9C_
	.dw _DATA_4FDC_ _DATA_511C_ _DATA_6DDC_ _DATA_525C_ _DATA_539C_ _DATA_54DC_ _DATA_6DDC_ _DATA_561C_
	.dw _DATA_575C_ _DATA_589C_ _DATA_6DDC_ _DATA_59DC_ _DATA_5B1C_ _DATA_5C5C_ _DATA_6DDC_ _DATA_5D9C_
	.dw _DATA_5EDC_ _DATA_601C_ _DATA_6DDC_ _DATA_615C_ _DATA_629C_ _DATA_63DC_ _DATA_6DDC_ _DATA_651C_
	.dw _DATA_665C_ _DATA_679C_ _DATA_6DDC_ _DATA_68DC_ _DATA_6A1C_ _DATA_6B5C_ _DATA_6DDC_ _DATA_6C9C_
	
; Data from 485C to 499B (320 bytes)	
_DATA_485C_:	
	.dsb 31, $00
	.db $0E $00 $00 $00 $00 $00 $00 $D0 $F0 $00 $0D
	.dsb 10, $00
	.db $13 $22 $22 $22 $22 $22 $24 $10
	.dsb 10, $00
	.db $E0 $00 $00 $0E
	.dsb 22, $00
	.db $22 $22 $24 $10 $00 $00 $00 $00 $00 $00 $00 $00 $13 $22 $22 $22
	.dsb 15, $00
	.db $0E $00 $00 $00 $00 $00 $00 $D0 $00 $00 $0D
	.dsb 10, $00
	.db $13 $22 $22 $22 $22 $22 $24 $10
	.dsb 11, $00
	.db $0E
	.dsb 24, $00
	.db $22 $22 $24 $10 $00 $00 $00 $00 $00 $00 $00 $00 $13 $22 $22 $22
	.dsb 22, $00
	.db $D0 $00 $00 $0D
	.dsb 10, $00
	.db $13 $22 $22 $22 $22 $22 $24 $10 $00 $00 $00 $0E $00 $00 $00 $00
	.db $00 $00 $E0 $00 $00 $0E
	.dsb 54, $00
	
; Data from 499C to 4ADB (320 bytes)	
_DATA_499C_:	
	.db $00 $00 $00 $0E $00 $00 $00 $00 $00 $00 $00 $00 $E0
	.dsb 34, $00
	.db $0E
	.dsb 19, $00
	.db $0D $00 $00 $00 $F0 $00 $00 $00 $00 $D0 $00 $00 $00 $01 $32
	.dsb 12, $22
	.db $41 $00 $00 $00 $00 $0E $00 $00 $00 $00 $00 $00 $00 $00 $E0
	.dsb 38, $00
	.db $0D $00 $00 $00 $00 $00 $00 $00 $00 $D0 $00 $00 $00 $22 $22 $22
	.db $22 $22 $22 $41 $00 $01 $32 $22 $22 $22 $22 $22 $22 $00 $00 $00
	.db $0E
	.dsb 27, $00
	.db $0E
	.dsb 19, $00
	.db $0D $00 $00 $00 $00 $00 $00 $00 $00 $D0 $00 $00 $00 $01 $32
	.dsb 12, $22
	.db $41 $00 $00 $00 $00 $00 $00 $00 $00 $0E
	.dsb 56, $00
	
; Data from 4ADC to 4C1B (320 bytes)	
_DATA_4ADC_:	
	.db $00 $00 $00 $00 $E0 $00 $00 $00 $00 $00 $00 $0E
	.dsb 20, $00
	.db $D0
	.dsb 15, $00
	.db $22 $22 $41
	.dsb 9, $00
	.db $01 $32 $22 $22 $00 $00 $00 $00 $E0 $00 $00 $00 $00 $00 $00 $0E
	.dsb 40, $00
	.db $D0 $00 $00 $00 $00 $00 $00 $0D $00 $00 $00 $00 $22 $22 $22 $22
	.db $22 $24 $10 $00 $00 $13 $22 $22 $22 $22 $22 $22 $00 $00 $00 $00
	.db $E0 $00 $00 $00 $00 $00 $00 $0E
	.dsb 56, $00
	.db $D0 $00 $00 $00 $00 $00 $00 $D0 $00 $00 $00 $00 $22 $22 $22 $22
	.db $22 $22 $41 $00 $01 $32 $22 $22 $22 $22 $22 $22 $00 $00 $00 $00
	.db $E0 $00 $00 $00 $00 $00 $00 $0E
	.dsb 52, $00
	.db $D0 $00 $00 $00 $00 $00 $00 $F0 $00 $00 $00 $00 $00 $00 $00 $00
	
; Data from 4C1C to 4D5B (320 bytes)	
_DATA_4C1C_:	
	.db $00 $00 $00 $0E $00 $00 $00 $00 $00 $00 $00 $0E
	.dsb 27, $00
	.db $F0
	.dsb 13, $00
	.db $13 $22 $22 $22 $24 $10
	.dsb 12, $00
	.db $0E $00 $00 $00 $00 $00 $00 $00 $0E
	.dsb 19, $00
	.db $0D $00 $00 $00 $00 $00 $00 $00 $0D $00 $00 $00 $00 $00 $13 $22
	.db $22 $22 $24 $10 $00 $00 $13 $22 $22 $22 $24 $10
	.dsb 20, $00
	.db $0E $00 $00 $00 $00 $00 $00 $00 $0E $00 $00 $00 $00 $D0
	.dsb 15, $00
	.db $22 $24 $10
	.dsb 10, $00
	.db $13 $22 $22 $00 $00 $00 $00 $00 $00 $00 $0E
	.dsb 27, $00
	.db $0D $00 $00 $00 $00 $00 $00 $00 $0D $00 $00 $00 $00 $00 $13 $22
	.db $22 $22 $24 $10 $00 $00 $13 $22 $22 $22 $24 $10 $0E
	.dsb 55, $00
	.db $0D $00 $00 $00 $00 $00 $00 $00 $00
	
; Data from 4D5C to 4E9B (320 bytes)	
_DATA_4D5C_:	
	.db $00 $0E $15 $61 $E0
	.dsb 13, $00
	.db $15 $61
	.dsb 12, $00
	.db $0D $00 $15 $61 $00 $00 $00 $F0 $00 $00 $D0 $00 $E0 $00 $00 $00
	.db $22 $22 $29 $B1 $01 $32 $22 $22 $22 $22 $41 $00 $01 $32 $22 $22
	.db $00 $00 $00 $00 $01 $56 $10 $00 $00 $0E $00 $00 $01 $56 $1E $00
	.db $00 $00 $00 $00 $01 $56 $10 $00 $00 $00 $00 $00 $01 $56 $10 $00
	.db $00 $00 $00 $00 $01 $56 $10 $00 $00 $00 $00 $00 $01 $56 $10 $00
	.db $00 $00 $00 $00 $01 $56 $10 $00 $00 $00 $00 $00 $01 $56 $10 $00
	.db $00 $00 $00 $00 $D1 $56 $10 $00 $00 $00 $00 $00 $01 $56 $10 $00
	.db $22 $22 $22 $22 $22 $9B $10 $13 $22 $22 $22 $22 $22 $9B $10 $13
	.db $61 $00 $00 $00 $00 $00 $00 $15 $61 $E0 $00 $00 $00 $00 $00 $15
	.db $61 $00 $00 $00 $00 $00 $00 $15 $61 $00 $00 $00 $00 $00 $00 $15
	.db $61 $00 $00 $00 $00 $00 $00 $15 $61 $00 $00 $00 $00 $00 $00 $15
	.db $61 $00 $00 $00 $00 $D0 $00 $15 $61 $00 $00 $00 $00 $D0 $00 $15
	.db $B1 $01 $32 $22 $22 $22 $22 $29 $B1 $01 $32 $22 $22 $22 $22 $29
	.db $00 $01 $56 $10 $0E
	.dsb 10, $00
	.db $E0 $00 $01 $56 $10
	.dsb 13, $00
	.db $01 $56 $10
	.dsb 13, $00
	.db $01 $56 $10
	.dsb 13, $00
	.db $01 $56 $10 $00 $00 $00 $00 $D0 $00 $00 $00 $00 $00 $00 $00
	
; Data from 4E9C to 4FDB (320 bytes)	
_DATA_4E9C_:	
	.db $00 $00 $00 $E0
	.dsb 34, $00
	.db $0D $F0
	.dsb 12, $00
	.db $01 $32
	.dsb 9, $22
	.db $41
	.dsb 10, $00
	.db $E0 $00 $00 $00 $15 $61
	.dsb 13, $00
	.db $0E $15 $61 $0D
	.dsb 13, $00
	.db $15 $61 $22 $22 $41
	.dsb 11, $00
	.db $17 $82 $0E $15 $61 $00 $00 $00 $0D
	.dsb 10, $00
	.db $15 $61 $00 $01 $32 $22 $22 $22 $22 $24 $10 $00 $00 $00 $00 $00
	.db $15 $61 $0E $01 $56 $10 $0E $00 $00 $00 $00 $00 $00 $00 $00 $22
	.db $29 $B1 $00 $01 $56 $10 $00 $00 $00 $00 $00 $01 $32 $22 $22 $00
	.db $00 $00 $00 $01 $56 $10
	.dsb 13, $00
	.db $01 $56 $10
	.dsb 13, $00
	.db $01 $56 $1D $00 $00 $00 $00 $00 $0D $00 $00 $00 $22 $22 $22 $41
	.db $01 $78 $22 $22 $24 $10 $13 $22 $22 $22 $22 $22 $00 $E0 $15 $61
	.db $00 $00 $00 $0E
	.dsb 10, $00
	.db $15 $61
	.dsb 14, $00
	.db $15 $61
	.dsb 14, $00
	.db $15 $61 $00 $00 $0D
	.dsb 9, $00
	
; Data from 4FDC to 511B (320 bytes)	
_DATA_4FDC_:	
	.db $00 $00 $00 $00 $00 $00 $00 $0E
	.dsb 25, $00
	.db $13 $22 $22 $22 $22 $24 $10 $13 $22 $22 $22 $22 $24 $10 $00 $00
	.db $15 $61 $E0 $00 $00 $00 $00 $00 $00 $00 $00 $E1 $56 $10 $00 $00
	.db $15 $61
	.dsb 9, $00
	.db $01 $56 $10 $00 $00 $15 $61
	.dsb 9, $00
	.db $01 $56 $10 $0E $00 $15 $61 $00 $00 $D0 $00 $00 $00 $00 $0D $00
	.db $01 $56 $10 $00 $00 $15 $61 $01 $32 $22 $24 $10 $13 $22 $22 $41
	.db $01 $56 $10 $00 $00 $15 $61 $00 $00 $E1 $56 $1E $15 $61 $E0 $00
	.db $01 $56 $10 $00 $00 $15 $61 $00 $00 $01 $56 $10 $15 $61 $00 $00
	.db $01 $56 $10 $00 $00 $15 $61 $00 $00 $01 $56 $10 $15 $61 $00 $00
	.db $01 $56 $10 $00 $00 $15 $61 $D0 $00 $01 $56 $10 $15 $61 $00 $00
	.db $D1 $56 $10 $00 $00 $17 $82 $24 $10 $01 $56 $10 $15 $61 $00 $13
	.db $22 $9B $10 $00 $00 $00 $00 $00 $00 $01 $56 $10 $15 $61
	.dsb 11, $00
	.db $01 $56 $10 $15 $61
	.dsb 11, $00
	.db $01 $56 $10 $15 $61 $00 $00 $00 $00 $00 $0E $13 $22 $22 $22 $22
	.db $22 $9B $10 $17 $82 $22 $22 $22 $22 $24 $10
	.dsb 35, $00
	.db $0D $00 $00 $00 $F0 $00 $00 $00 $00 $D0 $00 $00 $00
	
; Data from 511C to 525B (320 bytes)	
_DATA_511C_:	
	.db $00 $00 $0E $00 $00 $00 $00 $0E $00 $00 $00 $00 $0E $00 $00 $00
	.db $00 $00 $00 $00 $0D $00 $00 $00 $00 $00 $00 $D0 $00 $00 $00 $00
	.db $00 $00 $00 $13 $24 $10 $00 $00 $00 $00 $13 $24 $10 $00 $00 $00
	.db $13 $22 $22 $22 $22 $22 $24 $10 $13 $22 $22 $22 $22 $22 $24 $10
	.dsb 20, $00
	.db $E0 $00 $00 $00 $00 $00 $00 $0E
	.dsb 12, $00
	.db $D0
	.dsb 13, $00
	.db $01 $32 $41
	.dsb 46, $00
	.db $0D $00 $00 $00 $00 $00 $00 $00 $00 $D0 $00 $00 $00 $E0 $13 $22
	.db $22 $22 $24 $10 $0E $00 $00 $00 $00 $24 $10
	.dsb 12, $00
	.db $13 $22
	.dsb 39, $00
	.db $F0 $00 $00 $00 $00 $00 $00 $00 $0E $00 $00 $00 $01 $32 $22 $22
	.db $22 $22 $22 $22 $41
	.dsb 43, $00
	.db $0D $00 $00 $00 $00 $00 $00 $00 $00
	
; Data from 525C to 539B (320 bytes)	
_DATA_525C_:	
	.dsb 11, $00
	.db $E0
	.dsb 10, $00
	.db $D0
	.dsb 9, $00
	.db $24 $10 $13 $22 $22 $22 $22 $22 $24 $10 $00 $00 $00 $13 $22 $22
	.db $00 $00 $00 $00 $00 $0E $00 $01 $56 $10 $00 $00 $00 $00 $0E $00
	.db $00 $00 $00 $00 $00 $00 $00 $01 $78 $24 $10
	.dsb 13, $00
	.db $0E
	.dsb 24, $00
	.db $0E $13 $22 $24 $10 $00 $00 $00 $00 $13 $22 $24 $10 $00 $00 $00
	.db $00 $00 $01 $56 $10 $00 $00 $00 $00 $15 $61 $00 $00 $00 $00 $00
	.db $00 $00 $01 $56 $10 $00 $00 $00 $00 $15 $61 $00 $00 $00 $00 $00
	.db $00 $00 $01 $56 $10 $00 $00 $00 $00 $15 $61 $00 $00 $00 $00 $13
	.db $22 $24 $11 $56 $10 $D0 $00 $00 $0D $15 $61 $13 $22 $24 $1E $00
	.db $00 $00 $01 $78 $22 $24 $10 $13 $22 $29 $B1 $E0
	.dsb 21, $00
	.db $0E
	.dsb 12, $00
	.db $0D $24 $10 $00 $00 $00 $00 $00 $F0 $00 $00 $00 $00 $00 $00 $13
	.db $22 $00 $00 $00 $00 $13 $22 $22 $22 $22 $22 $24 $10
	.dsb 40, $00
	.db $D0 $00 $00 $00 $00 $00 $00 $00 $D0 $00 $00 $00
	
; Data from 539C to 54DB (320 bytes)	
_DATA_539C_:	
	.db $00 $00 $00 $00 $E0 $00 $00 $00 $00 $00 $00 $0E
	.dsb 27, $00
	.db $F0
	.dsb 13, $00
	.db $13 $22 $22 $22 $24 $10
	.dsb 39, $00
	.db $E0 $00 $00 $00 $D0 $00 $00 $0D $00 $00 $00 $E0 $00 $0E $00 $00
	.db $01 $32 $22 $22 $41 $0E $01 $32 $22 $22 $41
	.dsb 38, $00
	.db $0D $00 $00 $00 $00 $00 $00 $00 $00 $D0 $00 $00 $00 $13 $22 $22
	.db $24 $10 $00 $00 $00 $00 $00 $00 $13 $22 $22 $24 $10 $00 $00 $00
	.db $00 $E0 $00 $00 $00 $00 $00 $00 $0E
	.dsb 21, $00
	.db $D0
	.dsb 13, $00
	.db $D0 $22 $41
	.dsb 11, $00
	.db $01 $32 $22
	.dsb 64, $00
	
; Data from 54DC to 561B (320 bytes)	
_DATA_54DC_:	
	.db $00 $00 $00 $00 $00 $00 $00 $0E
	.dsb 23, $00
	.db $0E $00 $00 $00 $13 $22 $22 $22 $22 $22 $22 $22 $24 $10
	.dsb 30, $00
	.db $0E $00 $00 $00 $00 $00 $00 $00 $00 $E0 $00 $0D $00 $00 $00 $00
	.db $00 $00 $00 $D0 $00 $22 $24 $10 $00 $00 $01 $32 $22 $22 $22 $41
	.db $00 $00 $13 $22 $22 $00 $00 $00 $00 $00 $00 $00 $00 $0E $15 $61
	.dsb 14, $00
	.db $15 $61
	.dsb 14, $00
	.db $15 $61
	.dsb 9, $00
	.db $D0 $00 $00 $00 $00 $15 $61 $D0 $00 $00 $00 $00 $00 $0E $00 $13
	.db $22 $22 $22 $24 $10 $17 $82 $22 $22 $24 $10 $E0 $00 $00 $00 $15
	.db $61 $00 $00 $00 $00 $15 $61 $00 $00 $00 $00 $00 $00 $00 $00 $15
	.db $61 $00 $00 $00 $00 $15 $61 $00 $00 $00 $00 $00 $00 $00 $00 $15
	.db $61 $00 $00 $D0 $00 $15 $61 $E0 $00 $00 $00 $00 $00 $00 $00 $15
	.db $61 $00 $13 $22 $22 $29 $B1 $00 $00 $00 $00 $00 $22 $22 $22 $29
	.db $B1
	.dsb 10, $00
	.db $13
	.dsb 39, $00
	.db $F0 $00 $00 $00 $00 $00 $00 $00 $0D
	
; Data from 561C to 575B (320 bytes)	
_DATA_561C_:	
	.db $00 $00 $00 $00 $00 $00 $00 $0E $00 $00 $00 $00 $00 $00 $00 $0E
	.dsb 16, $00
	.db $24 $10 $00 $00 $00 $00 $13 $22 $24 $10 $00 $00 $00 $00 $13 $22
	.dsb 35, $00
	.db $0E $00 $0D $00 $00 $00 $0D $00 $0E $00 $00 $00 $00 $13 $22 $24
	.db $10 $13 $22 $24 $10 $13 $22 $24 $10 $13 $22 $24 $10 $00 $00 $00
	.db $00 $00 $00 $00 $0E $00 $00 $00 $00 $00 $00 $00 $0E
	.dsb 19, $00
	.db $0D $00 $00 $00 $00 $00 $00 $00 $0D $00 $00 $00 $00 $00 $00 $13
	.db $22 $24 $10 $00 $00 $00 $00 $13 $22 $24 $10
	.dsb 37, $00
	.db $0E $00 $00 $00 $00 $00 $00 $00 $0E $00 $00 $00 $00 $13 $22 $24
	.db $10 $13 $22 $24 $10 $13 $22 $24 $10 $13 $22 $24 $10
	.dsb 39, $00
	.db $F0 $00 $00 $00 $00 $00 $00 $00 $00 $24 $10 $00 $00 $00 $00 $13
	.db $22 $24 $10 $00 $00 $00 $00 $13 $22 $56 $10 $D0 $00 $00 $00 $15
	.db $61 $56 $10 $00 $00 $00 $0D $15 $61
	
; Data from 575C to 589B (320 bytes)	
_DATA_575C_:	
	.dsb 20, $00
	.db $D0 $0D $00 $00 $00 $00 $D0 $0D $00 $00 $00 $00 $00 $00 $E1 $32
	.db $22 $22 $41 $00 $01 $32 $22 $22 $41 $E0 $00 $00 $00 $00 $01 $56
	.db $1E $00 $00 $00 $00 $00 $0E $15 $61 $00 $00 $00 $00 $00 $01 $56
	.db $10 $00 $00 $00 $00 $00 $00 $15 $61 $00 $00 $00 $00 $00 $01 $56
	.db $10 $00 $00 $F0 $00 $00 $00 $15 $61 $00 $00 $00 $00 $00 $01 $56
	.db $10 $00 $13 $22 $24 $10 $00 $15 $61 $00 $00 $00 $01 $32 $22 $9B
	.db $10 $00 $0E $00 $00 $E0 $00 $17 $82 $22 $41
	.dsb 52, $00
	.db $0D $00 $00 $00 $00 $00 $00 $00 $00 $D0 $00 $00 $00 $01 $32 $22
	.db $24 $10 $00 $00 $00 $00 $00 $00 $13 $22 $22 $41 $0E $00 $00 $01
	.db $56 $10 $00 $00 $00 $00 $00 $00 $15 $61 $00 $00 $00 $00 $00 $01
	.db $56 $10 $00 $00 $0E $00 $00 $00 $15 $61 $00 $00 $00 $00 $00 $01
	.db $56 $10 $00 $00 $00 $00 $00 $00 $15 $61 $00 $00 $00 $00 $00 $01
	.db $78 $22 $22 $41 $00 $01 $32 $22 $29 $B1
	.dsb 51, $00
	
; Data from 589C to 59DB (320 bytes)	
_DATA_589C_:	
	.dsb 15, $00
	.db $0E $00 $00 $00 $00 $00 $D0 $00 $00 $00 $00 $0D $00 $00 $00 $00
	.db $00 $22 $24 $10 $13 $22 $22 $41 $E0 $E1 $32 $22 $24 $10 $13 $22
	.db $22 $01 $56 $10 $00 $00 $15 $61 $00 $01 $56 $10 $00 $00 $15 $61
	.db $0E $01 $56 $10 $00 $00 $15 $61 $00 $01 $56 $10 $00 $00 $15 $61
	.db $00 $01 $56 $10 $00 $00 $15 $61 $00 $01 $56 $10 $00 $00 $15 $61
	.db $00 $01 $56 $10 $0D $00 $15 $61 $00 $01 $56 $10 $00 $D0 $15 $61
	.db $00 $01 $78 $22 $24 $10 $00 $00 $00 $00 $00 $00 $13 $22 $29 $B1
	.dsb 49, $00
	.db $22 $24 $10 $13 $22 $22 $41 $00 $01 $32 $22 $24 $10 $13 $22 $22
	.db $01 $56 $10 $00 $0E $15 $61 $00 $01 $56 $1E $00 $00 $15 $61 $0E
	.db $01 $56 $10 $00 $00 $15 $61 $00 $01 $56 $10 $00 $00 $15 $61 $00
	.db $01 $56 $10 $00 $00 $15 $61 $F0 $01 $56 $10 $00 $00 $15 $61 $00
	.db $01 $56 $10 $0D $00 $17 $82 $22 $22 $9B $10 $00 $D0 $15 $61 $00
	.db $01 $78 $22 $24 $10 $00 $00 $0E $00 $00 $00 $13 $22 $29 $B1
	.dsb 49, $00
	
; Data from 59DC to 5B1B (320 bytes)	
_DATA_59DC_:	
	.dsb 18, $00
	.db $E0
	.dsb 10, $00
	.db $0E $00 $00 $00 $00 $00 $00 $01 $32 $24 $10 $13 $22 $41
	.dsb 9, $00
	.db $01 $56 $56 $10 $15 $65 $61
	.dsb 9, $00
	.db $01 $56 $56 $10 $15 $65 $61 $00 $00 $00 $00 $00 $E0 $00 $00 $00
	.db $D1 $56 $56 $1E $15 $65 $61 $D0 $00 $00 $00 $E0 $00 $00 $00 $13
	.db $22 $9B $56 $10 $15 $67 $82 $24 $10 $00 $00 $00 $00 $00 $00 $15
	.db $61 $01 $56 $10 $15 $61 $01 $56 $10 $00 $00 $00 $00 $00 $00 $15
	.db $61 $E1 $56 $10 $15 $61 $E1 $56 $10 $00 $00 $00 $00 $00 $0D $15
	.db $61 $01 $56 $10 $15 $61 $01 $56 $1D $00 $00 $0E $00 $01 $32 $29
	.db $B1 $01 $56 $10 $15 $61 $01 $78 $22 $41 $00 $00 $00 $01 $56 $10
	.db $00 $01 $56 $10 $15 $61 $00 $00 $15 $61 $00 $00 $00 $01 $56 $10
	.db $00 $01 $56 $10 $15 $61 $00 $00 $15 $61 $00 $00 $00 $D1 $56 $10
	.db $00 $01 $56 $10 $15 $61 $00 $00 $15 $61 $D0 $00 $13 $22 $9B $10
	.db $00 $01 $56 $10 $15 $61 $00 $00 $17 $82 $24 $10 $00 $00 $00 $00
	.db $00 $01 $56 $10 $15 $61
	.dsb 10, $00
	.db $13 $22 $9B $10 $17 $82 $24 $10
	.dsb 43, $00
	.db $F0 $00 $00 $00 $00 $00 $00 $00 $00
	
; Data from 5B1C to 5C5B (320 bytes)	
_DATA_5B1C_:	
	.db $0E
	.dsb 38, $00
	.db $F0
	.dsb 9, $00
	.db $01 $32
	.dsb 11, $22
	.db $41
	.dsb 14, $00
	.db $15 $61
	.dsb 13, $00
	.db $E0 $15 $61 $00 $00 $00 $D0 $00 $00 $00 $00 $00 $00 $D0 $00 $00
	.db $00 $15 $61 $00 $01 $32 $22 $22 $22 $22 $22 $22 $22 $24 $10 $00
	.db $00 $15 $61 $00 $00 $00 $00 $00 $00 $00 $00 $0E
	.dsb 23, $00
	.db $E0 $00 $0E $00 $00 $D0 $00 $00 $00 $00 $00 $00 $D0 $00 $00 $00
	.db $00 $00 $00 $01 $32 $22 $22 $22 $22 $22 $22 $22 $24 $10
	.dsb 10, $00
	.db $0E $00 $00 $00 $00 $00 $13 $22 $41
	.dsb 13, $00
	.db $15 $61 $00 $00 $00 $D0 $00 $00 $00 $00 $00 $00 $00 $00 $D0 $00
	.db $15 $61 $00 $01 $32
	.dsb 11, $22
	.db $29 $B1 $00 $00 $00 $00 $00 $E0
	.dsb 9, $00
	.db $E0
	.dsb 49, $00
	
; Data from 5C5C to 5D9B (320 bytes)	
_DATA_5C5C_:	
	.db $E0
	.dsb 22, $00
	.db $0E
	.dsb 26, $00
	.db $01 $34 $10 $00 $00 $00 $00 $00 $00 $13 $41 $00 $00 $00 $00 $00
	.db $01 $56 $10 $00 $00 $00 $00 $00 $00 $15 $61 $00 $00 $00 $00 $D0
	.db $01 $56 $10 $00 $00 $00 $00 $00 $00 $15 $61 $00 $0D $00 $22 $41
	.db $01 $56 $10 $00 $00 $00 $00 $00 $00 $15 $61 $01 $32 $22 $15 $61
	.db $01 $56 $10 $00 $00 $00 $D0 $00 $00 $15 $61 $01 $56 $1E $15 $61
	.db $E1 $56 $10 $01 $32 $22 $22 $41 $00 $15 $61 $E1 $56 $10 $15 $61
	.db $01 $56 $10 $01 $56 $10 $15 $61 $00 $15 $61 $01 $56 $10 $15 $61
	.db $01 $56 $10 $01 $78 $22 $29 $B1 $00 $15 $61 $01 $56 $10 $17 $82
	.db $22 $9B $10 $00 $00 $0E $00 $00 $00 $17 $82 $22 $9B $10
	.dsb 21, $00
	.db $0D $00 $00 $00 $00 $D0
	.dsb 9, $00
	.db $13 $22 $41 $00 $01 $32 $24 $10 $00 $00 $00 $0D $24 $10 $00 $00
	.db $15 $65 $61 $00 $01 $56 $56 $10 $00 $00 $13 $22 $56 $10 $0E $00
	.db $15 $65 $61 $00 $01 $56 $56 $10 $00 $E0 $15 $61 $56 $10 $00 $00
	.db $15 $65 $61 $00 $01 $56 $56 $10 $00 $00 $15 $61 $56 $10 $00 $00
	.db $15 $65 $61 $00 $01 $56 $56 $10 $00 $00 $15 $61 $9B $10 $00 $00
	.db $17 $89 $B1 $F0 $01 $78 $9B $10 $00 $00 $17 $82
	
; Data from 5D9C to 5EDB (320 bytes)	
_DATA_5D9C_:	
	.db $00 $00 $00 $00 $00 $00 $0E $00 $00 $E0
	.dsb 9, $00
	.db $E0 $00 $00 $00 $00 $00 $00 $00 $00 $0E
	.dsb 28, $00
	.db $DD $00 $00 $00 $00 $E0 $00 $00 $E0 $00 $00 $00 $13 $24 $10 $13
	.db $24 $10
	.dsb 10, $00
	.db $15 $61 $00 $01 $56 $10
	.dsb 9, $00
	.db $13 $29 $B1 $00 $01 $56 $10 $D0 $00 $00 $00 $00 $00 $00 $00 $00
	.db $15 $61 $00 $00 $01 $78 $22 $41 $00 $00 $00 $00 $00 $00 $00 $13
	.db $29 $B1 $00 $00 $00 $00 $15 $61 $00 $00 $00 $00 $00 $00 $00 $15
	.db $61 $00 $00 $00 $00 $00 $15 $61 $0D $00 $00 $00 $00 $00 $13 $29
	.db $B1 $E0 $00 $00 $00 $0E $17 $82 $24 $10 $00 $00 $00 $00 $15 $61
	.db $00 $00 $00 $F0 $00 $00 $00 $01 $56 $10 $00 $00 $00 $13 $29 $B1
	.db $00 $00 $13 $22 $24 $10 $00 $01 $56 $10 $D0 $00 $00 $15 $61 $00
	.db $00 $00 $15 $61 $56 $10 $00 $01 $78 $22 $41 $00 $13 $29 $B1 $00
	.db $00 $00 $15 $61 $56 $10 $00 $00 $00 $15 $61 $00 $15 $61 $00 $00
	.db $00 $00 $15 $61 $56 $10 $00 $00 $00 $15 $61 $00 $15 $61 $00 $00
	.db $00 $00 $15 $61 $56 $10 $00 $00 $00 $15 $61 $00 $00 $00 $00 $00
	.db $00 $00 $15 $61 $56 $10
	.dsb 12, $00
	.db $15 $61 $56 $10
	.dsb 12, $00
	.db $15 $61 $56 $10 $00 $00 $00 $00 $00 $0D
	
; Data from 5EDC to 601B (320 bytes)	
_DATA_5EDC_:	
	.dsb 16, $00
	.db $0E $00 $00 $00 $00 $D0 $00 $0E $00 $00 $D0 $00 $00 $00 $00 $00
	.db $01 $32 $22 $22 $22 $41 $00 $00 $00 $13 $22 $22 $22 $24 $10 $00
	.db $01 $56 $1E
	.dsb 9, $00
	.db $E1 $56 $10 $00 $01 $56 $10
	.dsb 9, $00
	.db $01 $56 $10 $00 $01 $56 $10 $00 $00 $D0 $00 $00 $00 $00 $D0 $00
	.db $01 $56 $10 $00 $01 $56 $10 $13 $22 $22 $41 $00 $13 $22 $22 $41
	.db $01 $56 $10 $00 $01 $56 $10 $00 $00 $00 $00 $0E $00 $00 $00 $00
	.db $01 $56 $10 $00 $01 $56 $10
	.dsb 9, $00
	.db $01 $56 $10 $00 $01 $56 $10
	.dsb 9, $00
	.db $01 $56 $10 $00 $00 $00 $00 $00 $00 $D0 $00 $00 $00 $00 $D0 $00
	.db $00 $00 $00 $00 $00 $00 $00 $13 $22 $22 $41 $00 $13 $22 $22 $41
	.dsb 18, $00
	.db $E0
	.dsb 17, $00
	.db $41 $00 $0E
	.dsb 10, $00
	.db $E0 $13 $22 $61 $00 $00 $00 $00 $00 $00 $F0 $00 $00 $00 $00 $00
	.db $00 $15 $65 $61 $00 $00 $13 $22 $22 $22 $22 $22 $22 $22 $41 $00
	.db $00 $15 $65 $61
	.dsb 13, $00
	.db $15 $65 $61
	.dsb 13, $00
	.db $15 $65 $61
	.dsb 13, $00
	.db $15 $65
	
; Data from 601C to 615B (320 bytes)	
_DATA_601C_:	
	.db $00 $00 $00 $0E $00 $00 $00 $00 $00 $00 $00 $0E
	.dsb 10, $00
	.db $0D $00 $00 $D0 $00 $00 $00 $00 $00 $00 $22 $22 $22 $22 $22 $22
	.db $24 $10 $13 $22 $22 $22 $22 $22 $22 $22
	.dsb 33, $00
	.db $0E
	.dsb 12, $00
	.db $E0
	.dsb 40, $00
	.db $F0
	.dsb 14, $00
	.db $13 $22 $24 $10
	.dsb 25, $00
	.db $0E $00 $00 $00 $00 $00 $00 $00 $00 $E0
	.dsb 56, $00
	.db $0D $00 $00 $D0 $00 $00 $00 $00 $00 $00 $00 $22 $22 $22 $22 $22
	.db $24 $10 $13 $22 $22 $22 $22 $22 $22 $22 $22 $00 $00 $00 $0E $00
	.db $00 $00 $00 $00 $00 $00 $00 $E0
	.dsb 26, $00
	.db $D0 $00 $00 $00 $00 $00 $00 $00 $0D
	
; Data from 615C to 629B (320 bytes)	
_DATA_615C_:	
	.db $00 $00 $E0
	.dsb 15, $00
	.db $0D
	.dsb 13, $00
	.db $13 $22 $22 $41 $00 $00 $00 $00 $13 $22 $22 $41 $00 $00 $00 $00
	.db $15 $61 $00 $00 $00 $00 $00 $00 $15 $61 $00 $00 $00 $00 $00 $0E
	.db $15 $61 $00 $00 $00 $00 $D0 $0E $15 $61 $00 $0E $00 $00 $D0 $00
	.db $15 $61 $00 $00 $13 $22 $22 $41 $15 $61 $00 $00 $13 $22 $22 $41
	.db $15 $61 $00 $00 $00 $00 $15 $61 $15 $61 $00 $00 $00 $00 $15 $61
	.db $15 $61 $00 $00 $00 $00 $15 $61 $15 $61 $00 $00 $00 $0E $15 $61
	.db $15 $61 $00 $00 $00 $00 $15 $61 $15 $61 $0D $00 $00 $00 $15 $61
	.db $17 $82 $22 $41 $00 $00 $15 $61 $17 $82 $22 $41 $00 $00 $15 $61
	.db $15 $61 $E0 $00 $00 $00 $15 $61 $15 $61 $E0 $00 $00 $00 $15 $61
	.db $15 $61 $00 $00 $00 $00 $15 $61 $15 $61 $00 $00 $00 $00 $15 $61
	.db $15 $61 $00 $00 $00 $0D $15 $61 $15 $61 $00 $00 $00 $00 $15 $61
	.db $15 $61 $00 $00 $13 $22 $29 $B1 $15 $61 $00 $00 $13 $22 $29 $B1
	.db $15 $61 $00 $00 $00 $00 $E0 $00 $15 $61 $00 $00 $00 $00 $00 $00
	.db $15 $61 $00 $00 $00 $00 $00 $00 $15 $61 $0D $00 $00 $00 $00 $00
	.db $17 $82 $22 $41 $00 $00 $00 $00 $17 $82 $22 $41
	.dsb 43, $00
	.db $F0 $00 $00 $00 $00 $00 $00 $00 $00
	
; Data from 629C to 63DB (320 bytes)	
_DATA_629C_:	
	.db $E0 $00 $00 $00 $00 $E0 $00 $00 $00 $00 $00 $00 $E0
	.dsb 12, $00
	.db $0D
	.dsb 11, $00
	.db $13 $22 $22 $22 $24 $10
	.dsb 13, $00
	.db $15 $61
	.dsb 14, $00
	.db $15 $61
	.dsb 10, $00
	.db $D0 $00 $00 $00 $15 $61 $00 $00 $00 $00 $00 $00 $01 $32 $22 $22
	.db $22 $22 $22 $41 $17 $82 $22 $22 $22 $22 $22 $41 $00 $0E $15 $61
	.db $E0 $00 $00 $00 $00 $00 $00 $E1 $56 $1E $00 $00 $00 $00 $15 $61
	.db $00 $00 $00 $00 $00 $00 $00 $01 $56 $10 $00 $00 $00 $00 $15 $61
	.db $00 $00 $00 $0D $00 $D0 $00 $01 $56 $10 $00 $00 $00 $00 $15 $61
	.db $00 $00 $01 $32 $22 $41 $00 $01 $56 $10 $00 $00 $00 $00 $15 $61
	.db $00 $00 $00 $00 $00 $00 $00 $01 $56 $10 $00 $00 $0D $00 $15 $61
	.db $00 $00 $00 $00 $00 $00 $00 $01 $56 $10 $00 $00 $32 $22 $29 $B1
	.db $00 $00 $00 $00 $00 $00 $00 $01 $78 $22 $41 $01 $00 $0E $15 $61
	.db $00 $00 $00 $00 $00 $00 $00 $01 $56 $10 $00 $00 $00 $00 $15 $61
	.db $00 $00 $00 $F0 $00 $00 $00 $01 $56 $10 $00 $00 $00 $00 $17 $82
	.db $22 $22 $22 $22 $22 $22 $22 $22 $9B $10
	.dsb 41, $00
	.db $0D $00 $00 $00 $00 $00 $00 $00 $00
	
; Data from 63DC to 651B (320 bytes)	
_DATA_63DC_:	
	.db $00 $00 $00 $00 $00 $0E $00 $00 $00 $00 $E0
	.dsb 24, $00
	.db $0E
	.dsb 28, $00
	.db $E0
	.dsb 22, $00
	.db $F0 $00 $00 $00 $00 $E0
	.dsb 9, $00
	.db $13 $22 $24 $10
	.dsb 24, $00
	.db $E0
	.dsb 42, $00
	.db $E0
	.dsb 22, $00
	.db $0D $00 $00 $00 $00 $00 $0D $00 $00 $00 $00 $0D $24 $10 $00 $13
	.db $22 $24 $10 $0E $00 $13 $22 $24 $10 $00 $13 $22
	.dsb 82, $00
	.db $D0 $00 $00 $00 $00 $0D $00 $00 $00 $00 $00 $D0 $00 $00
	
; Data from 651C to 665B (320 bytes)	
_DATA_651C_:	
	.db $00 $00 $00 $00 $00 $00 $00 $00 $0E $00 $00 $00 $00 $00 $00 $00
	.db $0E $0D $DD
	.dsb 9, $00
	.db $0D $DD $00 $00 $01 $32 $22 $22 $22 $24 $10 $00 $01 $32 $22 $22
	.db $22 $24 $10 $00 $01 $56 $1E
	.dsb 9, $00
	.db $E1 $78 $24 $10 $01 $56 $10
	.dsb 9, $00
	.db $01 $56 $10 $00 $01 $56 $10
	.dsb 9, $00
	.db $01 $56 $10 $00 $32 $9B $10 $00 $00 $00 $01 $32 $22 $22 $22 $24
	.db $11 $56 $10 $01 $01 $56 $10 $00 $00 $00 $01 $56 $1E $00 $00 $00
	.db $01 $56 $10 $00 $01 $56 $10 $00 $00 $00 $01 $56 $10 $00 $00 $00
	.db $01 $56 $10 $00 $01 $56 $11 $32 $22 $22 $22 $9B $10 $00 $00 $00
	.db $01 $78 $24 $10 $01 $56 $10
	.dsb 9, $00
	.db $01 $56 $10 $00 $01 $56 $10
	.dsb 9, $00
	.db $01 $56 $10 $00 $32 $9B $10
	.dsb 9, $00
	.db $01 $56 $10 $01 $01 $78 $22 $22 $22 $24 $10 $0E $01 $32 $22 $22
	.db $22 $9B $10 $00 $00 $00 $E0
	.dsb 11, $00
	.db $E0
	.dsb 17, $00
	.db $41
	.dsb 13, $00
	.db $13 $22 $00 $00 $00 $00 $00 $00 $00 $F0
	.dsb 14, $00
	.db $13 $22 $24 $10
	.dsb 12, $00
	.db $15 $61 $56 $10 $00 $00 $00 $00 $00 $00
	
; Data from 665C to 679B (320 bytes)	
_DATA_665C_:	
	.db $E0 $00 $00 $00 $00 $0E $00 $00 $00 $00 $0E
	.dsb 29, $00
	.db $D0 $00 $00 $00 $00 $00 $00 $00 $24 $10 $00 $00 $00 $00 $01 $32
	.db $24 $10 $00 $00 $00 $00 $01 $32 $56 $10 $00 $00 $00 $00 $01 $56
	.db $56 $10 $00 $00 $00 $00 $01 $56 $9B $10 $00 $00 $00 $00 $01 $78
	.db $9B $10 $00 $00 $00 $00 $01 $78 $00 $00 $00 $D0 $00 $00 $00 $00
	.db $00 $00 $00 $00 $D0 $00 $00 $00 $00 $01 $32 $24 $10 $00 $00 $00
	.db $00 $00 $01 $32 $24 $10 $00 $00 $00 $E1 $56 $56 $10 $00 $00 $00
	.db $00 $00 $01 $56 $56 $1E $00 $00 $00 $01 $78 $9B $10 $00 $00 $00
	.db $00 $00 $01 $78 $9B $10
	.dsb 9, $00
	.db $F0 $00 $D0
	.dsb 12, $00
	.db $13 $22 $22 $41 $00 $00 $00 $00 $00 $00 $24 $10 $00 $00 $00 $00
	.db $00 $E0 $00 $E0 $00 $00 $00 $00 $01 $32 $56 $10
	.dsb 12, $00
	.db $01 $56 $9B $10
	.dsb 12, $00
	.db $01 $78 $E0
	.dsb 20, $00
	.db $0D $00 $00 $00 $00 $0D
	.dsb 9, $00
	.db $13 $22 $41 $00 $00 $13 $22 $41 $00 $00 $00 $00 $00 $00 $00 $00
	.db $15 $65 $61 $00 $00 $15 $65 $61 $00 $00 $00 $00 $00 $00 $00 $00
	.db $17 $89 $B1 $00 $00 $17 $89 $B1 $00 $00 $00 $00
	
; Data from 679C to 68DB (320 bytes)	
_DATA_679C_:	
	.db $00 $00 $00 $00 $0E
	.dsb 45, $00
	.db $D0 $00 $00 $00 $00 $00 $D0 $00 $00 $00 $00 $0D $00 $00 $13 $22
	.db $22 $41 $00 $00 $00 $13 $22 $41 $00 $01 $32 $22 $24 $10 $15 $61
	.db $15 $61 $00 $00 $00 $15 $61 $E0 $00 $01 $56 $10 $00 $00 $15 $61
	.db $15 $61 $00 $00 $00 $15 $61 $00 $00 $01 $56 $10 $00 $00 $15 $61
	.db $17 $82 $24 $11 $32 $29 $B1 $00 $13 $22 $9B $10 $00 $00 $15 $61
	.db $E0 $01 $56 $10 $00 $E0 $00 $00 $15 $61 $E0 $00 $00 $D0 $29 $B1
	.db $00 $01 $56 $10 $00 $00 $00 $00 $15 $61 $00 $00 $13 $22 $E0 $00
	.db $00 $01 $56 $10 $00 $00 $00 $00 $15 $61 $00 $00 $15 $61 $00 $00
	.db $00 $01 $56 $10 $00 $00 $00 $00 $15 $61 $00 $00 $15 $61 $00 $00
	.db $00 $01 $56 $10 $00 $00 $01 $32 $29 $B1 $00 $00 $15 $61 $00 $00
	.db $D0 $01 $56 $10 $00 $00 $01 $56 $1E $00 $00 $D0 $15 $61 $01 $32
	.db $24 $11 $56 $10 $00 $00 $01 $56 $10 $00 $13 $22 $29 $B1 $01 $56
	.db $56 $11 $78 $22 $41 $00 $01 $56 $10 $00 $00 $00 $00 $00 $01 $56
	.db $56 $10 $0E $15 $61 $00 $01 $56 $10 $00 $00 $00 $00 $00 $01 $56
	.db $56 $10 $00 $15 $61 $00 $01 $56 $10 $00 $00 $00 $00 $00 $01 $56
	.db $56 $10 $00 $15 $61 $00 $01 $56 $10 $00 $00 $00 $00 $00 $01 $56
	.db $56 $10 $00 $15 $61 $F0 $01 $56 $10 $00 $00 $00 $00 $00
	
; Data from 68DC to 6A1B (320 bytes)	
_DATA_68DC_:	
	.db $00 $00 $E0
	.dsb 10, $00
	.db $0E
	.dsb 24, $00
	.db $D0 $00 $E0 $0D $00 $00 $00 $00 $00 $0D $22 $22 $41 $00 $01 $32
	.db $24 $10 $13 $22 $41 $00 $01 $32 $22 $22 $00 $00 $00 $00 $01 $56
	.db $56 $10 $15 $65 $61
	.dsb 9, $00
	.db $01 $56 $56 $10 $15 $65 $61 $00 $00 $00 $00 $00 $00 $00 $00 $13
	.db $22 $9B $56 $10 $15 $67 $82 $24 $10 $00 $00 $00 $00 $00 $00 $15
	.db $61 $E1 $56 $10 $15 $61 $E1 $56 $10 $00 $00 $00 $00 $00 $00 $15
	.db $61 $01 $56 $1D $15 $61 $01 $56 $10 $00 $00 $00 $00 $01 $32 $29
	.db $B1 $01 $78 $22 $29 $B1 $01 $78 $22 $41
	.dsb 9, $00
	.db $0E
	.dsb 57, $00
	.db $D0
	.dsb 12, $00
	.db $0D $00 $13 $22 $22 $22 $22 $22 $41 $00 $01 $32 $22 $22 $22 $22
	.db $24 $10 $00 $00 $00 $00 $0E $15 $61 $00 $01 $56 $10 $E0
	.dsb 9, $00
	.db $15 $61 $00 $01 $56 $10
	.dsb 10, $00
	.db $15 $61 $00 $01 $56 $10
	.dsb 10, $00
	.db $15 $61 $F0 $01 $56 $10 $00 $00 $00 $00 $00
	
; Data from 6A1C to 6B5B (320 bytes)	
_DATA_6A1C_:	
	.dsb 17, $00
	.db $E0
	.dsb 12, $00
	.db $0E $00 $00 $00 $00 $00 $00 $00 $00 $F0 $0D
	.dsb 13, $00
	.db $13 $22 $24 $10
	.dsb 71, $00
	.db $0E
	.dsb 23, $00
	.db $0E $00 $0D $00 $D0 $00 $E0
	.dsb 10, $00
	.db $13 $22 $22 $24 $10
	.dsb 17, $00
	.db $0D $00 $00 $D0 $00 $E0 $00 $00 $00 $00 $00 $00 $00 $00 $0E $00
	.db $22 $22 $22 $24 $10
	.dsb 10, $00
	.db $13
	.dsb 17, $00
	.db $0E
	.dsb 69, $00
	.db $0D $00 $00 $00 $00 $00 $00 $00 $00
	
; Data from 6B5C to 6C9B (320 bytes)	
_DATA_6B5C_:	
	.db $00 $E0
	.dsb 12, $00
	.db $0E
	.dsb 24, $00
	.db $F0
	.dsb 11, $00
	.db $13 $22 $22 $22 $22 $22 $22 $22 $24 $10 $00 $00 $00 $E0 $00 $00
	.db $15 $61 $E0 $00 $00 $00 $00 $E1 $56 $10 $00 $00 $00 $00 $00 $00
	.db $15 $61 $00 $00 $00 $00 $00 $01 $56 $10 $00 $00 $00 $00 $01 $32
	.db $29 $B1 $00 $00 $0D $00 $00 $01 $56 $10 $00 $00 $00 $00 $01 $56
	.db $1E $00 $00 $01 $34 $10 $00 $01 $56 $10 $00 $00 $00 $00 $01 $56
	.db $10 $00 $00 $01 $56 $10 $00 $01 $78 $22 $41 $00 $00 $13 $22 $9B
	.db $10 $00 $00 $01 $56 $10 $00 $00 $00 $15 $61 $00 $00 $15 $61 $00
	.db $00 $00 $00 $D1 $56 $10 $D0 $00 $0E $15 $61 $00 $00 $15 $61 $00
	.db $00 $01 $32 $22 $9A $22 $24 $10 $00 $15 $61 $00 $00 $15 $61 $00
	.db $00 $01 $56 $10 $00 $E1 $56 $10 $00 $15 $61 $00 $00 $00 $00 $00
	.db $00 $01 $56 $10 $00 $01 $56 $10 $00 $15 $61 $00 $00 $00 $00 $00
	.db $00 $01 $56 $10 $00 $01 $56 $10 $00 $17 $82 $24 $10 $00 $00 $00
	.db $00 $01 $56 $10 $00 $D1 $56 $1D $00 $00 $01 $56 $10 $00 $00 $00
	.db $13 $22 $9B $10 $13 $22 $9A $22 $41 $00 $01 $56 $10 $00 $00 $00
	.db $15 $61 $00 $00 $00 $00 $00 $00 $00 $00 $01 $56 $10 $00 $00 $00
	.db $15 $61 $00 $00 $00 $00 $00 $00 $00 $00 $01 $56 $10 $00 $00 $00
	.db $15 $61 $D0 $00 $00 $00 $00 $00 $00 $00 $01 $56 $10
	
; Data from 6C9C to 6DDB (320 bytes)	
_DATA_6C9C_:	
	.db $0E $00 $00 $00 $00 $00 $00 $00 $0E $00 $00 $00 $00 $00 $00 $00
	.db $0D $00 $00 $00 $00 $00 $00 $00 $0D $00 $00 $00 $00 $00 $00 $00
	.db $24 $10 $00 $00 $00 $00 $01 $32 $24 $10 $00 $00 $00 $00 $01 $32
	.db $E0 $00 $00 $00 $00 $00 $00 $00 $E0
	.dsb 11, $00
	.db $E0 $00 $00 $00 $00 $00 $00 $00 $E0
	.dsb 27, $00
	.db $D0 $00 $00 $00 $00 $00 $00 $00 $22 $41 $00 $00 $00 $00 $13 $22
	.db $22 $41 $00 $00 $00 $00 $13 $22 $15 $61 $00 $00 $00 $00 $15 $61
	.db $15 $61 $00 $00 $00 $00 $15 $61 $29 $B1 $00 $00 $00 $00 $17 $82
	.db $29 $B1 $00 $00 $00 $00 $17 $82 $E0 $00 $00 $00 $00 $00 $00 $00
	.db $E0
	.dsb 27, $00
	.db $0D $00 $00 $00 $00 $00 $00 $0D $00 $00 $00 $00 $22 $22 $22 $22
	.db $24 $10 $00 $00 $D0 $00 $01 $32 $22 $22 $22 $22 $00 $00 $00 $01
	.db $56 $10 $01 $32 $24 $10 $01 $56 $10 $00 $00 $00 $32 $24 $32 $24
	.db $56 $10 $01 $56 $56 $10 $01 $56 $32 $24 $32 $24 $34 $11 $34 $34
	.db $56 $10 $01 $78 $9B $10 $01 $56 $34 $11 $34 $11 $34 $34 $32 $24
	.db $56 $10 $00 $00 $00 $00 $01 $56 $32 $24 $32 $24 $34 $34 $34 $34
	.db $56 $10 $00 $00 $00 $00 $01 $56 $11 $34 $34 $11 $32 $24 $34 $34
	.db $56 $10 $00 $F0 $00 $00 $01 $56 $32 $24 $32 $24
	
; Data from 6DDC to 6F21 (326 bytes)	
_DATA_6DDC_:	
	.dsb 256, $00
	.dsb 16, $22
	.dsb 48, $00
	.db $C3 $22 $6F $C3 $95 $73
	
_LABEL_6F22_:	
		call +
		ld ix, _RAM_C324_
		ld b, $06
-:	
		push bc
		bit 7, (ix+0)
		call nz, _LABEL_70F4_
		ld de, $001C
		add ix, de
		pop bc
		djnz -
		ret
	
+:	
		ld a, (_RAM_C320_)
		bit 7, a
		jp z, _LABEL_7388_
		cp $00
		jp z, _LABEL_7388_
		cp $FF
		jp z, _LABEL_7388_
		ld hl, $6F6D
		ld bc, $000D
		cpdr
		ret nz
		ld hl, $6F6E
		add hl, bc
		add hl, bc
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		jp (hl)
	
	; Data from 6F61 to 70F3 (403 bytes)
	.db $81 $82 $83 $84 $85 $86 $87 $88 $89 $90 $91 $92 $93 $88 $6F $96
	.db $6F $A4 $6F $B2 $6F $C0 $6F $CE $6F $ED $6F $13 $70 $33 $70 $54
	.db $70 $75 $70 $96 $70 $B5 $70 $CD $88 $73 $21 $97 $74 $11 $24 $C3
	.db $AF $08 $C3 $CD $70 $CD $88 $73 $21 $DF $76 $11 $24 $C3 $AF $08
	.db $C3 $CD $70 $CD $88 $73 $21 $EF $77 $11 $24 $C3 $AF $08 $C3 $CD
	.db $70 $CD $88 $73 $21 $7C $78 $11 $24 $C3 $AF $08 $C3 $CD $70 $CD
	.db $88 $73 $21 $42 $79 $11 $24 $C3 $AF $08 $C3 $CD $70 $21 $22 $C3
	.db $7E $E6 $4F $C2 $EE $70 $21 $21 $C3 $36 $06 $CD $54 $74 $CD $95
	.db $73 $21 $D5 $79 $11 $94 $C3 $AF $08 $C3 $CD $70 $21 $22 $C3 $7E
	.db $E6 $41 $C2 $EE $70 $CB $CE $21 $94 $C3 $36 $84 $21 $21 $C3 $36
	.db $04 $CD $54 $74 $CD $95 $73 $21 $36 $7A $11 $B0 $C3 $AF $08 $C3
	.db $CD $70 $21 $22 $C3 $CB $76 $C2 $EE $70 $CB $C6 $21 $21 $C3 $36
	.db $07 $CD $54 $74 $CD $95 $73 $21 $5E $7A $11 $78 $C3 $AF $08 $C3
	.db $CD $70 $21 $22 $C3 $7E $E6 $43 $C2 $EE $70 $CB $D6 $21 $21 $C3
	.db $36 $06 $CD $54 $74 $CD $95 $73 $21 $A2 $7A $11 $94 $C3 $AF $08
	.db $C3 $CD $70 $21 $22 $C3 $7E $E6 $43 $C2 $EE $70 $CB $D6 $21 $21
	.db $C3 $36 $06 $CD $54 $74 $CD $95 $73 $21 $ED $7A $11 $94 $C3 $AF
	.db $08 $C3 $CD $70 $21 $22 $C3 $7E $E6 $47 $C2 $EE $70 $CB $D6 $21
	.db $21 $C3 $36 $06 $CD $54 $74 $CD $95 $73 $21 $3F $7B $11 $94 $C3
	.db $AF $08 $C3 $CD $70 $21 $22 $C3 $7E $E6 $5F $C2 $EE $70 $21 $21
	.db $C3 $36 $06 $CD $54 $74 $CD $95 $73 $21 $C0 $7B $11 $B0 $C3 $AF
	.db $08 $C3 $CD $70 $21 $22 $C3 $CB $F6 $21 $21 $C3 $36 $07 $CD $54
	.db $74 $CD $95 $73 $21 $3C $7C $11 $78 $C3 $AF $08 $7E $23 $66 $6F
	.db $46 $23 $C5 $7E $23 $E5 $66 $6F $01 $0E $00 $ED $B0 $08 $12 $08
	.db $13 $AF $06 $0D $12 $13 $10 $FC $E1 $23 $C1 $10 $E5 $3E $80 $32
	.db $20 $C3 $C9
	
_LABEL_70F4_:	
		ld e, (ix+3)
		ld d, (ix+4)
		inc de
		ld (ix+3), e
		ld (ix+4), d
		ld l, (ix+5)
		ld h, (ix+6)
		or a
		sbc hl, de
		call z, _LABEL_7214_
		ld e, (ix+17)
		ld d, (ix+18)
		ld a, e
		or d
		jr nz, +
		ld (ix+23), $0F
		jp _LABEL_71BF_
	
+:	
		bit 5, (ix+0)
		jr nz, +
		ld (ix+19), e
		ld (ix+20), d
		jr ++
	
+:	
		push de
		ld l, (ix+21)
		ld h, (ix+22)
		or a
		sbc hl, de
		push af
		ld a, l
		jp p, +
		neg
+:	
		ld h, a
		ld e, (ix+3)
		call _LABEL_7435_
		ld e, (ix+5)
		call _LABEL_7441_
		ld e, a
		ld d, $00
		pop af
		ld a, e
		jp p, +
		neg
		jr z, +
		dec d
		ld e, a
+:	
		pop hl
		add hl, de
		ld (ix+19), l
		ld (ix+20), h
++:	
		ld a, (ix+12)
		or a
		jr nz, +
		ld a, (ix+13)
		cpl
		and $0F
		ld (ix+23), a
		jr ++
	
+:	
		dec a
		ld hl, $747C
		inc hl
		ld c, (ix+14)
		ld b, $00
		add hl, bc
		add hl, bc
		ld c, (hl)
		inc hl
		ld h, (hl)
		ld l, c
		ld c, $02
		add hl, bc
		ld c, (hl)
		inc hl
		ld h, (hl)
		ld l, c
		ld c, a
		ld b, $00
		add hl, bc
		add hl, bc
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		call _LABEL_71DD_
++:	
		bit 6, (ix+0)
		jr nz, _LABEL_71BF_
		ld a, (ix+1)
		and $0F
		ld c, a
		ld b, $00
		ld hl, _DATA_71D2_
		add hl, bc
		ld c, (hl)
		ld a, (ix+19)
		and $0F
		or c
		call _LABEL_7380_
		ld a, (ix+19)
		and $F0
		or (ix+20)
		rrca
		rrca
		rrca
		rrca
		call _LABEL_7380_
_LABEL_71BF_:	
		ld a, (ix+1)
		and $0F
		ld c, a
		ld b, $00
		ld hl, _DATA_71D6_
		add hl, bc
		ld a, (hl)
		or (ix+23)
		jp _LABEL_7380_
	
; Data from 71D2 to 71D5 (4 bytes)	
_DATA_71D2_:	
	.db $80 $A0 $C0 $C0
	
; Data from 71D6 to 71D9 (4 bytes)	
_DATA_71D6_:	
	.db $90 $B0 $D0 $F0
	
-:	
		ld (ix+15), a
_LABEL_71DD_:	
		push hl
		ld a, (ix+15)
		srl a
		push af
		ld c, a
		ld b, $00
		add hl, bc
		pop af
		ld a, (hl)
		pop hl
		jr c, ++
		rrca
		rrca
		rrca
		rrca
		or a
		jr z, -
		cp $10
		jr nz, +
		dec (ix+15)
		jr _LABEL_71DD_
	
+:	
		cp $20
		jr z, +++
++:	
		inc (ix+15)
		or $F0
		add a, (ix+13)
		inc a
		jr c, ++++
+++:	
		xor a
++++:	
		cpl
		and $0F
		ld (ix+23), a
		ret
	
_LABEL_7214_:	
		ld e, (ix+7)
		ld d, (ix+8)
_LABEL_721A_:	
		ld a, (de)
		inc de
		or a
		jp m, _LABEL_7299_
		bit 3, (ix+0)
		jr nz, _LABEL_727F_
		or a
		jr z, +
		add a, (ix+9)
+:	
		ld hl, _DATA_73A3_
		ld c, a
		ld b, $00
		add hl, bc
		add hl, bc
		ld a, (hl)
		ld (ix+17), a
		inc hl
		ld a, (hl)
		ld (ix+18), a
		bit 5, (ix+0)
		jr z, _LABEL_7259_
		ld a, (de)
		inc de
		add a, (ix+9)
		ld hl, _DATA_73A3_
		ld c, a
		ld b, $00
		add hl, bc
		add hl, bc
		ld a, (hl)
		ld (ix+21), a
		inc hl
		ld a, (hl)
		ld (ix+22), a
_LABEL_7259_:	
		push de
		ld a, (de)
		ld h, a
		ld e, (ix+2)
		call _LABEL_7435_
		pop de
		ld (ix+5), l
		ld (ix+6), h
		xor a
		ld (ix+15), a
		ld (ix+16), a
		inc de
		ld (ix+7), e
		ld (ix+8), d
		xor a
		ld (ix+3), a
		ld (ix+4), a
		ret
	
_LABEL_727F_:	
		ld (ix+18), a
		ld a, (de)
		inc de
		ld (ix+17), a
		bit 5, (ix+0)
		jr z, _LABEL_7259_
		ld a, (de)
		inc de
		ld (ix+22), a
		ld a, (de)
		inc de
		ld (ix+21), a
		jr _LABEL_7259_
	
_LABEL_7299_:	
		ld hl, +	; Overriding return address
		push hl
		and $3F
		ld hl, _DATA_72B0_
		ld c, a
		ld b, $00
		add hl, bc
		add hl, bc
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		jp (hl)
	
+:	
		inc de
		jp _LABEL_721A_
	
; Jump Table from 72B0 to 72C9 (13 entries, indexed by unknown)	
_DATA_72B0_:	
	.dw _LABEL_72CA_ _LABEL_72CF_ _LABEL_731E_ _LABEL_72E4_ _LABEL_72FB_ _LABEL_7300_ _LABEL_7306_ _LABEL_730C_
	.dw _LABEL_7312_ _LABEL_7318_ _LABEL_7343_ _LABEL_735E_ _LABEL_732E_
	
; 1st entry of Jump Table from 72B0 (indexed by unknown)	
_LABEL_72CA_:	
		ld a, (de)
		ld (ix+2), a
		ret
	
; 2nd entry of Jump Table from 72B0 (indexed by unknown)	
_LABEL_72CF_:	
		ld a, (de)
		ld (ix+13), a
		ret
	
	; Data from 72D4 to 72E3 (16 bytes)
	.db $0F $0E $0D $0C $0B $0A $09 $07 $08 $06 $05 $04 $03 $02 $01 $00
	
; 4th entry of Jump Table from 72B0 (indexed by unknown)	
_LABEL_72E4_:	
		ld a, (de)
		or $E0
		push af
		call _LABEL_7380_
		pop af
		or $FC
		inc a
		jr nz, +
		res 6, (ix+0)
		ret
	
+:	
		set 6, (ix+0)
		ret
	
; 5th entry of Jump Table from 72B0 (indexed by unknown)	
_LABEL_72FB_:	
		ld a, (de)
		ld (ix+12), a
		ret
	
; 6th entry of Jump Table from 72B0 (indexed by unknown)	
_LABEL_7300_:	
		ex de, hl
		ld e, (hl)
		inc hl
		ld d, (hl)
		dec de
		ret
	
; 7th entry of Jump Table from 72B0 (indexed by unknown)	
_LABEL_7306_:	
		set 5, (ix+0)
		dec de
		ret
	
; 8th entry of Jump Table from 72B0 (indexed by unknown)	
_LABEL_730C_:	
		res 5, (ix+0)
		dec de
		ret
	
; 9th entry of Jump Table from 72B0 (indexed by unknown)	
_LABEL_7312_:	
		set 3, (ix+0)
		dec de
		ret
	
; 10th entry of Jump Table from 72B0 (indexed by unknown)	
_LABEL_7318_:	
		res 3, (ix+0)
		dec de
		ret
	
; 3rd entry of Jump Table from 72B0 (indexed by unknown)	
_LABEL_731E_:	
		call _LABEL_7371_
		xor a
		ld (ix+0), a
		pop hl
		pop hl
		ld (_RAM_C322_), a
		call _LABEL_7468_
		ret
	
; 13th entry of Jump Table from 72B0 (indexed by unknown)	
_LABEL_732E_:	
		call _LABEL_7371_
		xor a
		ld (ix+0), a
		pop hl
		pop hl
		ld (_RAM_C322_), a
		ld a, $06
		ld (_RAM_C321_), a
		call _LABEL_7468_
		ret
	
; 11th entry of Jump Table from 72B0 (indexed by unknown)	
_LABEL_7343_:	
		ld a, (de)
		ld c, a
		inc de
		ld a, (de)
		ld b, a
		push bc
		push ix
		pop hl
		dec (ix+10)
		ld c, (ix+10)
		dec (ix+10)
		ld b, $00
		add hl, bc
		ld (hl), d
		dec hl
		ld (hl), e
		pop de
		dec de
		ret
	
; 12th entry of Jump Table from 72B0 (indexed by unknown)	
_LABEL_735E_:	
		push ix
		pop hl
		ld c, (ix+10)
		ld b, $00
		add hl, bc
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc (ix+10)
		inc (ix+10)
		ret
	
_LABEL_7371_:	
		ld a, (ix+1)
		and $0F
		ld c, a
		ld b, $00
		ld hl, _DATA_71D6_
		add hl, bc
		ld a, (hl)
		or $0F
_LABEL_7380_:	
		bit 2, (ix+0)
		ret nz
		out (Port_PSG), a
		ret
	
_LABEL_7388_:	
		ld hl, _RAM_C324_
		ld de, _RAM_C324_ + 1
		ld bc, $00A7
		ld (hl), $00
		ldir
_LABEL_7395_:	
		ld hl, _DATA_739F_
		ld c, Port_PSG
		ld b, $04
		otir
		ret
	
; Data from 739F to 73A2 (4 bytes)	
_DATA_739F_:	
	.db $9F $BF $DF $FF
	
; Data from 73A3 to 7434 (146 bytes)	
_DATA_73A3_:	
	.db $00 $00 $FF $03 $C7 $03 $90 $03 $5D $03 $2D $03 $FF $02 $D4 $02
	.db $AB $02 $85 $02 $61 $02 $3F $02 $1E $02 $00 $02 $E3 $01 $C8 $01
	.db $AF $01 $96 $01 $80 $01 $6A $01 $56 $01 $43 $01 $30 $01 $1F $01
	.db $0F $01 $00 $01 $F2 $00 $E4 $00 $D7 $00 $CB $00 $C0 $00 $B5 $00
	.db $AB $00 $A1 $00 $98 $00 $90 $00 $88 $00 $80 $00 $79 $00 $72 $00
	.db $6C $00 $66 $00 $60 $00 $5B $00 $55 $00 $51 $00 $4C $00 $48 $00
	.db $44 $00 $40 $00 $3C $00 $39 $00 $36 $00 $33 $00 $30 $00 $2D $00
	.db $2B $00 $28 $00 $26 $00 $24 $00 $22 $00 $20 $00 $1E $00 $1C $00
	.db $1B $00 $19 $00 $18 $00 $16 $00 $15 $00 $14 $00 $13 $00 $12 $00
	.db $11 $00
	
_LABEL_7435_:	
		ld d, $00
		ld l, d
		ld b, $08
-:	
		add hl, hl
		jr nc, +
		add hl, de
+:	
		djnz -
		ret
	
_LABEL_7441_:	
		ld b, $08
-:	
		adc hl, hl
		ld a, h
		jr c, +
		cp e
		jr c, ++
+:	
		sub e
		ld h, a
		or a
++:	
		djnz -
		ld a, l
		rla
		cpl
		ret
	
	; Data from 7454 to 7467 (20 bytes)
	.db $06 $06 $11 $1C $00 $21 $24 $C3 $3A $21 $C3 $0F $30 $02 $CB $D6
	.db $19 $10 $F8 $C9
	
_LABEL_7468_:	
		ld a, (_RAM_C321_)
		ld b, $08
		ld hl, _RAM_C324_
		ld de, $001C
-:	
		rrca
		jr nc, +
		res 2, (hl)
+:	
		add hl, de
		djnz -
		ret
	
	; Data from 747C to 7FFF (2948 bytes)
	.incbin ...
	