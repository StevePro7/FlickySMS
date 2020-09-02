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
.ende	
	
.enum $C11A export	
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
.ende	
	
.enum $C324 export	
_RAM_C324_ dsb $a8	
.ende	
	
.enum $E041 export	
_RAM_E041_ dw	
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

; no$gmb symbolic information for "output.sms".	
_START:
    di
    ld sp, $C0C8
    im 1
    call _LABEL_7395_2
    ld hl, _RAM_C000_
    ld bc, $0400
_LABEL_F_3:
    ld (hl), $00
    inc hl
    dec bc
    ld a, c
    or b
    jr nz, _LABEL_F_3
    call _LABEL_2884_4
    jr _LABEL_70_7
    
_LABEL_1C_11:
    in a, (Port_VDPStatus)
    ld b, $0E
    ld hl, _DATA_2A_
_LABEL_23_12:
    ld a, (hl)
    out (Port_VDPAddress), a
    inc hl
    djnz _LABEL_23_12
    ret
    
; Data from 2A to 37 (14 bytes)	
_DATA_2A_:	
	.db $02 $80 $82 $81 $0E $82 $FF $83 $03 $84 $76 $85 $03 $86

_IRQ_HANDLER:	
		jp _LABEL_209_38
	
	; Data from 3B to 65 (43 bytes)
	.dsb 43, $00
	
_NMI_HANDLER:	
		jp _LABEL_1E9_189
	
	; Data from 69 to 6F (7 bytes)
	.db $00 $00 $00 $00 $00 $00 $00

_LABEL_70_7:
    ld b, $0A
    call _LABEL_1B3_8
    call _LABEL_1C_11
    call _LABEL_1BF_13
_LABEL_7B_:	
    di
    call _LABEL_C5_21
    call _LABEL_1BF_13
    call _LABEL_254D_22
    call _LABEL_23FE_27
    call _LABEL_BC_36
    ld a, $01
    ld (_RAM_C0E1_), a
    ld b, $A0
_LABEL_92_170:
    ei
    push bc
    call _LABEL_4BA_162
    pop bc
    ld a, (_RAM_C0E1_)
    rlca
    jp c, _LABEL_2AE_169
    djnz _LABEL_92_170
    call _LABEL_C5_21
    ld bc, $0087
    call _LABEL_CE_28
    ld b, $02
    call _LABEL_1B3_8
    call _LABEL_45E_171
    ld hl, $C0E1
    ; Data from B5 to BB (7 bytes)
	.db $7E $07 $DA $AE $02 $18 $BF

_LABEL_BC_36:
    ld a, $E2
    out (Port_VDPAddress), a
    ld a, $81
    out (Port_VDPAddress), a
    ret
    
_LABEL_C5_21:	
    ld a, $82
    out (Port_VDPAddress), a
    ld a, $81
    out (Port_VDPAddress), a
    ret

_LABEL_CE_28:	
    ld a, b
    out (Port_VDPAddress), a
    ld a, c
    out (Port_VDPAddress), a
    ret

_LABEL_D5_96:	
    call _LABEL_FF_97
    push af
    pop af
    in a, (Port_VDPData)
    ret
    
_LABEL_DD_112:
    push af
    call _LABEL_F6_15
    pop af
    out (Port_VDPData), a
    ret

_LABEL_E5_14:
    push bc
    push af
    call _LABEL_F6_15
_LABEL_EA_16:
    pop af
    out (Port_VDPData), a
    push af
    dec bc
    ld a, b
    or c
    jr nz, _LABEL_EA_16
    pop af
    pop bc
    ret
    
_LABEL_F6_15:
    ld a, l
    out (Port_VDPAddress), a
    ld a, h
    or $40
    out (Port_VDPAddress), a
    ret
    
_LABEL_FF_97:	
    ld a, l
    out (Port_VDPAddress), a
    ld a, h
    out (Port_VDPAddress), a
    ret

_LABEL_106_19:
    di
    call _LABEL_F6_15
    push de
    push bc
_LABEL_10C_20:
    ld a, (de)
    out (Port_VDPData), a
    inc de
    dec bc
    ld a, c
    or b
    jr nz, _LABEL_10C_20
    pop bc
    pop de
    ret

_LABEL_118_124:
    di
    push hl
    call _LABEL_F6_15
    push de
    push bc
    ld hl, _RAM_C0EB_
_LABEL_122_127:
    ld a, (de)
    and $0F
    jr z, _LABEL_12A_125
    ld a, (de)
    jr _LABEL_12C_126

_LABEL_12A_125:
    ld a, (de)
    or (hl)
_LABEL_12C_126:
    out (Port_VDPData), a
    inc de
    dec bc
    ld a, c
    or b
    jr nz, _LABEL_122_127
    pop bc
    pop de
    pop hl
    ret

_LABEL_138_32:
    di
    call _LABEL_F6_15
    push de
    push bc
_LABEL_13E_33:
    ld a, (de)
    out (Port_VDPData), a
    dec bc
    ld a, c
    or b
    jr nz, _LABEL_13E_33
    pop bc
    pop de
    ret
    
_LABEL_149_166:	
    di 
    push hl
    push de
    push bc
    ld a, c
    ld (_RAM_C10B_), a
_LABEL_151_167:	
    ld a, (de)
    call _LABEL_DD_112
    push de
    ld de, $0008
    add hl, de
    pop de
    dec bc
    ld a, c
    or b
    jr nz, _LABEL_151_167
    pop bc
    pop de
    pop hl
    ei
    ret

