--Funkcionális programozás
--Hajnal Máté nagy házifeladata

import Prelude
import Data.Char

--1.feladat
-- Adott számrendszer számjegye -e?
{-Készítsünk egy olyan függvényt, amely eldönti a paramétereként megadott karakterről, hogy egy szintén adott számrendszer számjegye-e! Akkor tekintünk egy karaktert valamilyen számrendszer számjegyének, ha benne van a neki megfelelő számjegyek halmazában. Ez a számrendszertől függően 0 és F közötti számjegyeket jelent:

D8={0,1,2,3,4,5,6,7} (oktális)
D10={0,1,2,3,4,5,6,7,8,9} (decimális)
D16={0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F} (hexadecimális)

Ha a bázis nem megfelelő, akkor a függvény kiértékelése álljon meg a "isDigitOfBase: Invalid base." üzenettel. (Ilyet az error függvény segítségével tudunk csinálni.) -}
isDigitOfBase :: Char -> Int  -> Bool
isDigitOfBase c n
 | (n == 8) && (digitToInt c <= 7) && (digitToInt c >= 0) = True
 | (n == 10) && (digitToInt c <= 9) && (digitToInt c >= 0) = True
 | (n == 16) && (digitToInt c <= 15) && (digitToInt c >= 0) = True
 | (n == 8) || (n == 10) || (n == 16) = False
 | otherwise = error "isDigitOfBase: Invalid base."

--2.feladat
--Szöveg egész számmá alakítása
{-Írjunk egy olyan függvényt, amely adott bázis szerint megpróbál feldolgozni egy szöveget és előállítani a neki megfelelő nemnegatív egész számot! Ha a feldolgozandó szöveg üres, akkor a kiértékelés álljon meg a "parseInteger: Empty string." üzenettel, illetve ha a szövegeben szereplő valamelyik karakter nem az adott bázis szerinti számjegyet takarja, akkor a "parseInteger: Invalid digit: X" üzenettel, ahol X a hibás számjegyet jelenti.-}
parseInteger :: Int -> String -> Integer
parseInteger base [] = error "parseInteger: Empty string."
parseInteger base [x]
 | isDigitOfBase x base == True = fromIntegral (digitToInt x)
 | otherwise = error ['p','a','r','s','e','I','n','t','e','g','e','r',':',' ','I','n','v','a','l','i','d',' ','d','i','g','i','t',':',' ','\'',x,'\'']
parseInteger base l@(x:xs)
 | isDigitOfBase x base == True = fromIntegral (digitToInt x) * (fromIntegral base) ^ (length l -1)+ parseInteger base xs
 | otherwise = error ['p','a','r','s','e','I','n','t','e','g','e','r',':',' ','I','n','v','a','l','i','d',' ','d','i','g','i','t',':',' ','\'',x,'\'']

{-Egy másik próbálkozás:
parseInteger base [] = error "parseInteger: Empty string."
parseInteger base [x]
 | isDigitOfBase x base == True = fromIntegral (digitToInt x)
 | otherwise = error "parseInteger: Invalid Digit " :: x
parseInteger base l@(x:xs)
 | isDigitOfBase x base == True = fromIntegral (digitToInt x) * (fromIntegral base) ^ (length l -1)+ parseInteger base xs
 | otherwise = error "parseInteger: Invalid Digit " :: x-}

--3.feladat
--Számliterálok felismerése szövegből
{-Készítsünk egy függvényt, amely annyival egészíti a nemnegatív számok szöveges beolvasását, hogy egy előtag alapján eldönti, hogy milyen számrendszerben kell értelmezni! Ha a szöveg első két karaktere '0' és ‘x’, akkor a szöveg folytatása egy tizenhatos számrendszerbeli számot takar, ha viszont '0' és 'o', akkor nyolcas számrendszerbelit. Ha a szöveg nem tartalmaz semmilyen előtagot, akkor alapértelmezés szerint tízes számrendszerbeli értéknek tekintjük a teljes szöveget. Az előtagok vizsgálata során nem kell különbséget tennünk a kis- és nagybetűk között.

A paraméterül kapott szöveg üres, akkor a kiértékelést állítsuk meg a "parseLiteral: Empty string." üzenettel!-}
parseLiteral :: String -> Integer
parseLiteral [] = error "parseLiteral: Empty string,"
parseLiteral [x] = parseInteger 10 [x]
parseLiteral (x:y:xs)
 | ([x,y] == "0x") || ([x,y] == "0X") = parseInteger 16 xs
 | ([x,y] == "0o") || ([x,y] == "0O") = parseInteger 8 xs
 | otherwise = parseInteger 10 (x:y:xs)

