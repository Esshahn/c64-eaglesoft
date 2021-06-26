; converted with pydisass6502 by awsm of mayday!

* = $6000
!source "code/image.asm"



* = $8800
scrolltext
!scr" *** mini putt *** cracked by eagle soft incorporated on september 9th, 1987... "
!scr"  again, soho comes through with original!    greetings to nepa, the alliance, t"
!scr"riad, tti, nick danger, fbr, rad, tsi, cfr, hotline, fairlight(tony), and soho! "
!scr"           guess what adam the axe, yes..i guess your hot cracker is working on "
!scr"this right now, hu?   esi will always be 1 step ahead...  infact everyone is 1 s"
!scr"tep ahead of usspe (losers!)    hey lead eagle, oops rusty eagle ...ah thats it!"
!scr" yea!!! what a joke!!   its a shame to see such a awesome group like usspe go do"
!scr"wn...they give us so many new wares! - and yes terry, the bottom line is wares( "
!scr"i hate to say it)...  people just scratch your 'demos'. if the europeans could s"
!scr"ee you now, those hot demos, a picture and a scroll(ooooohhhhh neat'o!) but they"
!scr" don't scratch games!           there's plenty to say...but not here!           "
!scr"i'll have rush's new album soon..like i hope today...i just got pink floyd's (no"
!scr"t bad!)   well later all!          esi #1/rush #1/soho #1                       "
!byte $00

* = $9684

play_music
            jmp +


l9687
            sta $aa
            stx $ab
            jmp l9900
+
            lda lbfff
            beq +
            jsr ++
            ldx #$18
-
            lda l9c91,x
            sta $d400,x                     ; voice 1 frequency low byte
            dex
            bpl -
+
            rts
++
            lda l9ca6
            clc
            adc l9bc4
            sta l9ca6
            cmp #$07
            bcc +
            and #$07
            sta l9ca6
            sec
+
            lda l9ca7
            adc l9bc5
            sta l9ca7
            ldx #$00
l96c1
            ldy l9c2e,x
            sty $ac
            stx $ad
            lda l9b9a,y
            clc
            adc l9b97,x
            sta l9b9a,y
            lda l9bd9,x
            clc
            adc #$01
            cmp l9b9e,y
            bcc ++
            inc l9bdc,x
            lda l9bca,x
            clc
            adc #$01
            cmp #$03
            bcc +
            lda #$00
+
            sta l9bca,x
            lda #$00
++
            sta l9bd9,x
            lda l9bb4,y
            clc
            adc #$01
            sta l9bb4,y
            lda l9c28,x
            sta $aa
            lda l9c25,x
            sta $ab
-
            ldy #$00
            lda ($aa),y
            sec
            sbc #$01
            cmp #$20
            bcs +
            asl
            tay
            lda l9c51,y
            sta l9726+1
            lda l9c52,y
            sta l9726+2
            ldy #$01
            lda ($aa),y
            ldy $ac
l9726
            jsr l9a17
            jsr l9b68
            jmp -
+
            ldx $ac
            ldy $ad
            lda l9b9a,x
            bne +
            jmp l97f5
+
            lda l9bb4,x
            cmp l9bb3,x
            bcc +
            lda l9baf,x
            beq +
            jsr l9ae2
+
            lda l9beb,y
            bne +
            jsr l9b74
            jmp l977a
+
            lda l9be8,y
            beq +
            jsr l9b84
            lda l9c94,x
            cmp l9bee,y
            bcs l977a
            lda #$00
            beq ++
+
            jsr l9b74
            lda l9c94,x
            cmp l9beb,y
            bcc l977a
            lda #$01
++
            sta l9be8,y
l977a
            ldy $ad
            jsr l9a74
            ldy $ad
            lda l9b9f,x
            beq l97bb
            cmp #$06
            bcc +
            lda l9bdc,y
            and #$01
            bne l97b3
            lda l9b9f,x
            sec
            sbc #$05
            bpl ++
+
            lda l9bb4,x
            cmp #$02
            bcc l97b3
            lda l9b9d,x
            beq +
            cmp l9bb4,x
            bcc l97b3
+
            lda l9b9f,x
++
            tay
            lda l9c30,y
            bne +
l97b3
            lda l9b9c,x
+
            sta l9c95,x
            ldy $ad
l97bb
            lda l9ba0,x
            beq l97f5
            cmp #$01
            bne +
            lda l9bdc,y
            and #$01
            bne l97f2
-
            lda l9bb0,x
            sta l9c92,x
            lda l9bb1,x
            sta l9c91,x
            jmp l97f5
+
            lda l9bca,y
            beq l97f2
            cmp #$01
            beq -
            lda l9bd6,y
            sta l9c92,x
            lda l9bd3,y
            sta l9c91,x
            jmp l97f5


l97f2
            jsr l9b25
l97f5
            ldx $ad
            ldy $ac
            lda l9c22,x
            sec
            sbc #$01
            sta l9c22,x
            lda l9bb2,y
            sbc #$00
            sta l9bb2,y
            bne l981e
            lda l9c22,x
            beq +
            cmp l9c4e,x
            bcs l981e
            lda l9c95,y
            and #$fe
            sta l9c95,y
l981e
            jmp l98ec
+
            lda #$00
            sta l9bb2,y
            sta l9c93,y
            sta l9bdf,x
            sta l9bb4,y
            sta l9be2,x
            sta l9be8,x
            sta l9be5,x
            sta l9bd9,x
            sta l9bdc,x
            sta l9bca,x
            cpx l9b96
            bne +
            sta l9ca6
            lda l9bc6
            sta l9ca7