_LABEL_165_18:
    di
    ld hl, $3B00
    ld de, _RAM_C1A1_
    ld bc, $0080
    call _LABEL_106_19
    ret

_LABEL_173_102:
    ld hl, $3B00
    call _LABEL_F6_15
    ld hl, _RAM_C1A1_
    ld a, (_RAM_C10C_)
    inc a
    cp $05
    jr c, _LABEL_185_103
    xor a
_LABEL_185_103:
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
    jr z, _LABEL_1A1_104
    ld b, a
    ld c, Port_VDPData
    otir
_LABEL_1A1_104:
    ld a, e
    or a
    jr z, _LABEL_1AB_105
    ld b, a
    ld hl, _RAM_C1A1_
    otir
_LABEL_1AB_105:
    ld hl, _RAM_C1F1_
    ld b, $10
    otir
    ret

_LABEL_1B3_8:
    ld de, $FFFF
_LABEL_1B6_10:	
    ld hl, $39DE
_LABEL_1B9_9:
    add hl, de
    jr c, _LABEL_1B9_9    
    djnz _LABEL_1B6_10
    ret

_LABEL_1BF_13:
    ld hl, $3800    
    ld bc, $0300
    ld a, $20
    call _LABEL_E5_14
    ld hl, _RAM_C0EC_
    bit 5, (hl)
    ret nz
    ld de, _RAM_C1A1_
    ld b, $20
_LABEL_1D5_17:
    push bc
    ld hl, _DATA_1E5_
    ld bc, $0004
    ldir
    pop bc
    djnz _LABEL_1D5_17
    call _LABEL_165_18
    ret

; Data from 1E5 to 1E8 (4 bytes)	
_DATA_1E5_:	
	.db $F0 $00 $00 $00

_LABEL_1E9_189:	
    push af
    ld a, (_RAM_C0CA_)
    cp $10
    jr c, _LABEL_1FF_190
    xor a
    ld (_RAM_C0CA_), a
    ld a, (_RAM_C0C9_)
    and a
    jr z, _LABEL_202_191
    xor a
    ld (_RAM_C0C9_), a
_LABEL_1FF_190:
    pop af
    retn
    
_LABEL_202_191:
    cpl
    ld (_RAM_C0C9_), a
    pop af
    retn
    
_LABEL_209_38:
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
    jr nc, _LABEL_224_39
    ; Data from 222 to 223 (2 bytes)
	.db $3E $F0    
    
_LABEL_224_39:
    ld (_RAM_C0CA_), a
    ld a, (_RAM_C0C9_)
    or a
    jr z, _LABEL_233_40
    ; Data from 22D to 232 (6 bytes)
	.db $CD $90 $02 $C3 $7F $02
    
_LABEL_233_40:
    call _LABEL_27D9_43
    ld a, (_RAM_C0E1_)
    or a
    call nz, _LABEL_495_58
    call _LABEL_2012_61
    call _LABEL_1E1F_62
    ld a, (_RAM_C0EC_)
    rlca
    jr nc, _LABEL_26B_79
    ; Data from 249 to 26A (34 bytes)
	.db $07 $38 $1F $21 $07 $C1 $34 $21 $51 $C1 $34 $CD $A6 $06 $CD $8A
	.db $07 $3A $02 $C1 $B7 $C2 $6B $02 $CD $73 $01 $CD $6E $07 $21 $0A
	.db $C1 $34
    
_LABEL_26B_79:
    ld hl, _RAM_C108_
    inc (hl)
    inc hl
    inc (hl)
    ld a, (_RAM_C0E1_)
    or a
    jr nz, _LABEL_27A_128
    call _LABEL_6F22_129
_LABEL_27A_128:    

; Data from 290 to 2A0 (17 bytes)	
_LABEL_290_41:	
	.db $3E $9F $D3 $7F $3E $BF $D3 $7F $3E $DF $D3 $7F $3E $FF $D3 $7F
	.db $C9
    
_LABEL_1E1F_62:
    xor a
    ld hl, _RAM_C0FA_
    ld de, _RAM_C0FE_
    ld a, (de)
    sub (hl)
    jr c, _LABEL_1E48_63
    jr z, _LABEL_1E2E_64
    jr _LABEL_1E61_65
    
_LABEL_1E2E_64:
    dec hl
    dec de
    ld a, (de)
    sub (hl)
    jr c, _LABEL_1E48_63
	jr z, _LABEL_1E38_66
	jr _LABEL_1E61_65

_LABEL_1E38_66:
    dec hl
    dec de
    ld a, (de)
    sub (hl)
    jr c, _LABEL_1E48_63
	jr z, _LABEL_1E42_67
	jr _LABEL_1E61_65

_LABEL_1E42_67:	
    dec hl
    dec de
    ld a, (de)
    sub (hl)
    jr nc, _LABEL_1E61_65
_LABEL_1E48_63:	
    ld hl, _RAM_C0F7_
    ld de, _RAM_C0FB_
    ld bc, $0004
    ldir
_LABEL_1E53_:
    ld a, $04
    ld (_RAM_C0DF_), a
    ld de, $3816
    ld hl, _RAM_C0FB_
    call _LABEL_1E62_68
_LABEL_1E61_65:	
    ret
    
_LABEL_1E62_68:
    push de
    push hl
    ld de, _RAM_C0CF_
    ld bc, $0008
    ldir
    pop hl
    call _LABEL_1FDF_69
    pop hl
    ld a, (_RAM_C0DF_)
    cp $04
    jr nz, _LABEL_1E81_72
    ld de, _RAM_C0DE_
    ld bc, $0807
    jp _LABEL_1EA2_73

