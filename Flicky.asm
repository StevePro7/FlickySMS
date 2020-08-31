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
    jr nz, _LABEL_F_3
    call _LABEL_2884_4
    jr _LABEL_70_7
    
_LABEL_1C_11:
    in a, (Port_VDPStatus)
    ld b, $0E
    ld hl, _DATA_2A_
    
    
; Data from 2A to 37 (14 bytes)	
_DATA_2A_:	
	.db $02 $80 $82 $81 $0E $82 $FF $83 $03 $84 $76 $85 $03 $86
    
    

    
_LABEL_70_7:
    ld b, $0A
    call _LABEL_1B3_8
    call _LABEL_1C_11
    call _LABEL_1BF_13
_LABEL_7B_:	
    di
    call _LABEL_C5_21
    call _LABEL_1BF_13
    ;call _LABEL_254D_22
    ;call _LABEL_23FE_27
    ;call _LABEL_BC_36
    ld a, $01
    ld (_RAM_C0E1_), a
    ld b, $A0
_LABEL_92_170:



        
_stevepro:
    jp _stevepro
    
    
_LABEL_1B3_8:
    ld de, $FFFF
_LABEL_1B6_10:	
    ld hl, $39DE
_LABEL_1B9_9:
    add hl, de
    jr c, _LABEL_1B9_9    
    djnz _LABEL_1B6_10
    ret

_LABEL_C5_21:
    ld a, $82
    out (Port_VDPAddress), a
    ld a, $81
    out (Port_VDPAddress), a
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
    
_LABEL_165_18:	
    di
    ld hl, $3B00
    ld de, _RAM_C1A1_
    ld bc, $0080
    call _LABEL_106_19
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