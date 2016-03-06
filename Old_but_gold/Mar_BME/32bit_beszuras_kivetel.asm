;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;   	Hajnal Máté
;32 bites bitsorozatba adott számú bit 
;beszúrása/kivétele tetszõleges helyre/helyrõl. A 
;beszúrás feletti rész felfelé csúszik (a teteje kilép), 
;kivételkor lefelé csúszik és felül 0-k lépnek be.
;A #40, 41, 42, 43-as memóriacímeket, használom a 32 bites adatok tárolásához. Itt láthatjuk majd a végeredményt.
;A beszúráshoz az adatokat, a #30as memóriacímtõl kezdve várhatjuk.
;Összesen két bemeneti paramétert kell megadnunk, a feladathoz. Azt, hogy melyik helytõl és, hogy hányat akarunk beszúrni.
;Hogyha lefutott a program, akkor belefut az egyik JMP $ ágba. Beszúrás (CARRY == 1) esetén a beszuras utáni. Kivétel (CARRY == 0)esetén a kivetel utániba.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Main:

mov A, #0x3F
;a memória rekeszek feltöltése. 
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

;bemeneti paraméterek

;melyik helytõl
mov R7, #0x04
;hányat
mov R4, #8
; Hogyha beszúrunk akkor legyen a Carry bit egyes, ha nem, akkor 0;
SETB C  ;beszúrunk
;CLR C  ;kiveszünk

;Maga a szubrutin csak annyit csinál, hogy eldönti a Carry alapján milyen mûveletet akarunk végrehajtani, és meghívja a 
CALL Szubrutin
Szubrutin:
;Ha van Carry bit akkor beszúrunk.
JC CARRYISSET 
Call kivetel
jmp $
CARRYISSET:
Call beszuras
jmp $


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;
;A kivételt megvalósító függyvény
;;;;;;;;

kivetel:
;R4-et fogjuk csökkenteni, rajta keresztül tudjuk, hogy hányszor shifteljünk
MOV A, R4
JNZ kciklus0  ;Ha R4 nem nulla, akkor van csak dolgunk. Egyébként egyet se kell kivenni.
RET

;;;;;;;;;;;;;;;;;;
;A függvény, úgy mûködik, hogy két ciklust futtat. Az egyik egy külsõ ciklus ami egyenként végig megy a harminckét biten, majd, ha elértünk a beszúrandó helyre;
;akkor elkezdi attól, a bittõl felfele egyel balra shiftelni a fentebb lévõ összes bitet egymás után. Ezt annyiszor csinálja meg, amennyi bitet kiakarunk venni.
;Végül a függvény végén  a felsõ biteken 0-k fognak megjelenni, mert a #44-es memóriacím elsõ bitjét 0-nak inicializáltuk.
;;;;;;;;;;;;;;;;;;

kciklus0:
;A külsõ ciklus végigmegy a 32 biten
mov R5, #32
mov A, R7
mov R3, A ;Átmentjük R7-et R3-ba, hogy ne rontsuk el

kciklus1:
;Ez pontosan 32-R7-szer fog lefutni

;Hogyha nem értünk még a megfelelõ helyre, akkor még ne csináljunk semmit.
mov A, R3
JNZ kkihagy

;Hogyha R3-at kinulláztuk, akkor már a megfelelõ helyen vagyunk, már nincs is rá szükségünk. Innentõl R3 végig 0.

;;;;;;
;A shiftelés megvalósítása.
;A külsõ ciklusban R5 folyamatosan csökken 32-rõl. Így elérjük a jobb oldalról nézve, hogy hanyadik bitnél járunk.
;Ekkor az a dolgunk, hogy a sorban a következõ bitrõl megállapítjuk, hogy 1-es vagy 0-ás, és az értéket beírjuk az aktuális bit helyére.
;A 32 bites bitsorozatban, az utolsó bit értéke a #44-es memóriacím elsõ bitje alapján íródik be. Ezt kinulláztuk a specifikációnál, így felülrõl nullák fognak becsúszni.
;;;;;;