_LABEL_1E81_72:
    cp $02
    jr c, _LABEL_1E99_77
    jr z, _LABEL_1E90_78
    ld de, _RAM_C0DC_
    ld bc, $0605
    jp _LABEL_1EA2_73

_LABEL_1E90_78:
    ld de, _RAM_C0DA_
    ld bc, $0403
    jp _LABEL_1EA2_73

_LABEL_1E99_77:
    ld de, _RAM_C0D8_
    ld bc, $0201
    jp _LABEL_1EA2_73

_LABEL_1EA2_73:
    di
    call _LABEL_F6_15
_LABEL_1EA6_76:	
    ld a, c
    or a
    jr z, _LABEL_1EB4_74
    dec c
    ld a, (de)
    cp $30
    jr nz, _LABEL_1EB4_74
    ld a, $20
    jr _LABEL_1EB7_75

_LABEL_1EB4_74:
    ld c, $00
    ld a, (de)
_LABEL_1EB7_75:	
    out (Port_VDPData), a
    dec de
    djnz _LABEL_1EA6_76
    ei
    ret

_LABEL_1FDF_69:
        

    
_LABEL_2012_61:
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
    
_LABEL_27D9_43:
    xor a
    ld (_RAM_C100_), a
    call _LABEL_27E5_44
    cpl
    ld (_RAM_C101_), a
    ret
    
_LABEL_27E5_44
    ld a, (_RAM_C0CB_)
    and a
    ;jr z, _LABEL_280A_45
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
    jr nz, _LABEL_2802_46
    res 6, c
_LABEL_2802_46:
    bit 5, a
    jr nz, _LABEL_2808_47
    res 6, c
_LABEL_2808_47:
    ld a, c
    ret
    
    

    ld a, $01
    ld (_RAM_C102_), a
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
    
_LABEL_23FE_27:
    ld bc, $0d87
    call _LABEL_CE_28
    ld a, $20
    ;call _LABEL_1D79_29
    ld hl, $38c8
    ld de, _DATA_47B7_
    ld bc, $0511
    ;call _LABEL_1C93_30
    ld hl, $3af5
    ld de, _DATA_2477_
    ld bc, $000A
    call _LABEL_106_19
_LABEL_2421_165:
    ld hl, $39E8
    ld de, _DATA_2466_
    ld bc, $0011
    call _LABEL_106_19
    ld hl, _RAM_C0E1_
    set 2, (hl)
    ret

 

    
_LABEL_7395_2:	
    ld hl, _DATA_739F_
    ld c, Port_PSG
    ld b, $04
    otir
    ret
    
; Data from 739F to 7434 (150 bytes)	
_DATA_739F_:	
	.db $9F $BF $DF $FF $00 $00 $FF $03 $C7 $03 $90 $03 $5D $03 $2D $03
	.db $FF $02 $D4 $02 $AB $02 $85 $02 $61 $02 $3F $02 $1E $02 $00 $02
	.db $E3 $01 $C8 $01 $AF $01 $96 $01 $80 $01 $6A $01 $56 $01 $43 $01
	.db $30 $01 $1F $01 $0F $01 $00 $01 $F2 $00 $E4 $00 $D7 $00 $CB $00
	.db $C0 $00 $B5 $00 $AB $00 $A1 $00 $98 $00 $90 $00 $88 $00 $80 $00
	.db $79 $00 $72 $00 $6C $00 $66 $00 $60 $00 $5B $00 $55 $00 $51 $00
	.db $4C $00 $48 $00 $44 $00 $40 $00 $3C $00 $39 $00 $36 $00 $33 $00
	.db $30 $00 $2D $00 $2B $00 $28 $00 $26 $00 $24 $00 $22 $00 $20 $00
	.db $1E $00 $1C $00 $1B $00 $19 $00 $18 $00 $16 $00 $15 $00 $14 $00
	.db $13 $00 $12 $00 $11 $00    
    
    
_LABEL_2884_4:
ld a, $92
    out (_PORT_DF_), a
    ld a, $55
    out (_PORT_DE_), a
    in a, (_PORT_DE_)
    cp $55
    ld c, $00
    jr z, _LABEL_2896_5
    ld c, $FF
_LABEL_2896_5:
    ld a, $AA
    out (_PORT_DE_), a
    in a, (_PORT_DE_)
    cp $AA
    ld a, $00
    jr z, _LABEL_28A4_6
    ld a, $FF
_LABEL_28A4_6:
    or c
    ld (_RAM_C0CB_), a
    ld a, $07
    out (_PORT_DE_), a
    ret
    

    ld a, l
    out (Port_VDPAddress), a
    ld a, h
    out (Port_VDPAddress), a
    ret
        


    
; Data from 1E5 to 1E8 (4 bytes)	



;empty labels
_LABEL_2AE_169:
_LABEL_45E_171:
_LABEL_4BA_162:	

_LABEL_6F22_129:

_LABEL_495_58:
    ld a, (_RAM_C101_)
    and $C0
    jr nz, _LABEL_4B4_59
    ld hl, _RAM_C0CD_
    ld a, (_RAM_C107_)
    and $07
    jr nz, _LABEL_4A7_60
    inc (hl)
_LABEL_4A7_60:
    ld a, (hl)
    ld c, a
    ld d, $00
    ;ld hl, _DATA_532_
    add hl, de
    ld a, (hl)
    ld (_RAM_C101_), a
    ret
    