+
            lda l9c06,x
            sta l9c96,y
            lda l9bfd,x
            sta l9c97,y
            lda l9c03,x
            sta l9c94,y
l9861
            ldy #$00
            lda ($aa),y
            bne +
            jsr l9b5d
            beq l98ad
+
            cmp #$80
            bcc l98ad
            clc
            adc l9bf7,x
            sta l9c1e
            lda l9bd0,x
            beq +
            clc
            adc l9c1e
            jsr l9b32
            lda l9c20
            sta l9bd6,x
            lda l9c21
            sta l9bd3,x
+
            lda l9bcd,x
            beq +
            clc
            adc l9c1e
            jsr l9b32
            lda l9c20
            sta l9bb0,y
            lda l9c21
            sta l9bb1,y
+
            lda l9c1e
            jsr l9b32
l98ad
            ldy $ac
            lda l9c20
            sta l9c92,y
            sta l9b9a,y
            lda l9c21
            sta l9c91,y
            sta l9b9b,y
            ldy #$01
            lda ($aa),y
            ldy $ac
            sta l9c22,x
            jsr l9b68
            lda l9c22,x
            cmp #$ff
            bne +
            lda l9b9b,y
            sta l9bb1,y
            lda l9b9a,y
            sta l9bb0,y
            jmp l9861
+
            lda l9c00,x
            sta l9c95,y
            sta l9b9c,y
l98ec
            ldx $ad
            lda $aa
            sta l9c28,x
            lda $ab
            sta l9c25,x
            inx
            cpx #$03
            bcs l995d
            jmp l96c1


l9900
            lda #$00
            ldx #$7b
-
            sta l9b96,x
            dex
            bpl -
            ldx #$02
            stx l9c4f
            stx l9c4e
            stx l9c50
-
            lda #$01
            sta l9c22,x
            sta l9c2b,x
            dex
            bpl -
            lda $aa
            clc
            adc #$04
            sta l9c28
            lda $ab
            adc #$00
            sta l9c25
            ldx #$7e
            ldy #$00
-
            lda ($aa),y
            clc
            adc l9c28
            sta l9bab,x
            php
            iny
            plp
            lda ($aa),y
            adc l9c25
            sta l9ba8,x
            iny
            inx
            bpl -
            lda #$01
            bit $00a9
            sta lbfff
            ldx #$18
            lda #$00
-
            sta l9c91,x
            dex
            bpl -
l995d
            rts
            sta l9ca9
            rts
            sta l9c00,x
            rts
            sta l9c06,x
            rts
            sta l9bfd,x
            rts
            sta l9c1e
            lda l9bf1,x
            bne +
            inc l9bf1,x
            lda l9c1e
            sta l9c0c,x
+
            dec l9c0c,x
            lda l9c0c,x
            beq +
            lda l9c12,x
            sta $aa
            lda l9c15,x
            sta $ab
            rts
+
            dec l9bf1,x
            rts
            lda $aa
            sta l9c12,x
            lda $ab
            sta l9c15,x
            rts
            sta l9c1e
            lda l9bf4,x
            bne +
            inc l9bf4,x
            lda l9c1e
            sta l9c0f,x
+
            dec l9c0f,x
            lda l9c0f,x
            beq +
            lda l9c18,x
            sta $aa
            lda l9c1b,x
            sta $ab
            rts
+
            dec l9bf4,x
            rts
            lda $aa
            sta l9c18,x
            lda $ab
            sta l9c1b,x
            rts
            sta l9bf7,x
            rts
            sta l9c09,x
            rts
            sta l9b97,x
            rts
            sta l9bfa,x
            rts
            sta l9c03,x
            rts
            cmp #$64
            bcc +
            sec
            sbc #$64
            sta l9c4e,x
            rts
+
            sta l9b9d,y
            rts
            sta l9b9e,y
            rts
            cmp #$63
            bcc +
            sec
            sbc #$64
            sta l9b96
            rts
+
            sta l9b9f,y
            rts
            sta l9ba0,y
            cmp #$01
            bne +
            lda #$00
            sta l9bcd,y
+
            rts
l9a17
            sta l9baf,y
            rts
            sta l9bc7,x
            rts
            sta l9bb3,y
            rts
            pha
            and #$0f
            sta l9bee,x
            pla
            and #$f0
            lsr
            lsr
            lsr
            lsr
            sta l9beb,x
            rts
            sta l9c2b,x
            rts
            sta l9ca8
            rts
            sta l9bc6
            rts
            clc
            adc l9bf7,x
            sta l9bf7,x
            rts
            clc
            adc l9ca9
            sta l9ca9
            rts
            sta l9bd0,x
            rts
            pha
            and #$f8
            lsr
            lsr
            lsr
            sta l9bc5
            pla
            and #$07
            sta l9bc4
            rts
            sta l9bcd,x
            rts
            rts
            clc
            adc l9bb2,y
            sta l9bb2,y
            sta l9bdf,x
-
            rts


l9a74
            lda l9bb2,x
            cmp l9bdf,y
            bne +
            lda l9bb4,x
            cmp l9bb3,x
            bcc -
+
            lda l9be5,y
            cmp #$01
            beq +
            cmp #$02
            beq +
            jsr l9ab4
            jmp ++