;Nézzük, meg hogy az aktuális plusz egyedik bit, melyik memóriacímen van.
MOV A, #32
SUBB A, R5
INC A ;Az aktuális plusz egyedik bitnek nézzük meg a helyét.
mov B, #8 ;B-ben lesz a 8-al való osztási maradék.
DIV AB  ;A-ban lesz, hogy hanyadik byteban van a aktuális plusz egyedik bit.
ADD A, #0x40  ;A kezdõcím plusz A-dik byte kell nekünk.
MOV R0, A
MOV A, @R0  ;A-ba belehelyeztük az ott lévõ byte értékét

;Ezzel a résszel belemozgatom a Carry bitbe, a nekem kellõ bit értékét.
INC B ;Pont a maradék plusz egyszer kell forgatni, hogy a megfelelõ bit kerüljön a Carrybe.
kforgatas0:
RLC A
DJNZ B, kforgatas0

;Vagy 0-asra vagy 1-esre kell átírnom az aktuális bitet.
JNC knullas  ;Ha a Carry 0, akkor 0-ra (ugrás knullas függvényre). Egyébként 1-esre azaz folytatódik a rutin.

;;;;;;;;
;Az egyesre való átírást, úgy érem el, hogy veszem az aktuális átírandó bit byteját és maszkolom (OR kapcsolat), egy olyan bytettal, amelyikben 
;1 darab egyes található az átírandó bit helyén.
;;;;;;;;

;A már láthatott algoritmussal megnézem, hogy az aktuális bit, melyik memóriacímen van.
MOV A, #32
SUBB A, R5
INC A  ;Ez most az elrontódott Carry bit miatt kell bele.
mov B, #8
DIV AB
ADD A, #0x40
MOV R6, A ;Az aktuális bit memóriacímét beleírom R6 regiszterbe

;Az alaphelyzet, ha a byte elsõ bitjét kell 1-esre változtatni.
MOV A, #0x80  

;--- Ezzel oldom meg, hogy a megfelelõ kimaszkolandó helyre kerüljön az egyes
inc B  ;DJNZ elõször csökkent és utána vizsgál
keleje:
DJNZ B, kkovetkezo  ;Ha B nulla lesz akkor ugrunk a végére
JMP kvege
kkovetkezo:
RR A ;ha B nem nulla akkor rotáljuk jobbra A-t, azaz a maszkolóbitet.
kvege:
mov R0, B
CJNE R0, #0x00, keleje ;Addig végezzük maszkolóbit shiftelgetést, amíg B azaz a maradék nem lesz 0.
;---

;---Ezzel elvégezzük a megfelelõ maszkolást.
mov R2, A ;A maszkoló
mov A, R6 ;R0-ba a maszkolandó
mov R0, A
mov A, R2
ORL A, @R0 ;A maszkolás
mov @R0, A
;----

;vége a ciklusnak elvégeztük a megfelelõ bit átírását, jöhet a következõ bit.
DJNZ R5, kciklus1
DJNZ R4, kciklus0
RET

;Ha a Carry 0 volt akkor 0-ra kell átírnunkaz aktuális bitet.

;;;;;;;;
;A nullára való átírást, úgy érem el, hogy veszem az aktuális átírandó bit byteját és maszkolom (ÉS kapcsolat), egy olyan bytettal, amelyikben 
;1 darab nullás található az átírandó bit helyén.
;;;;;;;;

knullas:
;A már láthatott algoritmussal megnézem, hogy az aktuális bit, melyik memóriacímen van.
MOV A, #32
SUBB A, R5  ;Most jó a Carry bit nem kell növelnünk az aksin.
mov B, #8
DIV AB
ADD A, #0x40
MOV R6, A ;Az aktuális bit memóriacímét beleírom R6 regiszterbe

;Az alaphelyzet, ha a byte elsõ bitjét kell 0-ásre változtatni.
MOV A, #0x7F

;--- Ezzel oldom meg, hogy a megfelelõ kimaszkolandó helyre kerüljön a nullás
inc B ;DJNZ elõször csökkent és utána vizsgál
keleje2:
DJNZ B, kkovetkezo2 ;Ha B nulla lesz akkor ugrunk a végére
JMP kvege2
kkovetkezo2:
RR A  ;ha B nem nulla akkor rotáljuk jobbra A-t, azaz a maszkolóbitet.
kvege2:
mov R0, B
CJNE R0, #0x00, keleje2 ;Addig végezzük maszkolóbit shiftelgetést, amíg B azaz a maradék nem lesz 0.
;---