_LABEL_4B4_59:
    ld a, $FF
    ld (_RAM_C0E1_), a
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
    
    
_LABEL_254D_22:	
    ld de, _DATA_3BF7_
    ld bc, $01D8
    ld hl, $0300
    call _LABEL_106_19
    ld hl, $0b00
    call _LABEL_106_19
    ld a, $d0
    ld hl, $2300
    call _LABEL_E5_14
    ld de, _DATA_30FD_
    ld bc, $0300
    ld hl,$0000
    call _LABEL_106_19
    ld hl, $0800
    call _LABEL_106_19
    ld hl, $1000
    call _LABEL_106_19
    ld hl, $0000
    ld de, _DATA_3DCF_
    ld bc, $0020
    call _LABEL_106_19
    ld hl, $1000
    ld de, _DATA_3DEF_
    ld bc, $0020
    call _LABEL_106_19
    ld a, (_DATA_39B5_)
    ld bc, $0200
    ld hl, $2000
    call _LABEL_E5_14
    ld hl, $3000
    call _LABEL_E5_14
    ld de, _DATA_39B5_ + 2
    ld a, (_RAM_C0EA_)
    ld hl, _RAM_C0EC_
    bit 4, (hl)
    jr z, _LABEL_25C3_23
    dec a
_LABEL_25C3_23:
    rrca
    rrca
    jr c, _LABEL_25CA_24
    ld de, _DATA_39F7_
_LABEL_25CA_24:
    ld bc, $0020
    ld hl, $2000
    call _LABEL_106_19  
    ld de, _DATA_39D7_
    ld a, (_RAM_C0EA_)
	ld hl, _RAM_C0EC_
	bit 4, (hl)
    jr z, _LABEL_25E1_25
    dec a
_LABEL_25E1_25:
    rrca
    rrca
    jr c, _LABEL_25E8_26
    ld de, _DATA_3A17_
_LABEL_25E8_26:
    ld bc, $0060
    ld hl, $3000
    call _LABEL_106_19
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
	
; Pointer Table from 480C to 480D (1 entries, indexed by _RAM_C0E8_)	
_DATA_480C_:	
	.dw _DATA_485C_
	
	; Data from 480E to 485B (78 bytes)
	.db $9C $49 $DC $6D $DC $4A $1C $4C $5C $4D $DC $6D $9C $4E $DC $4F
	.db $1C $51 $DC $6D $5C $52 $9C $53 $DC $54 $DC $6D $1C $56 $5C $57
	.db $9C $58 $DC $6D $DC $59 $1C $5B $5C $5C $DC $6D $9C $5D $DC $5E
	.db $1C $60 $DC $6D $5C $61 $9C $62 $DC $63 $DC $6D $1C $65 $5C $66
	.db $9C $67 $DC $6D $DC $68 $1C $6A $5C $6B $DC $6D $9C $6C
	
; Data from 485C to 48CC (113 bytes)	
_DATA_485C_:	
	.dsb 31, $00
	.db $0E $00 $00 $00 $00 $00 $00 $D0 $F0 $00 $0D
	.dsb 10, $00
	.db $13 $22 $22 $22 $22 $22 $24 $10
	.dsb 10, $00
	.db $E0 $00 $00 $0E
	.dsb 22, $00
	.db $22 $22 $24 $10 $00 $00 $00 $00 $00 $00 $00 $00 $13 $22 $22 $22
	.db $00
	
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		ret nc
		nop
		nop
		dec c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		inc de
		ld ($2222), hl
		ld ($2422), hl
		djnz +
+:	
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld ($2422), hl
		djnz +
+:	
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		inc de
		ld ($2222), hl
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret nc
		nop
		nop
		dec c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		inc de
		ld ($2222), hl
		ld ($2422), hl
		djnz +
+:	
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		ret po
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret po
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec c
		nop
		nop
		nop
		ret p
		nop
		nop
		nop
		nop
		ret nc
		nop
		nop
		nop
		ld bc, $2232
		ld ($2222), hl
		ld ($2222), hl
		ld ($2222), hl
		ld ($4122), hl
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret po
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret nc
		nop
		nop
		nop
		ld ($2222), hl
		ld ($2222), hl
		ld b, c
		nop
		ld bc, $2232
		ld ($2222), hl
		ld ($0022), hl
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret nc
		nop
		nop
		nop
		ld bc, $2232
		ld ($2222), hl
		ld ($2222), hl
		ld ($2222), hl
		ld ($4122), hl
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret po
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret nc
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld ($4122), hl
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld bc, $2232
		ld ($0000), hl
		nop
		nop
		ret po
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret nc
		nop
		nop
		nop
		nop
		nop
		nop
		dec c
		nop
		nop
		nop
		nop
		ld ($2222), hl
		ld ($2422), hl
		djnz +
+:	
		nop
		inc de
		ld ($2222), hl
		ld ($2222), hl
		nop
		nop
		nop
		nop
		ret po
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret nc
		nop
		nop
		nop
		nop
		nop
		nop
		ret nc
		nop
		nop
		nop
		nop
		ld ($2222), hl
		ld ($2222), hl
		ld b, c
		nop
		ld bc, $2232
		ld ($2222), hl
		ld ($0022), hl
		nop
		nop
		nop
		ret po
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret nc
		nop
		nop
		nop
		nop
		nop
		nop
		ret p
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret p
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		inc de
		ld ($2222), hl
		inc h
		djnz +