+
            jsr l9ac9
++
            lda l9be2,y
            clc
            adc #$01
            cmp l9c2b,y
            bcc +
            lda l9be5,y
            clc
            adc #$01
            and #$03
            sta l9be5,y
            lda #$00
+
            sta l9be2,y
            rts


l9ab4
            lda l9b9b,x
            clc
            adc l9bc7,y
            sta l9b9b,x
            sta l9c91,x
            lda l9b9a,x
            adc #$00
            jmp +


l9ac9
            lda l9b9b,x
            sec
            sbc l9bc7,y
            sta l9b9b,x
            sta l9c91,x
            lda l9b9a,x
            sbc #$00
+
            sta l9b9a,x
            sta l9c92,x
            rts


l9ae2
            cmp #$01
            bne l9b1c
            lda l9bb0,x
            cmp l9b9a,x
            bcc l9b0a
            bne l9af8
            lda l9bb1,x
            cmp l9b9b,x
            bcc l9b0a
l9af8
            lda l9b9b,x
            clc
            adc l9bfa,y
            sta l9b9b,x
            bcc +
            inc l9b9a,x
+
            jmp l9b25


l9b0a
            lda l9b9b,x
            sec
            sbc l9bfa,y
            sta l9b9b,x
            bcs +
            dec l9b9a,x
+
            jmp l9b25


l9b1c
            cmp #$03
            beq l9b0a
            cmp #$04
            beq l9af8
            rts


l9b25
            lda l9b9a,x
            sta l9c92,x
            lda l9b9b,x
            sta l9c91,x
            rts


l9b32
            ldx #$07
-
            cmp #$8c
            bcc +
            sbc #$0c
            dex
            jmp -
+
            sbc #$7f
            asl
            tay
            lda l9c36,y
            sta l9c20
            lda l9c37,y
            sta l9c21
            cpx #$00
            beq l9b63
-
            lsr l9c20
            ror l9c21
            dex
            bne -
            beq l9b63
l9b5d
            sta l9c20
            sta l9c21
l9b63
            ldy $ac
            ldx $ad
            rts
l9b68
            lda $aa
            clc
            adc #$02
            sta $aa
            bcc +
            inc $ab
+
            rts


l9b74
            lda l9c93,x
            clc
            adc l9c09,y
            sta l9c93,x
            bcc +
            inc l9c94,x
+
            rts
l9b84
            lda l9c93,x
            sec
            sbc l9c09,y
            sta l9c93,x
            bcs +
            dec l9c94,x
+
            rts


* = $9b96
l9b96

!byte $00

l9b97

!byte $00, $00, $00

l9b9a

!byte $04

l9b9b

!byte $59

l9b9c

!byte $41

l9b9d

!byte $00

l9b9e

!byte $00

l9b9f

!byte $00

l9ba0

!byte $00, $11, $c2, $17, $00, $00, $00, $00

l9ba8

!byte $00, $00, $17

l9bab

!byte $00, $00, $00, $03

l9baf

!byte $00

l9bb0

!byte $00

l9bb1

!byte $00

l9bb2

!byte $00

l9bb3

!byte $00

l9bb4

!byte $07, $00, $03, $00, $00, $00, $00, $07, $00, $00, $00, $00, $01, $00, $e5, $00

l9bc4

!byte $00

l9bc5

!byte $00

l9bc6

!byte $00

l9bc7

!byte $00, $00, $50

l9bca

!byte $01, $01, $01

l9bcd

!byte $00, $00, $f4

l9bd0

!byte $00, $00, $0c

l9bd3

!byte $00, $00, $00

l9bd6

!byte $00, $00, $00

l9bd9

!byte $00, $00, $00

l9bdc

!byte $07, $07, $e5

l9bdf

!byte $00, $00, $02

l9be2

!byte $00, $00, $00

l9be5

!byte $03, $03, $00

l9be8

!byte $00, $00, $00

l9beb

!byte $00, $00, $00

l9bee

!byte $00, $00, $00

l9bf1

!byte $01, $01, $00

l9bf4

!byte $00, $00, $00

l9bf7

!byte $01, $ff, $01

l9bfa

!byte $00, $c8, $00

l9bfd

!byte $5f, $00, $00

l9c00

!byte $41, $17, $11

l9c03

!byte $00, $00, $00

l9c06

!byte $18, $19, $cc

l9c09

!byte $5a, $00, $00

l9c0c

!byte $01, $fc, $00

l9c0f

!byte $00, $00, $00

l9c12

!byte $20, $6e, $ac

l9c15

!byte $9d, $9d, $b4

l9c18

!byte $10, $00, $de

l9c1b

!byte $9d, $00, $b4

l9c1e

!byte $b6, $00

l9c20

!byte $17

l9c21

!byte $3a

l9c22

!byte $01, $09, $99

l9c25

!byte $9d, $9d, $9d

l9c28

!byte $2a, $82, $a4

l9c2b

!byte $01, $01, $01

l9c2e

!byte $00, $07

l9c30

!byte $0e, $41, $21, $11, $81, $51

l9c36

!byte $83

l9c37

!byte $68, $8b, $39, $93, $80, $9c, $45, $a5, $90, $af, $69, $b9, $d7, $c4, $e3, $d0, $99, $dd, $00, $ea, $25, $f8, $10

l9c4e

!byte $02

l9c4f

!byte $02

l9c50

!byte $02

l9c51

!byte $5e

l9c52