;---Ezzel elvégezzük a megfelelõ maszkolást.
mov R2, A ;A maszkoló
mov A, R6 ;R0-ba a maszkolandó
mov R0, A 
mov A, R2
ANL A, @R0 ;A maszkolás
mov @R0, A
;---

;vége a ciklusnak elvégeztük a megfelelõ bit átírását, jöhet a következõ bit.
DJNZ R5, kciklus1
DJNZ R4, kciklus0
RET

kkihagy:
;R7-el csökkentjük R5-öt
DEC R3
DJNZ R5, kciklus1
DJNZ R4, kciklus0
RET
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;
;A beszúrást megvalósító függyvény
;;;;;;;;


beszuras:
mov A, R4
mov R1, A ;Kimentem R1-be R4-et, A feltöltésben R1-et, a shiftelésben R4-et változtatom majd.

;;;;;;;;;;;;;;;;;;;;;;;
;A függvény nagyvonalakban két fõ részbõl áll.
;Az elsõ részben a beszúrandó helytõl jobbra shifteljük a biteket pont annyival, ahány bitet beakarunk szúrni.
;A második részben magát a beszúrást végezzük el úgy, hogy a beszúrandó helyre belemásoljuk egyenként a #30-as memóriacímrõl az adatokat. 
;;;;;;;;;;;;;;;;;;;;;;;


bciklus0:
;A külsõ nagy ciklus pontosan annyiszor fut le, ahány bittel odbébb akarunk shiftelni/Amenyit beakarunk szúrni, azaz R4-szer.
mov A, R7
mov R3, A ;R3-at változtatom, így nem rontom el R7-et
MOV A, #32 ;
SUBB A, R3  
MOV R3, A ;R3-ba 32-R7 kerül, ez a shiftelés jobbról számított kezdõbitje.
MOV R5, #31 ;A bitek pozíciója 0-tól megy 31 ig

MOV A, R4
JNZ bciklus1 ;Ha R4 nem nulla, akkor van csak dolgunk.
RET

;;;;;;
;A shiftelés megvalósítása.
;A külsõ ciklusban R5 folyamatosan csökken 31-rõl. Ez azt jelzi, hogy 0-tól számozva hanyadik bit az aktuális.
;Ekkor az a dolgunk, hogy a sorban az elõzõ bitrõl megállapítjuk, hogy 1-es vagy 0-ás, és az értéket beírjuk az aktuális bit helyére.
;Hogyha a 0-as helyre akarunk beszúrni, akkor a #3F-es memóriacím utolsó bitjét, fogjuk a #40-es memóriacím elsõ bitjébe írni.
;Ezek az átírások a feltöltés miatt úgyse lesznek relevánsak. 
;;;;;;

bciklus1:

;---Ezzel megállapítjuk, hogy az (aktuális-1)-edik bit az melyik byteban van 
MOV A, R5
DEC A ;Az aktuális minusz egyedik bitnek nézzük meg a helyét.
mov B, #8  ;B-ben lesz a 8-al való osztási maradék.
DIV AB
ADD A, #0x40 ;A-ban lesz, hogy hanyadik byteban van az aktuális minusz egyedik bit.
MOV R0, A
MOV A, @R0 ;belemásoljuk A-ba a byteon lévõ értéket.
;---

;Ezzel a résszel belemozgatom a Carry bitbe, a nekem kellõ bit értékét.
INC B ;Pont a maradék plusz egyszer kell forgatni, hogy a megfelelõ bit kerüljön a Carrybe.
bforgatas0:
RLC A
DJNZ B, bforgatas0


;Vagy 0-asra vagy 1-esre kell átírnom az aktuális bitet.

JNC bnullas ;Ha a Carry 0, akkor 0-ra (ugrás bnullas függvényre). Egyébként 1-esre azaz folytatódik a rutin.

;A már akalmazott módon végrehajtom az egyesre való átírást

;;;;;;;;
;Az egyesre való átírást, úgy érem el, hogy veszem az aktuális átírandó bit byteját és maszkolom (OR kapcsolat), egy olyan bytettal, amelyikben 
;1 darab egyes található az átírandó bit helyén.
;;;;;;;;