+:	
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec c
		nop
		nop
		nop
		nop
		nop
		inc de
		ld ($2222), hl
		inc h
		djnz +
+:	
		nop
		inc de
		ld ($2222), hl
		inc h
		djnz +
+:	
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		ret nc
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld ($1024), hl
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		inc de
		ld ($0022), hl
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec c
		nop
		nop
		nop
		nop
		nop
		inc de
		ld ($2222), hl
		inc h
		djnz +
+:	
		nop
		inc de
		ld ($2222), hl
		inc h
		djnz +
	; Data from 4D1C to 4D29 (14 bytes)
	.dsb 14, $00
	
+:	
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $15
		ld h, c
		ret po
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec c
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		ret p
		nop
		nop
		ret nc
		nop
		ret po
		nop
		nop
		nop
		ld ($2922), hl
		or c
		ld bc, $2232
		ld ($2222), hl
		ld b, c
		nop
		ld bc, $2232
		ld ($0000), hl
		nop
		nop
		ld bc, $1056
		nop
		nop
		ld c, $00
		nop
		ld bc, $1E56
		nop
		nop
		nop
		nop
		nop
		ld bc, $1056
		nop
		nop
		nop
		nop
		nop
		ld bc, $1056
		nop
		nop
		nop
		nop
		nop
		ld bc, $1056
		nop
		nop
		nop
		nop
		nop
		ld bc, $1056
		nop
		nop
		nop
		nop
		nop
		ld bc, $1056
		nop
		nop
		nop
		nop
		nop
		ld bc, $1056
		nop
		nop
		nop
		nop
		nop
		pop de
		ld d, (hl)
		djnz +
+:	
		nop
		nop
		nop
		nop
		ld bc, $1056
		nop
		ld ($2222), hl
		ld ($9B22), hl
		djnz +
	; Data from 4DF4 to 4E06 (19 bytes)
	.db $22 $22 $22 $22 $22 $9B $10 $13 $61 $00 $00 $00 $00 $00 $00 $15
	.db $61 $E0 $00
	
+:	
		nop
		nop
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		ret nc
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		ret nc
		nop
		dec d
		or c
		ld bc, $2232
		ld ($2222), hl
		add hl, hl
		or c
		ld bc, $2232
		ld ($2222), hl
		add hl, hl
		nop
		ld bc, $1056
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret po
		nop
		ld bc, $1056
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld bc, $1056
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld bc, $1056
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld bc, $1056
		nop
		nop
		nop
		nop
		ret nc
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret po
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec c
		ret p
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld bc, $2232
		ld ($2222), hl
		ld ($2222), hl
		ld ($4122), hl
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret po
		nop
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $15
		ld h, c
		dec c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec d
		ld h, c
		ld ($4122), hl
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		rla
		add a, d
		ld c, $15
		ld h, c
		nop
		nop
		nop
		dec c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec d
		ld h, c
		nop
		ld bc, $2232
		ld ($2222), hl
		inc h
		djnz +
+:	
		nop
		nop
		nop
		nop
		dec d
		ld h, c
		ld c, $01
		ld d, (hl)
		djnz +
	; Data from 4F44 to 4F51 (14 bytes)
	.db $00 $00 $00 $00 $00 $00 $00 $00 $22 $29 $B1 $00 $01 $56
	
+:	
		djnz +
+:	
		nop
		nop
		nop
		nop
		ld bc, $2232
		ld ($0000), hl
		nop
		nop
		ld bc, $1056
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld bc, $1056
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld bc, $1D56
		nop
		nop
		nop
		nop
		nop
		dec c
		nop
		nop
		nop
		ld ($2222), hl
		ld b, c
		ld bc, $2278
		ld ($1024), hl
		inc de
		ld ($2222), hl
		ld ($0022), hl
		ret po
		dec d
		ld h, c
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		dec c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		inc de
		ld ($2222), hl
		ld ($1024), hl
		inc de
		ld ($2222), hl
		ld ($1024), hl
		nop
		nop
		dec d
		ld h, c
		ret po
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		pop hl
		ld d, (hl)
		djnz +
+:	
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld bc, $1056
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld bc, $1056
		ld c, $00
		dec d
		ld h, c
		nop
		nop
		ret nc
		nop
		nop
		nop
		nop
		dec c
		nop
		ld bc, $1056
		nop
		nop
		dec d
		ld h, c
		ld bc, $2232
		inc h
		djnz +
	; Data from 5055 to 5067 (19 bytes)
	.db $22 $22 $41 $01 $56 $10 $00 $00 $15 $61 $00 $00 $E1 $56 $1E $15
	.db $61 $E0 $00
	
+:	
		ld bc, $1056
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		ld bc, $1056
		dec d
		ld h, c
		nop
		nop
		ld bc, $1056
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		ld bc, $1056
		dec d
		ld h, c
		nop
		nop
		ld bc, $1056
		nop
		nop
		dec d
		ld h, c
		ret nc
		nop
		ld bc, $1056
		dec d
		ld h, c
		nop
		nop
		pop de
		ld d, (hl)
		djnz +
+:	
		nop
		rla
		add a, d
		inc h
		djnz +
	; Data from 50A2 to 50A2 (1 bytes)
	.db $56
	
+:	
		djnz +
	; Data from 50A5 to 50B9 (21 bytes)
	.db $61 $00 $13 $22 $9B $10 $00 $00 $00 $00 $00 $00 $01 $56 $10 $15
	.db $61 $00 $00 $00 $00
	