{-A folytatásban a kifejezésként értelmezendő szöveg többi részének vizsgálatát és feldolgozását írjuk le. Ennek során a szöveg felismert elemeit tokeneknek fogjuk nevezni. Ezt z olvashatóság kedvéért a továbbiakban a String típushoz rendelt szinonimával jelöljük, mivel a tokenek maguk továbbra is szövegek lesznek: -}
type Token = String

--4.feladat
--Operátorok felismerése
{-
Adjuk meg azt a függvényt, amely egy tokenről eldönti, hogy műveleti jelet képvisel-e vagy sem! A kifejezésekben felbukkanó műveleti jelek lényegében a korábban említett, támogatott műveletek szöveges jelöléseit takarják:

( és ): zárójelek,
+: összeadás,
-: kivonás,
*: szorzás,
/: (egész) osztás,
%: maradékképzés
~: negálás, vagyis egy szám előjelének ellentétesre változtatása.-}
isOperator :: Token -> Bool
isOperator [] = False
isOperator [x]
 | (x == '(') || (x == ')') || (x == '+') || (x == '-') || (x == '*') || (x == '/') || (x == '%') || (x == '~') = True
 | otherwise = False
isOperator l@(x:xs)
 | (x == '(') || (x == ')') = True && isOperator xs
 | x == '+' = True && isOperator xs
 | x == '-' = True && isOperator xs
 | x == '*' = True && isOperator xs
 | x == '/' = True && isOperator xs
 | x == '%' = True && isOperator xs
 | x == '~' = True && isOperator xs 
 | otherwise = False && isOperator xs

--5.feladat
--A szöveg tokenekre bontása
{-Készítsünk egy olyan függvényt, amely segítségével egy komplett kifejezést tartalmazó szöveget tudunk felbontani tokenekre! A tokeneknek alapvetően két fajtája lehet:

a korábbi feladatban szereplő műveleti jelek, illetve
a számokat ábrázoló literálok.
Ügyeljünk arra, hogy a feldolgozás során a szövegben elhelyezett szóközök nem befolyásolják a kiszámítandó kifejezés jelentését, ezért azok minden következmény nélkül elhagyhatóak!-}

isDigitOfBase2 :: Int -> Char -> Bool
isDigitOfBase2 n c
 | (n == 8) && isOctDigit c = True
 | (n == 10) && isDigit c = True
 | (n == 16) && isHexDigit c = True
 | (n == 8) || (n == 10) || (n == 16) = False
 | otherwise = False

tokenize :: String -> [Token]
tokenize [] = []
tokenize [x]
 | x == ' ' = []
 | isOperator [x] = [[x]]
 | isDigit x = [[x]]
tokenize l@(x:y:xs)
 | x == ' ' = tokenize (y:xs)
 | y == ' ' = tokenize [x] ++ tokenize xs
 | isOperator [x] = [[x]] ++ tokenize (y:xs)
 | isOperator [y] = tokenize [x] ++ [[y]] ++ tokenize xs
 | ([x,y] == "0x") || ([x,y] == "0X") =  [[x] ++ [y] ++ takeWhile (isDigitOfBase2 16) xs] ++ tokenize (drop (length (takeWhile (isDigitOfBase2 16) xs)) xs)
 | ([x,y] == "0o") || ([x,y] == "0O") =  [[x] ++ [y] ++ takeWhile (isDigitOfBase2 8) xs] ++ tokenize (drop (length (takeWhile (isDigitOfBase2 8) xs)) xs)
 | otherwise = [takeWhile (isDigitOfBase2 10) l] ++ tokenize (drop (length (takeWhile (isDigitOfBase2 10) l)) l)
 