;A már láthatott algoritmussal megnézem, hogy az aktuális bit, melyik memóriacímen van.
MOV A, R5
mov B, #8
DIV AB
ADD A, #0x40
MOV R6, A ;R6-ban lesz a keresett byte cyme

;Az alaphelyzet, ha a byte elsõ bitjét kell 1-esre változtatni.
MOV A, #0x80  

;--- Ezzel oldom meg, hogy a megfelelõ kimaszkolandó helyre kerüljön az egyes
inc B ;DJNZ elõször csökkent és utána vizsgál
beleje:
DJNZ B, bkovetkezo  ;Ha B nulla lesz akkor ugrunk a végére
JMP bvege3
bkovetkezo:
RR A ;ha B nem nulla akkor rotáljuk jobbra A-t, azaz a maszkolóbitet.
bvege3:
mov R0, B
CJNE R0, #0x00, beleje ;Addig végezzük maszkolóbit shiftelgetést, amíg B azaz a maradék nem lesz 0.
;---

;---Ezzel elvégezzük a megfelelõ maszkolást.
mov R2, A ;A maszkoló
mov A, R6 ;R0-ba a maszkolandó
mov R0, A
mov A, R2
ORL A, @R0 ;A maszkolás
mov @R0, A
;---

;vége a ciklusnak elvégeztük a megfelelõ bit átírását, jöhet a következõ bit.
JMP blegvege

;Ha a Carry 0 volt akkor 0-ra kell átírnunkaz aktuális bitet.

;;;;;;;;
;A nullára való átírást, úgy érem el, hogy veszem az aktuális átírandó bit byteját és maszkolom (ÉS kapcsolat), egy olyan bytettal, amelyikben 
;1 darab nullás található az átírandó bit helyén.
;;;;;;;;

bnullas:
;A már láthatott algoritmussal megnézem, hogy az aktuális bit, melyik memóriacímen van.
MOV A, R5
mov B, #8
DIV AB
ADD A, #0x40
MOV R6, A ;Az aktuális bit memóriacímét beleírom R6 regiszterbe
;A nekünk kellõ Byte:


;Az alaphelyzet, ha a byte elsõ bitjét kell 0-ásre változtatni.
MOV A, #0x7F

;--- Ezzel oldom meg, hogy a megfelelõ kimaszkolandó helyre kerüljön a nullás
inc B ;DJNZ elõször csökkent és utána vizsgál
beleje2:
DJNZ B, bkovetkezo2 ;Ha B nulla lesz akkor ugrunk a végére
JMP bvege2
bkovetkezo2:
RR A ;ha B nem nulla akkor rotáljuk jobbra A-t, azaz a maszkolóbitet.
bvege2:
mov R0, B
CJNE R0, #0x00, beleje2 ;Addig végezzük maszkolóbit shiftelgetést, amíg B azaz a maradék nem lesz 0.
;---

mov R2, A ;A maszkoló
mov A, R6 ;R0-ba a maszkolandó
mov R0, A 
mov A, R2
ANL A, @R0 ;A maszkolás
mov @R0, A
;---

;vége a ciklusnak elvégeztük a megfelelõ bit átírását, jöhet a következõ bit.

blegvege:
DEC R5
DJNZ R3, bciklus1
DJNZ R4, bciklus0

;Végeztünk a bitek shiftelésével. Jöhet a feltöltés!

;;;;;;;;;;
;Feltöltés megvalósítása
;;;;;;;;;;

mov R5, #0x00 ;R5 lesz a segédváltozóm amivel végigmegyek a harminckét biten
MOV A, R1 ;Bele
MOV R3, A  ;R3-ba belerakom, hogy hány bitet akarok beszúrni.

feltolt:
;Ez a ciklus végigmegy az összes biten R5 segítségével.

mov A, R7
JZ ftolt ;hogyha elfogyott R7, akkor indítsuk meg a feltöltést.
DEC R7  ;Hogyha nem kell még töltenem, akkor csak kihagyok, megyek fentebb R5-el, és csökkentek egyet R7-en
JMP fvege

ftolt:
;A töltõ ciklus pontosan annyiszor fog lefutni ahány bitet beakarok szúrni
mov A, R1