+:	
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld bc, $1056
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld bc, $1056
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		nop
		ld c, $13
		ld ($2222), hl
		ld ($9B22), hl
		djnz +
	; Data from 50E5 to 50FB (23 bytes)
	.db $82 $22 $22 $22 $22 $24 $10
	.dsb 16, $00
	
+:	
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec c
		nop
		nop
		nop
		ret p
		nop
		nop
		nop
		nop
		ret nc
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		dec c
		nop
		nop
		nop
		nop
		nop
		nop
		ret nc
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		inc de
		inc h
		djnz +
+:	
		nop
		nop
		nop
		inc de
		inc h
		djnz +
+:	
		nop
		nop
		inc de
		ld ($2222), hl
		ld ($2422), hl
		djnz +
	; Data from 5155 to 5167 (19 bytes)
	.db $22 $22 $22 $22 $22 $24 $10
	.dsb 12, $00
	
+:	
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret po
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret nc
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld bc, $4132
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret nc
		nop
		nop
		nop
		ret po
		inc de
		ld ($2222), hl
		inc h
		djnz +
	; Data from 51D8 to 51E5 (14 bytes)
	.db $00 $00 $00 $00 $24 $10 $00 $00 $00 $00 $00 $00 $00 $00
	
+:	
		nop
		nop
		nop
		nop
		inc de
		ld ($0000), hl
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret p
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		ld bc, $2232
		ld ($2222), hl
		ld ($4122), hl
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret po
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret nc
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		inc h
		djnz +
	; Data from 527F to 5291 (19 bytes)
	.db $22 $22 $22 $22 $22 $24 $10 $00 $00 $00 $13 $22 $22 $00 $00 $00
	.db $00 $00 $0E
	
+:	
		nop
		ld bc, $1056
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld bc, $2478
		djnz +
+:	
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $13
		ld ($1024), hl
		nop
		nop
		nop
		nop
		inc de
		ld ($1024), hl
		nop
		nop
		nop
		nop
		nop
		ld bc, $1056
		nop
-:	
		nop
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld bc, $1056
		nop
		nop
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld bc, $1056
		nop
		nop
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		inc de
		ld ($1124), hl
		ld d, (hl)
		djnz -
		nop
		nop
		dec c
		dec d
		ld h, c
		inc de
		ld ($1E24), hl
		nop
		nop
		nop
		ld bc, $2278
		inc h
		djnz +
	; Data from 5325 to 5337 (19 bytes)
	.db $22 $29 $B1 $E0
	.dsb 15, $00
	
+:	
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec c
		inc h
		djnz +
+:	
		nop
		nop
		nop
		nop
		ret p
		nop
		nop
		nop
		nop
		nop
		nop
		inc de
		ld ($0000), hl
		nop
		nop
		inc de
		ld ($2222), hl
		ld ($2422), hl
		djnz +
+:	
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret nc
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret nc
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret po
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret p
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		inc de
		ld ($2222), hl
		inc h
		djnz +
+:	
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret po
		nop
		nop
		nop
		ret nc
		nop
		nop
		dec c
		nop
		nop
		nop
		ret po
		nop
		ld c, $00
		nop
		ld bc, $2232
		ld ($0E41), hl
		ld bc, $2232
		ld ($0041), hl
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret nc
		nop
		nop
		nop
		inc de
		ld ($2422), hl
		djnz +
+:	
		nop
		nop
		nop
		nop
		nop
		inc de
		ld ($2422), hl
		djnz +
+:	
		nop
		nop
		nop
		ret po
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret nc
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret nc
		ld ($0041), hl
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld bc, $2232
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		inc de
		ld ($2222), hl
		ld ($2222), hl
		ld ($1024), hl
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret po
		nop
		dec c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret nc
		nop
		ld ($1024), hl
		nop
		nop
		ld bc, $2232
		ld ($4122), hl
		nop
		nop
		inc de
		ld ($0022), hl
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $15
		ld h, c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret nc
		nop
		nop
		nop
		nop
		dec d
		ld h, c
		ret nc
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		inc de
		ld ($2222), hl
		inc h
		djnz +
	; Data from 5596 to 55AC (23 bytes)
	.db $82 $22 $22 $24 $10 $E0 $00 $00 $00 $15 $61 $00 $00 $00 $00 $15
	.db $61 $00 $00 $00 $00 $00 $00
	
+:	
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		ret nc
		nop
		dec d
		ld h, c
		ret po
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec d
		ld h, c
		nop
		inc de
		ld ($2922), hl
		or c
		nop
		nop
		nop
		nop
		nop
		ld ($2222), hl
		add hl, hl
		or c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		inc de
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret p
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		inc h
		djnz +
+:	
		nop
		nop
		nop
		inc de
		ld ($1024), hl
		nop
		nop
		nop
		nop
		inc de
		ld ($0000), hl
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		dec c
		nop
		nop
		nop
		dec c
		nop
		ld c, $00
		nop
		nop
		nop
		inc de
		ld ($1024), hl
		inc de
		ld ($1024), hl
		inc de
		ld ($1024), hl
		inc de
		ld ($1024), hl
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec c
		nop
		nop
		nop
		nop
		nop
		nop
		inc de
		ld ($1024), hl
		nop
		nop
		nop
		nop
		inc de
		ld ($1024), hl
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		inc de
		ld ($1024), hl
		inc de
		ld ($1024), hl
		inc de
		ld ($1024), hl
		inc de
		ld ($1024), hl
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret p
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		inc h
		djnz +