!byte $99, $66, $99, $62, $99, $e4, $99, $e8, $99, $f7, $99, $fb, $99, $0a, $9a, $1f, $9a, $6a, $99, $1b, $9a, $dc, $99, $e0, $99, $d8, $99, $17, $9a, $6e, $99, $96, $99, $a1, $99, $c9, $99, $d4, $99, $23, $9a, $34, $9a, $38, $9a, $3c, $9a, $69, $9a, $40, $9a, $48, $9a, $50, $9a, $54, $9a, $4e, $99, $64, $9a, $68, $9a

l9c91

!byte $59

l9c92

!byte $04

l9c93

!byte $76

l9c94

!byte $02

l9c95

!byte $40

l9c96

!byte $18

l9c97

!byte $5f, $c2, $11, $00, $00, $17, $19, $00, $00, $00, $00, $00, $17, $cc, $00

l9ca6

!byte $00

l9ca7

!byte $00

l9ca8

!byte $00

; must be music
l9ca9
!byte $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $b6, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $6a, $00, $8a, $00, $01, $0f, $03, $41, $02, $18, $0a, $5f, $0e, $5a, $14, $01, $13, $00, $a4, $40, $98, $10, $a4, $10, $98, $08, $a4, $08, $98, $08, $a4, $08, $11, $00, $a4, $10, $98, $08, $a4, $08, $98, $08, $a4, $08, $98, $08, $a4, $08, $10, $02, $11, $00, $a1, $10, $95, $08, $a1, $08, $95, $08, $a1, $08, $95, $08, $a1, $08, $10, $02, $11, $00, $9d, $10, $91, $08, $9d, $08, $91, $08, $9d, $08, $91, $08, $9d, $08, $10, $02, $11, $00, $9f, $10, $93, $08, $9f, $08, $93, $08, $9f, $08, $93, $08, $9f, $08, $10, $02, $12, $0b, $00, $01, $1e, $01, $11, $00, $03, $17, $02, $19, $0d, $c8, $14, $ff, $b7, $08, $0f, $03, $b7, $10, $b7, $08, $b7, $10, $b7, $10, $10, $ff, $11, $01, $00, $fe, $10, $02, $00, $01, $14, $01, $08, $03, $1c, $0c, $1f, $f4, $03, $17, $00, $02, $02, $cc, $0b, $50, $00, $7e, $19, $02, $03, $11, $bc, $80, $02, $17, $14, $0d, $15, $84, $11, $01, $bc, $08, $bc, $08, $b7, $08, $b7, $08, $10, $04, $11, $01, $b9, $08, $b9, $08, $b4, $08, $b4, $08, $10, $04, $11, $01, $b5, $08, $b5, $08, $b0, $08, $b0, $08, $10, $04, $11, $01, $b7, $08, $b7, $08, $b2, $08, $b2, $08, $10, $04, $03, $11, $13, $00, $02, $cc, $bc, $40, $1c, $00, $1f, $00, $08, $00, $07, $00, $02, $1f, $b7, $80, $02, $cc, $b4, $10, $b5, $10, $b7, $10, $b9, $10, $02, $1c, $be, $40, $bd, $40, $11, $00, $be, $08, $bc, $08, $10, $04, $11, $00, $c0, $08, $c1, $08, $10, $04, $c3, $80, $03, $41, $04, $01, $14, $f5, $0b, $28, $12, $02, $02, $1c, $03, $17, $14, $01, $c8, $80, $0b, $50, $c1, $40, $d0, $40, $c3, $80, $c1, $40, $cd, $40, $d1, $80, $0e, $64, $03, $41, $02, $17, $04, $01, $11, $00, $c8, $08, $c8, $08, $c3, $08, $c3, $08, $10, $04, $14, $0d, $11, $01, $bc, $08, $bc, $08, $b7, $08, $b7, $08, $10, $04, $11, $01, $b9, $08, $b9, $08, $b4, $08, $b4, $08, $10, $04, $11, $01, $b5, $08, $b5, $08, $b0, $08, $b0, $08, $10, $04, $11, $01, $b7, $08, $b7, $08, $b2, $08, $b2, $08, $10, $04, $02, $1c, $03, $17, $0b, $50, $14, $01, $c8, $80, $c1, $40, $d0, $40, $c3, $80, $c1, $40, $cd, $40, $d1, $80, $03, $11, $13, $00, $02, $cc, $bc, $40, $07, $00, $02, $1f, $b7, $80, $02, $cc, $b4, $10, $b5, $10, $b7, $10, $b9, $10, $02, $1c, $be, $40, $bd, $40, $11, $00, $be, $08, $bc, $08, $10, $04, $11, $00, $c0, $08, $c1, $08, $10, $04, $c3, $80, $03, $41, $04, $01, $14, $f5, $0b, $28, $12, $02, $03, $17, $11, $00, $00, $40, $10, $0a, $02, $1c, $03, $17, $0b, $50, $14, $01, $c8, $80, $c1, $40, $d0, $40, $c3, $80, $c1, $40, $cd, $40, $d1, $80, $11, $01, $00, $e7, $19, $03, $10, $ff, $00, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

* = $a500
la500
; something will get copied here


* = $bfff
lbfff
!byte $00









;==========================================================
; main code 
;==========================================================

* = CODE_START
            sei
            lda #$36
            sta $01
            lda #$0b
            sta $d011                       ; screen control register #1, vertical scroll
            jsr lc350
            jsr lc224
            jsr lc36a
            lda #$00
            sta music_counter
            sta $c6
