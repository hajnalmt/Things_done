Main:

mov A, #0x3F
;a memória rekeszek egyesekkel (FF) való feltöltése. 
;összesen 4 db 8 bites rekesz elegendõ a 32 bithez
;a 40-44-es címig tölti fel az adatmemóriát

INC A
mov R1, A
mov @R1, #0xF0
INC A
mov R1, A
mov @R1, #0x0F
INC A
mov R1, A
mov @R1, #0xF0
INC A
mov R1, A
mov @R1, #0x0F
INC A
mov R1, A
mov @R1, #0x00

;Ha beszúrok Innen vegye a biteket
mov A, #0x2F

INC A
mov R1, A
mov @R1, #0xF1
INC A
mov R1, A
mov @R1, #0x0F
INC A
mov R1, A
mov @R1, #0xFF
INC A
mov R1, A
mov @R1, #0xFF

;melyik helytõl
mov R7, #0x04
;hányat
mov R4, #16
SETB C
CALL Szubrutin
Szubrutin:
JC CARRYISSET ;Ha van Carry bit akkor beszúrunk.
Call kivetel
jmp $
CARRYISSET:
Call beszuras
jmp $

kivetel:
;R4-et fogjuk csökkenteni, rajta keresztül tudjuk, hogy hányszor shifteljünk
MOV A, R4
JNZ ciklus0  ;Ja R4 nem nulla, akkor van csak dolgunk.
RET

ciklus0:
;A belsõ cilus végigmegy a 32 biten
mov R5, #32
mov A, R7
mov R3, A
ciklus1:
;Ez pontosan 32-R7-szer fog lefutni
mov A, R3
JNZ kihagy
;Hogyha R3-at kinulláztuk:
MOV A, #32
SUBB A, R5
INC A 
mov B, #8
DIV AB
ADD A, #0x40
MOV R0, A
MOV A, @R0

INC B
forgatas0:
RLC A
DJNZ B, forgatas0
JNC nullas
;A nekünk kellõ Byte:
MOV A, #32
SUBB A, R5
INC A
mov B, #8
DIV AB
ADD A, #0x40
MOV R6, A

MOV A, #0x80; ettõl lesz 1-es!

;--- Ezzel oldom meg, hogy a megfelelõ kimaszkolandó helyre kerüljön az egyes
inc B
eleje:
DJNZ B, kovetkezo
JMP vege
kovetkezo:
RR A
vege:
mov R0, B
CJNE R0, #0x00, eleje
;---

mov R2, A ;A maszkoló
mov A, R6 ;R0-ba a maszkolandó
mov R0, A
mov A, R2
ORL A, @R0 ;A maszkolás
mov @R0, A

DJNZ R5, ciklus1
DJNZ R4, ciklus0
RET

;A nullázást az elõzõhöz hasonlóan
nullas:
;A nekünk kellõ Byte:
MOV A, #32
SUBB A, R5
mov B, #8
DIV AB
ADD A, #0x40
MOV R6, A

MOV A, #0x7F; ettõl lesz 0-ás!

;--- Ezzel oldom meg, hogy a megfelelõ kimaszkolandó helyre kerüljön a nullás
inc B
eleje2:
DJNZ B, kovetkezo2
JMP vege2
kovetkezo2:
RR A
vege2:
mov R0, B
CJNE R0, #0x00, eleje2
;---

mov R2, A ;A maszkoló
mov A, R6 ;R0-ba a maszkolandó
mov R0, A 
mov A, R2
ANL A, @R0 ;A maszkolás
mov @R0, A
;---

DJNZ R5, ciklus1
DJNZ R4, ciklus0
RET

kihagy:
;R7-el csökkentjük R5-öt
DEC R3
DJNZ R5, ciklus1
DJNZ R4, ciklus0
RET

beszuras:
mov A, R4
mov R1, A
bnagy:
mov A, R7
mov R3, A
MOV A, #32
SUBB A, R3
MOV R3, A
MOV R5, #31

MOV A, R4
JNZ bciklus0  ;Ha R4 nem nulla, akkor van csak dolgunk.
RET

bciklus0:
;;;;;;;;;;;;;