+:	
		nop
		nop
		nop
		inc de
		ld ($1024), hl
		nop
		nop
		nop
		nop
		inc de
		ld ($1056), hl
		ret nc
		nop
		nop
		nop
		dec d
		ld h, c
		ld d, (hl)
		djnz +
+:	
		nop
		nop
		dec c
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret nc
		dec c
		nop
		nop
		nop
		nop
		ret nc
		dec c
		nop
		nop
		nop
		nop
		nop
		nop
		pop hl
		ld ($2222), a
		ld b, c
		nop
		ld bc, $2232
		ld (_RAM_E041_), hl
		nop
		nop
		nop
		nop
		ld bc, $1E56
		nop
		nop
		nop
		nop
		nop
		ld c, $15
		ld h, c
		nop
		nop
		nop
		nop
		nop
		ld bc, $1056
		nop
		nop
		nop
		nop
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		nop
		ld bc, $1056
		nop
		nop
		ret p
		nop
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		nop
		ld bc, $1056
		nop
		inc de
		ld ($1024), hl
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		ld bc, $2232
		sbc a, e
		djnz +
+:	
		ld c, $00
		nop
		ret po
		nop
		rla
		add a, d
		ld ($0041), hl
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret nc
		nop
		nop
		nop
		ld bc, $2232
		inc h
		djnz +
+:	
		nop
		nop
		nop
		nop
		nop
		inc de
		ld ($4122), hl
		ld c, $00
		nop
		ld bc, $1056
		nop
		nop
		nop
		nop
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		nop
		ld bc, $1056
		nop
		nop
		ld c, $00
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		nop
		ld bc, $1056
		nop
		nop
		nop
		nop
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		nop
		ld bc, $2278
		ld ($0041), hl
		ld bc, $2232
		add hl, hl
		or c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		ret nc
		nop
		nop
		nop
		nop
		dec c
		nop
		nop
		nop
		nop
		nop
		ld ($1024), hl
		inc de
		ld ($4122), hl
		ret po
		pop hl
		ld ($2422), a
		djnz +
	; Data from 58CA to 58DC (19 bytes)
	.db $22 $22 $01 $56 $10 $00 $00 $15 $61 $00 $01 $56 $10 $00 $00 $15
	.db $61 $0E $01
	
+:	
		ld d, (hl)
		djnz +
+:	
		nop
		dec d
		ld h, c
		nop
		ld bc, $1056
		nop
		nop
		dec d
		ld h, c
		nop
		ld bc, $1056
		nop
		nop
		dec d
		ld h, c
		nop
		ld bc, $1056
		nop
		nop
		dec d
		ld h, c
		nop
		ld bc, $1056
		dec c
		nop
		dec d
		ld h, c
		nop
		ld bc, $1056
		nop
		ret nc
		dec d
		ld h, c
		nop
		ld bc, $2278
		inc h
		djnz +
+:	
		nop
		nop
		nop
		nop
		nop
		inc de
		ld (_LABEL_712C_145 - 3), hl	; _LABEL_712C_145 - 3 = $7129
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld ($1024), hl
		inc de
		ld ($4122), hl
		nop
		ld bc, $2232
		inc h
		djnz +
	; Data from 595A to 596C (19 bytes)
	.db $22 $22 $01 $56 $10 $00 $0E $15 $61 $00 $01 $56 $1E $00 $00 $15
	.db $61 $0E $01
	
+:	
		ld d, (hl)
		djnz +
+:	
		nop
		dec d
		ld h, c
		nop
		ld bc, $1056
		nop
		nop
		dec d
		ld h, c
		nop
		ld bc, $1056
		nop
		nop
		dec d
		ld h, c
		ret p
		ld bc, $1056
		nop
		nop
		dec d
		ld h, c
		nop
		ld bc, $1056
		dec c
		nop
		rla
		add a, d
		ld ($9B22), hl
		djnz +
+:	
		ret nc
		dec d
		ld h, c
		nop
		ld bc, $2278
		inc h
		djnz +
+:	
		nop
		ld c, $00
		nop
		nop
		inc de
		ld (_LABEL_712C_145 - 3), hl	; _LABEL_712C_145 - 3 = $7129
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret po
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		ld bc, $2432
		djnz +
	; Data from 5A05 to 5A17 (19 bytes)
	.db $22 $41
	.dsb 9, $00
	.db $01 $56 $56 $10 $15 $65 $61 $00
	
+:	
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld bc, $5656
		djnz +
	; Data from 5A25 to 5A39 (21 bytes)
	.db $65 $61 $00 $00 $00 $00 $00 $E0 $00 $00 $00 $D1 $56 $56 $1E $15
	.db $65 $61 $D0 $00 $00
	
+:	
		nop
		ret po
		nop
		nop
		nop
		inc de
		ld ($569B), hl
		djnz +
	; Data from 5A45 to 5A59 (21 bytes)
	.db $67 $82 $24 $10 $00 $00 $00 $00 $00 $00 $15 $61 $01 $56 $10 $15
	.db $61 $01 $56 $10 $00
	
+:	
		nop
		nop
		nop
		nop
		nop
		dec d
		ld h, c
		pop hl
		ld d, (hl)
		djnz +
	; Data from 5A65 to 5A79 (21 bytes)
	.db $61 $E1 $56 $10 $00 $00 $00 $00 $00 $0D $15 $61 $01 $56 $10 $15
	.db $61 $01 $56 $1D $00
	