-
            bit $d011                       ; screen control register #1, vertical scroll
            bpl -
            jsr setup
-
            lda lbfff
            beq +
            jsr $ffe4                       ; GETIN
            beq -
            bne exit                        ; if key was pressed, exit
+
            jsr lc36a
            jmp -


exit
            sei
            lda #$31
            sta $0314                       ; IRQ vector routine low byte
            lda #$ea
            sta $0315                       ; IRQ vector routine high byte
            jsr $ff84                       ; IOINIT
            jsr $ff81                       ; SCINIT
            ldx #$19
            lda #$00
-
            sta $d400,x                     ; voice 1 frequency low byte
            dex
            bpl -
            stx $d021                       ; background color
            stx $d020                       ; border color
            lda #$08
            tay
            tax
            jmp $fce2




* = $c091
setup
            sei
            lda #<irq
            sta $0314                       ; IRQ vector routine low byte
            lda #>irq
            sta $0315                       ; IRQ vector routine high byte
            lda $d011                       ; screen control register #1, vertical scroll
            and #$7f
            sta $d011                       ; screen control register #1, vertical scroll
            lda #$f1
            sta $d012                       ; raster line
            lda #$81
            sta $d019                       ; interrupt status
            sta $d01a                       ; interrupt control
            lda $dc0e                       ; CIA #1 - timer A control
            and #$fe
            sta $dc0e                       ; CIA #1 - timer A control
            lda #<la500
            sta $fb
            lda #>la500
            sta $fc
            lda #$ff
            sta $fd
            cli
            rts


;==========================================================
; irq
;==========================================================


irq
            lda $d019                       ; interrupt status
            and #$01
            beq lc125
            inc $ff
            lda #$00
            sta $d021                       ; background color
            lda $d011                       ; screen control register #1, vertical scroll
            and #$df
            sta $d011                       ; screen control register #1, vertical scroll
            lda #$13
            sta $d018                       ; memory setup
            dec $fd
            bpl +
            lda #$07
            sta $fd
+
            dec $fd
            lda $d016                       ; screen control register #2, horizontal scroll, multicolor, screenwidth
            and #$e0
            ora $fd
            sta $d016                       ; screen control register #2, horizontal scroll, multicolor, screenwidth
            ldy #$27
-
            lda color_wash,y
            sta $dbc0,y
            dey
            bpl -
            ldx color_wash
            ldy #$00
-
            iny
            lda color_wash,y
            dey
            sta color_wash,y
            iny
            cpy #$38
            bne -
            stx color_wash_end - 1
            lda #<irq2
            sta $0314                       ; IRQ vector routine low byte
            lda #>irq2
            sta $0315                       ; IRQ vector routine high byte
            lda #$10
            sta $d012                       ; raster line


lc125
            lda #$81
            sta $d019                       ; interrupt status
            sta $d01a                       ; interrupt control
            lda $dc0d                       ; CIA #1 - interrupt control and status
            pla
            tay
            pla
            tax
            pla
            rti




;==========================================================
; irq2
;==========================================================

irq2
            lda $d019                       ; interrupt status
            and #$01
            beq lc195
            lda pic_end -1
            sta $d021                       ; background color
            lda $d016                       ; screen control register #2, horizontal scroll, multicolor, screenwidth
            and #$f0
            ora #$18
            sta $d016                       ; screen control register #2, horizontal scroll, multicolor, screenwidth
            lda $d011                       ; screen control register #1, vertical scroll
            ora #$20
            sta $d011                       ; screen control register #1, vertical scroll
            lda #$19
            sta $d018                       ; memory setup
            lda $fd
            bne lc186
            tay
-
            iny
            lda SCROLLER,y
            dey
            sta SCROLLER,y
            iny
            cpy #$28
            bne -
            ldy #$00
            inc $fb
            bne lc174
            inc $fc


lc174
            lda ($fb),y
            bne +
            lda #$01
            sta $fb
            lda #$a5
            sta $fc
            jmp lc174
+
            sta lc7e7


lc186
            lda #<irq
            sta $0314                       ; IRQ vector routine low byte
            lda #>irq
            sta $0315                       ; IRQ vector routine high byte
            lda #$f1
            sta $d012                       ; raster line


lc195
            lda #$81
            sta $d019                       ; interrupt status
            sta $d01a                       ; interrupt control
            inc music_counter
            lda music_counter
            cmp #$05                        ; affects music speed
            beq +
            jsr play_music
            jmp $ea31                       ; KERNAL's standard interrupt routine
+
            lda #$00
            sta music_counter
            jmp $ea31                       ; KERNAL's standard interrupt routine


music_counter

!byte $00

color_wash
!byte $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0f, $0f, $0f, $0f
!byte $0f, $0f, $0f, $0f, $01, $01, $01, $01, $01, $01, $01, $01, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f
!byte $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
color_wash_end




copy
            stx tmp_address
            sty tmp_address+1
            ldy #$00
-
            lda ($fb),y
            sta ($fd),y
            lda $fc
            cmp tmp_address
            bne +
            lda $fb
            cmp tmp_address+1
            bne +
            rts
+
            inc $fb
            bne +
            inc $fc
+
            inc $fd
            bne -
            inc $fe
            jmp -


tmp_address
!byte $00, $00