MOV A, R5
DEC A 
mov B, #8
DIV AB
ADD A, #0x40
MOV R0, A
MOV A, @R0

INC B
bforgatas0:
RLC A
DJNZ B, bforgatas0
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;A nekünk kellõ Byte

JNC bnullas ;!!!!!!!!!!!!!!!!!!

MOV A, R5
mov B, #8
DIV AB
ADD A, #0x40
MOV R6, A
MOV A, #0x80; ettõl lesz 1-es!

;--- Ezzel oldom meg, hogy a megfelelõ kimaszkolandó helyre kerüljön az egyes
inc B
beleje:
DJNZ B, bkovetkezo
JMP bvege3
bkovetkezo:
RR A
bvege3:
mov R0, B
CJNE R0, #0x00, beleje
;---

mov R2, A ;A maszkoló
mov A, R6 ;R0-ba a maszkolandó
mov R0, A
mov A, R2
ORL A, @R0 ;A maszkolás
mov @R0, A

JMP legvege

;A nullázást az elõzõhöz hasonlóan
bnullas:
MOV A, R5
mov B, #8
DIV AB
ADD A, #0x40
MOV R6, A
;A nekünk kellõ Byte:
MOV A, #0x7F; ettõl lesz 0-ás!

;--- Ezzel oldom meg, hogy a megfelelõ kimaszkolandó helyre kerüljön a nullás
inc B
beleje2:
DJNZ B, bkovetkezo2
JMP bvege2
bkovetkezo2:
RR A
bvege2:
mov R0, B
CJNE R0, #0x00, beleje2
;---

mov R2, A ;A maszkoló
mov A, R6 ;R0-ba a maszkolandó
mov R0, A 
mov A, R2
ANL A, @R0 ;A maszkolás
mov @R0, A
;---
;;;;;;;;;;
legvege:
DEC R5
;;;;;;;;;;;;;

DJNZ R3, bciklus0
DJNZ R4, bnagy
mov R5, #0x00
MOV A, R1
MOV R3, A
feltolt:
mov A, R7
JZ ftolt
DEC R7
JMP fvege
ftolt:
mov A, R1
JZ fvege
;;;;;;;;;;
mov A, R3
SUBB A, R1
mov B, #8
DIV AB
ADD A, #0x30
MOV R0, A
MOV A, @R0

INC B
fbforgatas0:
RLC A
DJNZ B, fbforgatas0

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
JNC fbnullas ;!!!!!!!!!!!!!!!!!!

MOV A, R5
mov B, #8
DIV AB
ADD A, #0x40
MOV R6, A
MOV A, #0x80; ettõl lesz 1-es!

;--- Ezzel oldom meg, hogy a megfelelõ kimaszkolandó helyre kerüljön az egyes
inc B
fbeleje:
DJNZ B, fbkovetkezo
JMP fbvege3
fbkovetkezo:
RR A
fbvege3:
mov R0, B
CJNE R0, #0x00, fbeleje
;---

mov R2, A ;A maszkoló
mov A, R6 ;R0-ba a maszkolandó
mov R0, A
mov A, R2
ORL A, @R0 ;A maszkolás
mov @R0, A

JMP flegvege

;A nullázást az elõzõhöz hasonlóan
fbnullas:
MOV A, R5
mov B, #8
DIV AB
ADD A, #0x40
MOV R6, A
;A nekünk kellõ Byte:
MOV A, #0x7F; ettõl lesz 0-ás!

;--- Ezzel oldom meg, hogy a megfelelõ kimaszkolandó helyre kerüljön a nullás
inc B
fbeleje2:
DJNZ B, fbkovetkezo2
JMP fbvege2
fbkovetkezo2:
RR A
fbvege2:
mov R0, B
CJNE R0, #0x00, fbeleje2
;---

mov R2, A ;A maszkoló
mov A, R6 ;R0-ba a maszkolandó
mov R0, A 
mov A, R2
ANL A, @R0 ;A maszkolás
mov @R0, A
;;;;
flegvege:
;;;;;;;;;; idáig
DEC R1
fvege:
INC R5
MOV A, R5
CJNE A, 32, feltolt
RET

