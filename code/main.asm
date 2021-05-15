;==========================================================
; created by awsm of Mayday! in 2021
; stub for eaglesoft intro
;==========================================================

;==========================================================
; labels
;==========================================================

BASIC           = $0801
CODE_START      = $c000
SCREEN          = $c400
SCROLLER        = SCREEN + $3c0
COLORRAM        = $d800


;==========================================================
; BASIC header
;==========================================================

* = BASIC

    !byte $0b, $08
    !byte $E5                     ; BASIC line number:  $E2=2018 $E3=2019 etc       
    !byte $07, $9E
    !byte '0' + CODE_START % 100000 / 10000
    !byte '0' + CODE_START %  10000 /  1000        
    !byte '0' + CODE_START %   1000 /   100        
    !byte '0' + CODE_START %    100 /    10        
    !byte '0' + CODE_START %     10             
    !byte $00, $00, $00           ; end of basic


;==========================================================
; main program
;==========================================================

!source "code/es1.asm"