lc224
            lda #<scrolltext
            sta lc242+1
            lda #>scrolltext
            sta lc242+2
            lda #<la500
            sta lc245+1
            sta lc24d+1
            lda #>la500
            sta lc245+2
            sta lc24d+2


lc23e
            ldx #$02
            ldy #$00


lc242
            lda scrolltext         ; selfmod

lc245
            sta la500,y
            beq ++
            iny
            ora #$80

lc24d
            sta la500,y
            inc lc242+1
            bne +
            inc lc242+2
+
            iny
            bne lc242
            inc lc245+2
            inc lc24d+2
            dex
            bne lc242
            jmp lc23e


++
            rts


lc268
            lda #$00
            sta lc2fe+1
            lda #$60
            sta lc300+1
            lda #$e0
            sta lc302+1
            sta screenmem+2
            ldy #$20
            ldx #$00
            txa


screenmem
            sta $e000,x                     ; selfmod
            inx
            bne screenmem
            inc screenmem+2
            dey
            bne screenmem
            ldx #$7f
            ldy #$40
            stx $fc
            sty $fb
            ldx #>SCREEN                    ; screen ram?
            ldy #<SCREEN
            stx $fe
            sty $fd
            ldx #$83
            ldy #$27
            jsr copy
            ldx #$83
            ldy #$28
            stx $fc
            sty $fb
            ldx #>COLORRAM                  ; color ram?
            ldy #<COLORRAM
            stx $fe
            sty $fd
            ldx #$87
            ldy #$0f
            jsr copy
            lda $dd00                       ; CIA #2 - port A, serial bus access
            and #$fc
            sta $dd00                       ; CIA #2 - port A, serial bus access
            lda #$19
            sta $d018                       ; memory setup
            lda $d011                       ; screen control register #1, vertical scroll
            ora #$20
            sta $d011                       ; screen control register #1, vertical scroll
            lda $d016                       ; screen control register #2, horizontal scroll, multicolor, screenwidth
            ora #$10
            sta $d016                       ; screen control register #2, horizontal scroll, multicolor, screenwidth
            lda pic_end -1
            sta $d021                       ; background color
            lda #$00
            sta $d020                       ; border color
-
            bit $d011                       ; screen control register #1, vertical scroll
            bpl -
            lda $d011                       ; screen control register #1, vertical scroll
            ora #$10
            sta $d011                       ; screen control register #1, vertical scroll
            rts


lc2eb
            jsr lc2fe
            inc lc2fe+1
            lda lc2fe+1
            and #$0f
            cmp #$08
            bne +
            jsr lc32e
+
            rts


lc2fe
            ldy #$00
lc300
            lda #$60
lc302
            ldx #$e0
            sty $a5
            sta $a6
            sty $a3
            stx $a4
            ldx #$27                      ; image width in chars when animating
-
            ldy #$00
            lda ($a5),y
            sta ($a3),y
            clc
            lda $a5
            adc #$08
            sta $a5
            bcc +
            inc $a6
+
            clc
            lda $a3
            adc #$08
            sta $a3
            bcc +
            inc $a4
+
            dex
            bpl -
            rts


lc32e
            lda lc2fe+1
            and #$f0
            sta lc2fe+1
            clc
            lda lc2fe+1
            adc #$40
            sta lc2fe+1
            php
            inc lc300+1
            inc lc302+1
            plp
            bcc +
            inc lc300+1
            inc lc302+1
+
            rts


lc350
            jsr lc268
            ldx #$c8
---
            txa
            pha
            jsr lc2eb
            ldx #$0f
--
            ldy #$ff
-
            dey
            bne -
            dex
            bne --
            pla
            tax
            dex
            bne ---
            rts


lc36a
            lda #$00
            ldx #$9d
            jmp l9687