--6.feladat
--A műveletek erőssége
{-Egy függvény segítségével határozzuk meg az operátorok kötési erősségét! Erre azért lesz szükségünk, hogy el tudjuk hagyni később a zárójeleket a kifejezésekből. A kötési erősséget egy nemnegatív számmal jelezzük, amely annál erősebb kötési erősséget jelöl, minél nagyobb az értéke. A függvénynek úgy kell kiosztania ezeket az értékeket, hogy a következő szintezés megvalósuljon a műveletek között:

legerősebb: negálás,
aztán: szorzás, osztás, maradékképzés,
aztán: összeadás, kivonás.
Az egy szinten levő műveletek azonos erősségűek lesznek, ezek közül mindig egységesen a balra levőt választjuk. A véletlenül nem műveleti jelet ábrázoló tokent adunk a függvénynek, akkor álljon meg a kiértékelése a "precedence: Invalid operator: 'X'" üzenettel, ahol X jelöli a hibát kiváltó paraméter értékét! A zárójelet itt most nem tekintjük műveletnek, ezért nem tartozik hozzá kötési erősség!-}
precedence :: Token -> Int
precedence [] = error ("precedence: Invalid operator: ''")
precedence (x:xs)
 | (isOperator [x] == False)|| (x == '(') || (x == ')') = error ("precedence: Invalid operator: '" ++ (x:xs) ++ "'")
 | x == '~' = 9
 | (x == '*') || (x == '/') || (x == '%') = 7
 | (x == '+') || (x == '-') = 6