;Ha elfogytak a feltöltendõ bitek, akkor ez fvégére ugrik, ami csökkenti R5-öt, ami meghívja a feltolto ciklust, ami R7 nullasága miatt meghívja újra ezt a függvényt.
;Azaz egyfajta üres ciklusokat iktatunk be a rutinba. Azokat a biteket, amiket nem kell, nem változtatjuk.

JZ fvege

;;;;;;
;A bemásolás az R5 által mutatott aktuális pozícióra.
;;;;;;

;A már láthatott algoritmussal megnézem, hogy a beszúrandó aktuális bit, melyik memóriacímen van.
mov A, R3
SUBB A, R1
mov B, #8
DIV AB
ADD A, #0x30
MOV R0, A
MOV A, @R0 ;Eltárolom az aksiban a beszúrandó bytejának az értékét.


;Ezzel a résszel belemozgatom a Carry bitbe, a nekem kellõ bit értékét.
INC B ;Pont a maradék plusz egyszer kell forgatni, hogy a megfelelõ bit kerüljön a Carrybe.
fbforgatas0:
RLC A
DJNZ B, fbforgatas0


;Vagy 0-asra vagy 1-esre kell átírnom az aktuális bitet.
JNC fbnullas ;Ha a Carry 0, akkor 0-ra (ugrás fbnullas függvényre). Egyébként 1-esre azaz folytatódik a rutin.

;A már láthatott algoritmussal megnézem, hogy az aktuális bit, melyik memóriacímen van.
MOV A, R5
mov B, #8
DIV AB
ADD A, #0x40
MOV R6, A ;Az aktuális bit memóriacímét beleírom R6 regiszterbe

;Az alaphelyzet, ha a byte elsõ bitjét kell 1-esre változtatni.
MOV A, #0x80  

;--- Ezzel oldom meg, hogy a megfelelõ kimaszkolandó helyre kerüljön az egyes
inc B ;DJNZ elõször csökkent és utána vizsgál
fbeleje:
DJNZ B, fbkovetkezo  ;Ha B nulla lesz akkor ugrunk a végére
JMP fbvege3
fbkovetkezo:
RR A ;ha B nem nulla akkor rotáljuk jobbra A-t, azaz a maszkolóbitet.
fbvege3:
mov R0, B
CJNE R0, #0x00, fbeleje  ;Addig végezzük maszkolóbit shiftelgetést, amíg B azaz a maradék nem lesz 0.
;---

;---Ezzel elvégezzük a megfelelõ maszkolást.
mov R2, A ;A maszkoló
mov A, R6 ;R0-ba a maszkolandó
mov R0, A
mov A, R2
ORL A, @R0 ;A maszkolás
mov @R0, A
;----

;vége a ciklusnak elvégeztük a megfelelõ bit átírását, jöhet a következõ bit.
JMP flegvege

;Ha a Carry 0 volt akkor 0-ra kell átírnunkaz aktuális bitet. Ezt a már többször látott algoritmussal valósítom meg.

;;;;;;;;
;A nullára való átírást, úgy érem el, hogy veszem az aktuális átírandó bit byteját és maszkolom (ÉS kapcsolat), egy olyan bytettal, amelyikben 
;1 darab nullás található az átírandó bit helyén.
;;;;;;;;

;A nullázást az elõzõhöz hasonlóan
fbnullas:
;A már láthatott algoritmussal megnézem, hogy az aktuális bit, melyik memóriacímen van.
MOV A, R5
mov B, #8
DIV AB
ADD A, #0x40
MOV R6, A

;Az alaphelyzet, ha a byte elsõ bitjét kell 0-ásra változtatni.
MOV A, #0x7F

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

;---Ezzel elvégezzük a megfelelõ maszkolást.
mov R2, A ;A maszkoló
mov A, R6 ;R0-ba a maszkolandó
mov R0, A 
mov A, R2
ANL A, @R0 ;A maszkolás
mov @R0, A
;----

;vége a ciklusnak elvégeztük a megfelelõ bit átírását, jöhet a következõ bit.

flegvege:

DEC R1

fvege:
INC R5
MOV A, R5
CJNE A, 32, feltolt ;Addig fut a külsõ ciklus, amíg el nem éri R5 a 32-t

RET
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