* = $c7e7
; likely charset
lc7e7
!byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0f, $0f, $3c, $3f, $f0, $f0, $00, $ff, $ff, $00, $ff, $f0, $ff, $ff, $00, $3f, $ff, $f0, $f0, $f0, $ff, $3f, $00, $ff, $ff, $00, $f0, $f0, $ff, $ff, $00, $3f, $ff, $f0, $ff, $f0, $ff, $3f, $00, $ff, $ff, $00, $ff, $f0, $f0, $f0, $00, $3f, $ff, $f0, $f0, $f0, $ff, $3f, $00, $f0, $f0, $f0, $ff, $f0, $f0, $f0, $00, $3f, $3f, $03, $03, $03, $3f, $3f, $00, $3f, $3f, $00, $f0, $f0, $ff, $3f, $00, $f0, $f3, $ff, $ff, $f3, $f0, $f0, $00, $f0, $f0, $f0, $f0, $f0, $ff, $3f, $00, $f0, $fc, $ff, $ff, $f3, $f0, $f0, $00, $f0, $fc, $ff, $ff, $f3, $f0, $f0, $00, $3f, $ff, $f0, $f0, $f0, $ff, $3f, $00, $ff, $ff, $00, $ff, $f0, $f0, $f0, $00, $3f, $ff, $f0, $f0, $f0, $ff, $3f, $00, $ff, $ff, $00, $ff, $f0, $f0, $f0, $00, $3f, $ff, $f0, $3f, $00, $ff, $ff, $00, $ff, $ff, $00, $00, $00, $00, $00, $00, $f0, $f0, $f0, $f0, $f0, $ff, $3f, $00, $f0, $f0, $f0, $f0, $fc, $3f, $0f, $00, $f0, $f0, $f3, $ff, $ff, $fc, $f0, $00, $f0, $fc, $3f, $0f, $3f, $fc, $f0, $00, $3c, $3c, $3c, $0f, $03, $03, $03, $00, $ff, $ff, $03, $0f, $3f, $ff, $ff, $00, $f0, $ff, $f3, $ff, $03, $00, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $33, $00, $00, $00, $00, $00, $00, $00, $33, $00, $00, $00, $00, $00, $00, $00, $33, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $03, $03, $00, $03, $03, $00, $3c, $3c, $3c, $00, $00, $00, $00, $00, $0e, $0e, $3f, $0e, $3f, $0e, $0e, $00, $03, $3f, $f3, $3f, $03, $ff, $03, $00, $3c, $f3, $f3, $3f, $3f, $f3, $c0, $00, $3f, $f3, $3f, $ff, $f0, $ff, $3f, $00, $03, $03, $03, $00, $00, $00, $00, $00, $03, $0f, $3c, $3c, $3c, $0f, $03, $00, $0f, $03, $00, $00, $00, $03, $0f, $00, $00, $33, $0f, $3f, $0f, $33, $00, $00, $00, $0f, $0f, $ff, $0f, $0f, $00, $00, $00, $00, $00, $00, $00, $0f, $0f, $3c, $00, $00, $00, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0f, $0f, $00, $00, $00, $03, $0f, $3f, $fc, $f0, $00, $1f, $7f, $e6, $e2, $f1, $f9, $7f, $1f, $0f, $3f, $0f, $0f, $0f, $ff, $ff, $00, $ff, $ff, $00, $0f, $ff, $ff, $ff, $00, $ff, $ff, $00, $3f, $00, $ff, $ff, $00, $f0, $f0, $f0, $f0, $ff, $ff, $00, $00, $ff, $ff, $f0, $ff, $00, $ff, $ff, $00, $3f, $ff, $f0, $ff, $f0, $ff, $3f, $00, $ff, $ff, $00, $03, $0f, $0f, $0f, $00, $3f, $ff, $f0, $3f, $f0, $ff, $3f, $00, $3f, $ff, $f0, $3f, $00, $ff, $ff, $00, $00, $0f, $0f, $00, $0f, $0f, $00, $00, $00, $03, $03, $00, $03, $03, $0f, $00, $00, $0f, $3e, $7c, $3e, $0f, $00, $00, $00, $1f, $1f, $00, $1f, $1f, $00, $00, $7c, $0f, $00, $00, $00, $0f, $7c, $00, $0f, $18, $18, $00, $07, $00, $07, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $f0, $fc, $3c, $3c, $fc, $3c, $3c, $00, $f0, $fc, $3c, $f0, $3c, $fc, $f0, $00, $f0, $fc, $3c, $00, $3c, $fc, $f0, $00, $f0, $fc, $3c, $3c, $3c, $fc, $f0, $00, $fc, $fc, $00, $fc, $00, $fc, $fc, $00, $fc, $fc, $00, $f0, $00, $00, $00, $00, $f0, $fc, $00, $fc, $3c, $fc, $f0, $00, $3c, $3c, $3c, $3c, $3c, $3c, $3c, $00, $fc, $fc, $c0, $c0, $c0, $fc, $fc, $00, $fc, $fc, $f0, $f0, $f0, $f0, $c0, $00, $f0, $c0, $00, $00, $c0, $f0, $3c, $00, $00, $00, $00, $00, $00, $fc, $fc, $00, $3c, $fc, $fc, $fc, $3c, $3c, $3c, $00, $f0, $f0, $f0, $f0, $f0, $f0, $f0, $00, $f0, $fc, $3c, $3c, $3c, $fc, $f0, $00, $f0, $fc, $3c, $f0, $00, $00, $00, $00, $f0, $fc, $3c, $3c, $3c, $fc, $cf, $00, $c0, $fc, $3c, $f0, $3c, $3c, $3c, $00, $fc, $fc, $00, $f0, $3c, $fc, $f0, $00, $c0, $f0, $f0, $f0, $f0, $f0, $f0, $00, $3c, $3c, $3c, $3c, $3c, $fc, $f0, $00, $3c, $3c, $3c, $3c, $fc, $f0, $c0, $00, $3c, $3c, $3c, $fc, $fc, $fc, $3c, $00, $3c, $fc, $f0, $c0, $f0, $fc, $3c, $00, $3c, $3c, $3c, $f0, $c0, $c0, $c0, $00, $fc, $fc, $f0, $c0, $00, $fc, $fc, $00, $00, $c0, $c0, $fc, $c0, $3c, $fc, $00, $00, $00, $00, $00, $00, $00, $00, $00, $cc, $00, $00, $00, $00, $00, $00, $00, $cc, $00, $00, $00, $00, $00, $00, $00, $30, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $c0, $c0, $c0, $c0, $00, $c0, $c0, $00, $3c, $3c, $3c, $00, $00, $00, $00, $00, $70, $70, $fc, $70, $fc, $70, $70, $00, $00, $fc, $00, $f0, $3c, $f0, $00, $00, $0c, $3c, $f0, $f0, $3c, $3c, $f0, $00, $00, $c0, $0f, $fc, $f0, $fc, $cf, $00, $c0, $c0, $c0, $00, $00, $00, $00, $00, $c0, $00, $00, $00, $00, $00, $c0, $00, $00, $c0, $f0, $f0, $f0, $c0, $00, $00, $00, $30, $c0, $f0, $c0, $30, $00, $00, $00, $00, $00, $f0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $f0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $3c, $fc, $f0, $c0, $00, $00, $00, $00, $f8, $fe, $67, $23, $13, $9f, $fe, $f8, $00, $00, $00, $00, $00, $f0, $f0, $00, $f0, $fc, $fc, $f0, $00, $fc, $fc, $00, $f0, $fc, $3c, $f0, $3c, $fc, $f0, $00, $00, $00, $f0, $f0, $fc, $fc, $f0, $00, $fc, $fc, $00, $f0, $fc, $fc, $f0, $00, $fc, $fc, $00, $f0, $3c, $fc, $f0, $00, $fc, $fc, $fc, $f0, $c0, $c0, $c0, $00, $f0, $fc, $3c, $f0, $3c, $fc, $f0, $00, $f0, $fc, $3c, $fc, $3c, $fc, $f0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $c0, $c0, $00, $c0, $c0, $00, $00, $3e, $f0, $00, $00, $00, $f0, $3e, $00, $00, $f8, $f8, $00, $f8, $f8, $00, $00, $00, $f0, $7c, $3e, $7c, $f0, $00, $00, $c0, $60, $60, $60, $c0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $f0, $fc, $3c, $3c, $fc, $3c, $3c, $00, $f0, $fc, $3c, $f0, $3c, $fc, $f0, $00, $f0, $fc, $3c, $00, $3c, $fc, $f0, $00, $f0, $fc, $3c, $3c, $3c, $fc, $f0, $00, $fc, $fc, $00, $fc, $00, $fc, $fc, $00, $fc, $fc, $00, $f0, $00, $00, $00, $00, $f0, $fc, $00, $fc, $3c, $fc, $f0, $00, $3c, $3c, $3c, $3c, $3c, $3c, $3c, $00, $fc, $fc, $c0, $c0, $c0, $fc, $fc, $00, $fc, $fc, $f0, $f0, $f0, $f0, $c0, $00, $f0, $c0, $00, $00, $c0, $f0, $3c, $00, $00, $00, $00, $00, $00, $fc, $fc, $00, $3c, $fc, $fc, $fc, $3c, $3c, $3c, $00, $f0, $f0, $f0, $f0, $f0, $f0, $f0, $00, $f0, $fc, $3c, $3c, $3c, $fc, $f0, $00, $f0, $fc, $3c, $f0, $00, $00, $00, $00, $f0, $fc, $3c, $3c, $3c, $fc, $cf, $00, $c0, $fc, $3c, $f0, $3c, $3c, $3c, $00, $fc, $fc, $00, $f0, $3c, $fc, $f0, $00, $c0, $f0, $f0, $f0, $f0, $f0, $f0, $00, $3c, $3c, $3c, $3c, $3c, $fc, $f0, $00, $3c, $3c, $3c, $3c, $fc, $f0, $c0, $00, $3c, $3c, $3c, $fc, $fc, $fc, $3c, $00, $3c, $fc, $f0, $c0, $f0, $fc, $3c, $00, $3c, $3c, $3c, $f0, $c0, $c0, $c0, $00, $fc, $fc, $f0, $c0, $00, $fc, $fc, $00, $00, $c0, $c0, $fc, $c0, $3c, $fc, $00, $00, $00, $00, $00, $00, $00, $00, $00, $cc, $00, $00, $00, $00, $00, $00, $00, $cc, $00, $00, $00, $00, $00, $00, $00, $30, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $c0, $c0, $c0, $c0, $00, $c0, $c0, $00, $3c, $3c, $3c, $00, $00, $00, $00, $00, $fc, $00, $00, $00, $00, $00, $00, $00, $00, $fc, $00, $f0, $3c, $f0, $00, $00, $0c, $3c, $f0, $f0, $3c, $3c, $f0, $00, $00, $c0, $0f, $fc, $f0, $fc, $cf, $00, $c0, $c0, $c0, $00, $00, $00, $00, $00, $c0, $00, $00, $00, $00, $00, $c0, $00, $00, $c0, $f0, $f0, $f0, $c0, $00, $00, $00, $30, $c0, $f0, $c0, $30, $00, $00, $00, $00, $00, $f0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $f0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $3c, $fc, $f0, $c0, $00, $00, $00, $00, $f8, $fe, $67, $23, $13, $9f, $fe, $f8, $00, $00, $00, $00, $00, $f0, $f0, $00, $f0, $fc, $fc, $f0, $00, $fc, $fc, $00, $f0, $fc, $3c, $f0, $3c, $fc, $f0, $00, $00, $00, $f0, $f0, $fc, $fc, $f0, $00, $fc, $fc, $00, $f0, $fc, $fc, $f0, $00, $fc, $fc, $00, $f0, $3c, $fc, $f0, $00, $fc, $fc, $fc, $f0, $c0, $c0, $c0, $00, $f0, $fc, $3c, $f0, $3c, $fc, $f0, $00, $f0, $fc, $3c, $fc, $3c, $fc, $f0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $c0, $c0, $00, $c0, $c0, $00, $00, $0f, $3c, $f0, $c0, $00, $00, $ff, $00, $00, $00, $00, $c0, $f0, $3c, $ff, $00, $00, $c0, $f0, $3c, $f0, $c0, $00, $00, $f0, $3c, $3c, $f0, $c0, $00, $c0, $00