--7.feladat
--Infix formáról postfix formára alakítás
{-Készítsünk egy olyan függvényt, amely tokenek adott listája alapján átrendezi úgy a sorrendjüket, hogy benne a műveletek infix ábrázolás helyett postfix módon jelennek meg! Vagyis az operandusai között elhelyezkedő elhelyezkedő műveletei jelek az operandusai után kerülnek. Például:

1 + 2  -- infix jelölés
1 2 +  -- postfix jelölés
Az átrendezéshez figyelembe vesszük a műveletek megjelenési sorrendjét, egymás viszonyított erősségét és a zárójeleket. Például:

(1 + 2) * 3  -- infix jelölés
1 2 + 3 *    -- postfix jelölés
Mint látható, a postfix jelölést azért alkalmazzuk, mert ez zárójelek használata nélkül is egyértelmű lesz.

Az átalakítás megvalósításához az E. W. Dijkstra által publikált “vagonrendező” (“shunting yard”) algoritmust lehet használni. Az algoritmus a feldolgozás során használ egy vermet, amelynek tetejére el tud helyezni műveleteket, majd amelyeket később, a megfelelő pillanatban ki tud onnan venni és visszailleszteni a tokenek sorozatába.

Az algoritmus vázlatos működése a következő:

Vegyük a soron következő tokent, és ennek értékétől függően:

ha számliterál, akkor tegyük az eredménylistába!

ha nyitó zárójel, akkor tegyük a műveleteket tároló verembe!

ha záró zárójel, akkor a veremben visszafele haladva keressük meg az első nyitó zárójelet és addig az összes verembe levő elemet tegyük az eredménylistába! Amennyiben nem találunk nyitó zárójelet, úgy a zárójelezés hibás, így szakítsuk meg a kiértékelést a "shunt: Mismatching parentheses." hibaüzenettel!

ha műveleti jel, akkor nézzük meg, hogy a verem tetején mi található:

ha nyitó zárójel, akkor tegyük a műveleti jelet a verem tetejére!

ha egy másik műveleti jel, akkor vessük össze a két kötési erősségét: ilyenkor a kettő közül az kerüljön a verem tetéjre, amelyik erősebb, a másik pedig utána!

ha számliterál, akkor egyszerűen tegyük a műveletet a verembe!

Amikor elfogyott a feldolgozandó sorozat, akkor az eredménylista legyen a műveleti verem aktuális állapota! Ezzel gondoskodunk róla, hogy a feldolgozás végén a veremben maradt műveletket is visszarakjuk a sorozatba.

A működés szemléltetéséhez tekintsünk egy konkrét példát, a 3 + 4 * 2 / (1 − 5) kifejezés kiértékelését! A hozzá tartozó tokensorozat a korábbiaknak megfelelően [ "3", "+", "4", "*", "2", "/", "(", "1", "-", "5", ")" ]. A φ( ⋅ ) függvény megadja az operátor kötési erősségét, ld. a precedence függvényt. A “verem  → ” a verem legfelső elemének kivételét, illetve a “ →  verem” az elem a verem tetejére elhelyezését jelenti. A “ ⇐ ” a lista bővítését jelenti egy másik listával.

Token	Teendő	Eredmény	Verem	Megjegyzések
3	 →  eredmény	3		
+	 →  verem	3	+	
4	 →  eredmény	3 4	+	
*	 →  verem	3 4	* +	φ( * ) > φ( + )
2	 →  eredmény	3 4 2	* +	
/	verem  →  eredmény	3 4 2 *	+	φ(/) = φ( * )
 →  verem	3 4 2 *	/ +	φ(/) > φ( + )
(	 →  verem	3 4 2 *	( / +	
1	 →  eredmény	3 4 2 * 1	( / +	
-	 →  verem	3 4 2 * 1	- ( / +	
5	 →  eredmény	3 4 2 * 1 5	- ( / +	
)	verem  →  eredmény	3 4 2 * 1 5 −	( / +	amíg nincs (
verem  → ∅	3 4 2 * 1 5 −	/ +	( eldobása
vége	eredmény  ⇐  verem	3 4 2 * 1 5 − / +		
Ne feledjük, hogy az algoritmust itt most tisztán funkcionális módon szeretnénk megvalósítani, ezért az első paraméter lesz a műveleteket tároló – kezdetben üres – verem, a második paraméter pedig a feldolgozandó tokensorozat!-}
{-zarojel :: [Token] -> [Token]
zarojel [] = error "shunt: Mismatching parentheses"
zarojel (x:xs)
 | x == "(" = next_zarojel xs
 | x /= "(" = zarojel xs

next_zarojel :: [Token] -> [Token]
next_zarojel [] = []
next_zarojel (x:xs)
 | x /= "(" = [x] ++ next_zarojel xs
 | otherwise = []-}
csuko :: [Token] -> [Token]
csuko [] = error "shunt: Mismatching parentheses."
csuko l1@(x:xs)
 | x == "(" = []
 | otherwise = [x] ++ csuko xs

muv_jel :: Token -> [Token] -> ([Token] , Bool)
muv_jel y (x:xs)
 | x == "(" = ((y : x : xs), False)
 | isOperator x = itsOperator1 y (x:xs)
 | otherwise = ((y : x : xs), False)

itsOperator1 :: Token -> [Token] -> ([Token] , Bool)
itsOperator1 y (x:xs)
 | precedence (x) < precedence (y) = (([y] ++ [x] ++ xs), False)
 | precedence (x) == precedence (y) = (([y] ++ xs), True)
 | otherwise = (([x] ++ [y] ++ xs), False)

itsOperator2 :: [Token] -> [Token] -> [Token]
itsOperator2 l1@(x:xs) l2@(y:ys)
 | snd (muv_jel y l1) = [x] ++ shunt (fst (muv_jel y l1)) ys
 | otherwise = shunt (fst (muv_jel y l1)) ys

shunt :: [Token] -> [Token] -> [Token]
shunt f [] = f
shunt [] (x:xs) 
 | (isOperator x) && (x /= ")") = shunt [x] xs
 | x == ")" = error "shunt: Mismatching parentheses."
 | otherwise = [x] ++ shunt [] xs
shunt l1@(x:xs) l2@(y:ys)
 | (isOperator y == False) && ( x == "~") = [y] ++ [x] ++ shunt xs ys
 | isOperator y == False = [y] ++ shunt (x:xs) ys
 | y == "(" = shunt (y:l1) ys
 | y == ")" = csuko l1 ++ shunt (drop (length (csuko l1)+1) l1) ys
--zarojel (reverse l1) ++ shunt reverse (drop (length (next_zarojel (zarojel (reverse l1)))+1) (reverse l1)) ys
 | isOperator y = itsOperator2 l1 l2
 | otherwise = l1 ++ l2


--8.feadat
--Számolás veremszámológéppel
{-Valósítsunk meg egy olyan függvényt, amely egy postfix formába rendezett tokensorozatból kiszámítja a neki megfelelő műveletek és literálok által meghatározott kifejezés eredményét! Hasonlóan a infix és postfix forma közti átalakítást végző függvényhez, itt is alkalmazunk egy vermet, ahova ezúttal a számolás során a literálok értékeit helyezzük el. Ezért itt is lesz a függvénynek egy plusz paramétere, amely ennek a veremnek az állapotát adja tovább és kezdetben üres.

Ezt a megoldást veremszámológépnek is nevezik, és a következő algoritmus szerint működik:

Vegyük a tokensorozat soron következő elemét, és ennek értékétől függően:

ha literál, akkor tegyük a verem tetejére!

ha műveleti jel, akkor vegyünk le a verem tetejéről annyi literált, ahány paraméterre a műveletnek szüksége van! Ezután végezzük el a literálokkal a műveletet és az eredményül keletkező értéket tegyük vissza a verem tetejére! Ügyeljünk arra, hogy mivel vermet alkalmazunk, a műveletket fordított sorrendben kell felparaméterezni a veremből kinyert értékekkel!

Amikor elfogytak a tokenek, akkor a verem tetején levő értéket vegyük ki! Ez lesz a számítás eredménye.

Ha a fenti elvárások valamilyen szempontból sérülnének (például egy bináris művelet elvégzéséhez nincs két érték a veremben), akkor szakítsuk meg a függvény futását a "calculate: Invalid state." üzenettel!

A működés szemléltetéséhez folytassuk az előző példánkat, és nézzük meg, miként számolható ki így a 3 4 2 * 1 5 − / + kifejezés eredménye! Az alkalmazott jelöléseink ugyanazok, mint korábban.

Token	Teendő	Verem	Megjegyzések
3	 →  verem	3	
4	 →  verem	4 3	
2	 →  verem	2 4 3	
*	verem  →  y	4 3	y = 2
verem  →  x	3	x = 4
(x ⋅ y) →  verem	8 3	
1	 →  verem	1 8 3	
5	 →  verem	5 1 8 3	
-	verem  →  y	1 8 3	y = 5
verem  →  x	8 3	x = 1
(x − y) →  verem	-4 8 3	
/	verem  →  y	8 3	y =  − 4
verem  →  x	3	x = 8
(x/y) →  verem	-2 3	
+	verem  →  y	3	y =  − 2
verem  →  x		x = 3
(x + y) →  verem	1	
vége	verem  →  eredmény		
A függvényünk az előzőekhez hasonlóan tisztán funkcionális stílusú lesz, így a verem annak első paramétere lesz ismét.-}

muvelet :: Token -> [Integer] -> [Integer]
muvelet y [] = error "calculate: Invalid state."
muvelet y [x] 
 | y == "~" =  [-x]
 | otherwise = [parseLiteral y]
muvelet y (x:z:xs)
 | y == "+" = [x+z] ++ xs
 | y == "-" = [z-x] ++ xs 
 | y == "*" = [x*z] ++ xs
 | y == "/" = [z `div` x] ++ xs
 | y == "%" = [z `mod` x] ++ xs 
 | y == "~" = [-x] ++ [z] ++ xs

calculate :: [Integer] -> [Token] -> Integer
calculate [] [] = error "calculate: Invalid state."
calculate (x:xs) [] = x
calculate [] (x:xs)
 | isOperator x = parseLiteral x
 | otherwise = calculate [parseLiteral x] xs
calculate l1 l2@(y:ys)
 | isOperator y == False = calculate ([parseLiteral y] ++ l1) ys
 | otherwise = calculate (muvelet y l1) ys
 
--9.feladat
--Szövegesen megadott infix kifejezés kiértékelése
{-Az előbbi függvény segítségével építsünk egy olyan függvényt, amely képes szöveges formában megadott infix kifejezések eredményét kiszámolni! Ha a függvény üres karaktersorozatot kap, akkor az eredmény legyen alapértelmezés szerint nulla!-}
evaluate :: String -> Integer
evaluate [] = 0
evaluate x = calculate [] (shunt [] (tokenize x))