+:	
		nop
		ld c, $00
		ld bc, $2932
		or c
		ld bc, $1056
		dec d
		ld h, c
		ld bc, $2278
		ld b, c
		nop
		nop
		nop
		ld bc, $1056
		nop
		ld bc, $1056
		dec d
		ld h, c
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		ld bc, $1056
		nop
		ld bc, $1056
		dec d
		ld h, c
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		pop de
		ld d, (hl)
		djnz +
+:	
		ld bc, $1056
		dec d
		ld h, c
		nop
		nop
		dec d
		ld h, c
		ret nc
		nop
		inc de
		ld ($109B), hl
		nop
		ld bc, $1056
		dec d
		ld h, c
		nop
		nop
		rla
		add a, d
		inc h
		djnz +
+:	
		nop
		nop
		nop
		nop
		ld bc, $1056
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		inc de
		ld ($109B), hl
		rla
		add a, d
		inc h
		djnz +
+:	
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret p
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret p
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld bc, $2232
		ld ($2222), hl
		ld ($2222), hl
		ld ($2222), hl
		ld ($0041), hl
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret po
		dec d
		ld h, c
		nop
		nop
		nop
		ret nc
		nop
		nop
		nop
		nop
		nop
		nop
		ret nc
		nop
		nop
		nop
		dec d
		ld h, c
		nop
		ld bc, $2232
		ld ($2222), hl
		ld ($2222), hl
		inc h
		djnz +
+:	
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret po
		nop
		ld c, $00
		nop
		ret nc
		nop
		nop
		nop
		nop
		nop
		nop
		ret nc
		nop
		nop
		nop
		nop
		nop
		nop
		ld bc, $2232
		ld ($2222), hl
		ld ($2222), hl
		inc h
		djnz +
+:	
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		inc de
		ld ($0041), hl
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		ret nc
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret nc
		nop
		dec d
		ld h, c
		nop
		ld bc, $2232
		ld ($2222), hl
		ld ($2222), hl
		ld ($2222), hl
		ld (_LABEL_712C_145 - 3), hl	; _LABEL_712C_145 - 3 = $7129
		nop
		nop
		nop
		nop
		nop
		ret po
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret po
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret po
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld bc, $1034
		nop
		nop
		nop
		nop
		nop
		nop
		inc de
		ld b, c
		nop
		nop
		nop
		nop
		nop
		ld bc, $1056
		nop
		nop
		nop
		nop
		nop
		nop
		dec d
		ld h, c
		nop
		nop
		nop
		nop
		ret nc
		ld bc, $1056
		nop
		nop
		nop
		nop
		nop
		nop
		dec d
		ld h, c
		nop
		dec c
		nop
		ld ($0141), hl
		ld d, (hl)
		djnz +
+:	
		nop
		nop
		nop
		nop
		nop
		dec d
		ld h, c
		ld bc, $2232
		dec d
		ld h, c
		ld bc, $1056
		nop
		nop
		nop
		ret nc
		nop
		nop
		dec d
		ld h, c
		ld bc, $1E56
		dec d
		ld h, c
		pop hl
		ld d, (hl)
		djnz +
	; Data from 5CE2 to 5CE2 (1 bytes)
	.db $32
	
+:	
		ld ($4122), hl
		nop
		dec d
		ld h, c
		pop hl
		ld d, (hl)
		djnz +
	; Data from 5CED to 5D01 (21 bytes)
	.db $61 $01 $56 $10 $01 $56 $10 $15 $61 $00 $15 $61 $01 $56 $10 $15
	.db $61 $01 $56 $10 $01
	
+:	
		ld a, b
		ld (_LABEL_712C_145 - 3), hl	; _LABEL_712C_145 - 3 = $7129
		nop
		dec d
		ld h, c
		ld bc, $1056
		rla
		add a, d
		ld ($109B), hl
		nop
		nop
		ld c, $00
		nop
		nop
		rla
		add a, d
		ld ($109B), hl
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec c
		nop
		nop
		nop
		nop
		ret nc
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		inc de
		ld ($0041), hl
		ld bc, $2432
		djnz +
+:	
		nop
		nop
		dec c
		inc h
		djnz +
+:	
		nop
		dec d
		ld h, l
		ld h, c
		nop
		ld bc, $5656
		djnz +
+:	
		nop
		inc de
		ld ($1056), hl
		ld c, $00
		dec d
		ld h, l
		ld h, c
		nop
		ld bc, $5656
		djnz +
+:	
		ret po
		dec d
		ld h, c
		ld d, (hl)
		djnz +
+:	
		nop
		dec d
		ld h, l
		ld h, c
		nop
		ld bc, $5656
		djnz +
+:	
		nop
		dec d
		ld h, c
		ld d, (hl)
		djnz +
+:	
		nop
		dec d
		ld h, l
		ld h, c
		nop
		ld bc, $5656
		djnz +
+:	
		nop
		dec d
		ld h, c
		sbc a, e
		djnz +
+:	
		nop
		rla
		adc a, c
		or c
		ret p
		ld bc, $9B78
		djnz +
+:	
		nop
		rla
		add a, d
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		ret po
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ret po
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		ld c, $00
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
	; Data from 5DD5 to 6F21 (4429 bytes)
;	.incbin ...
.incbin "Flicky.sms.data.99"




; Data from 712C to 713C (17 bytes)	
_LABEL_712C_145:	
	.db $D5 $DD $6E $15 $DD $66 $16 $B7 $ED $52 $F5 $7D $F2 $3D $71 $ED
	.db $44