--Funkcionális programozás
--Hajnal Máté nagy házifeladata

import Prelude
import Data.Char
import Data.List

type Base   = Int
type BigNum = [Int]

{-A feladat összefoglaló leírása

A Karatsuba-algoritmus egy gyors szorzást megvalósító algoritmus. Az algoritmus két, n számjegyből álló szám szorzatát állítja elő hatékonyan. Ilyenkor ugyanis a szorzat legfeljebb nlog23 ≈ n1, 585 számjegy szorzásából áll elő, ellentétben a hagyományos szorzás algoritmusával, amely n2 számjegy szorzásából határozható meg.

Például a Karatsuba-algoritmus két, 1024 számjegyből álló szám szorzatát 310 = 59049 lépésből tudja előállítani, ellentétben a hagyományos algoritmus négyzetes, azaz (210)2 = 1,048,576 darab szorzásával.

A számok, amelyekkel a feladatban foglalkozunk, tetszőleges alapú számrendszerben adottak. Az egyszerűség kedvéért a számrendszer alapszámát és az számrendszerhez tartozó “számjegyeket” is egész számokkal adjuk meg.

A számokat listákkal ábrázoljuk, ahol a hatványok együtthatói helyiérték szerinti növekvő sorrendben adottak (vagyis a lista elején szerepel a legkisebb helyiérték, a végén pedig a legnagyobb).

Például a 2015-ös egész szám 10-es számrendszerbeli ábrázolása [5,1,0,2], azaz 5 * 100 + 1 * 101 + 0 * 102 + 2 * 103. Ugyanez az érték 8-as számrendszerben felírva [7,3,7,3], azaz 7 * 80 + 3 * 81 + 7 * 82 + 3 * 83.

A függvények jobb olvashatóságának kedvéért a következő típusszinonimákat vezetjük be:

type Base   = Int
type BigNum = [Int]
ahol:

a számrendszer alapszámát megadó kifejezés típusa Base, amely egy Int típusú érték,

a számok típusa BigNum, amely a korábban leírtaknak megfelelően egész számok listájával adott, azaz [Int] típusú kifejezés.-}

--1. feladat
--Konverziók (segédfüggvények a teszteléshez)
--Adjuk meg azt a függvényt, amely a megadott számrendszerben ábrázol egy egész számot!
{-Megjegyzések:

Csak a nemnegatív számok átalakítását végezzük el, és az alapszámnak legalább 2-nek kell lennie!

Hibás argumentumok esetén használjuk az error függvényt!

A megoldásban az Int és Integer típusok közötti konverziókra is szükség van, erre használhatjuk a fromIntegral függvényt.

A 0 egész értéknek [0] és [] is a megfelelője BigNum típusú értékként, ezt konvenció szerint konvertáljuk [0]-ra.-}
toBigNum :: Base -> Integer -> BigNum
toBigNum _ 0 = [0]
toBigNum x y
  | x < 2 = error("toBigNum: improper arguments: " ++ show y ++ " " ++ show x)
  | y > 2^29-1 = [fromIntegral(y) `mod` x] ++ toBigNum x (fromIntegral(y) `div` fromIntegral(x))
  | y < 0 = error("toBigNum: improper arguments: " ++ show y ++ " " ++ show x)
  | fromIntegral(y) < x = [fromIntegral(y)]
  | otherwise = [fromIntegral(y) `mod` x] ++ toBigNum x (fromIntegral(y) `div` fromIntegral(x))

--Adjuk meg azt a függvényt, amely egy BigNum típusú számot egész számmá alakít át!
fromBigNum :: Base -> BigNum -> Integer
fromBigNum x l = sum $ zipWith (*) [fromIntegral(c) | c <- l] [fromIntegral(x)^fromIntegral(i) | i <- [0..(length l-1)]]

{-Listák kiegészítése

Adjuk meg azt a magasabbrendű függvényt, amely segítségével egy sorozatot ki tudunk egészíteni megadott hosszúságúra, amikor arra szükség van!

A függvény első paramétere egy olyan függvény, amely segítségével meg tudjuk adni, milyen módon (jobbról, balról, stb.) szeretnék a listát kiegészíteni. Ezen paraméter függvény első paramétere a kiegészítés, a második pedig az kiegészítendő sorozat.

A második paraméter az az elem, amellyel a kiegészítést végezzük.

A harmadik paraméter egy szám, amely azt a méretet adja meg, amelyre ki akarjuk a listát egészíteni. Természetesen előfordulhat az is, hogy az eredeti sorozat hosszabb, mint a megadott szám, ekkor az eredeti sorozatot változatlan formában kell visszaadni.

A negyedik pedig a lista, amelyet kiegészíteni szeretnénk.
-}
pad :: ([a] -> [a] -> [a]) -> a -> Int -> [a] -> [a]
pad f x n l = f (replicate (n-length(l)) x) l

--A fenti függvény segítségével megadjuk a jobbról és balról kiegészítő függvényeket, amelyekre a későbbiekben egyébként szükségünk is lesz.
padLeft :: a -> Int -> [a] -> [a]
padLeft x y z = pad (\p -> (p++)) x y z

padRight :: a -> Int -> [a] -> [a]
padRight x y z = pad (\p -> (++p)) x y z

{-Két szám azonos méretűre alakítása

Adjuk meg azt az operátort, amely normalizál két számot, azaz azonos hosszúságúra alakít!

Megjegyzés: Értelemszerűen, az eredeti számok jelentését meg kell őrizni, így a hosszabb lista lesz a kiindulási alap!
-}
(<=>) :: BigNum -> BigNum -> (BigNum, BigNum)
(<=>) x y
  | length (x) > length (y) = (x, y ++ replicate (length(x)-length(y)) 0)
  | length (y) > length (x) = (x ++ replicate (length(y)-length(x)) 0, y)
  | otherwise = (x,y)

{-Számok összeadása

Definiáljuk a számok összeadását! Az első paraméter a számrendszer alapszáma, a rákövetkező két paraméter pedig az összeadandó számokat adja meg.

FONTOS! A művelet eredményét az adott reprezentációban kell előállítani! Az operandusok egész számmá alakítása és a művelet elvégzése után a szám visszaalakítását végző megoldás NEM fogadható el!

Megjegyzések:

Feltehetjük, hogy a számok a megadott alapszámmal megadott számrendszerben adottak, vagyis számjegyei 0 és (b − 1) közti értékek, ahol b a számrendszer alapja.

Az eredmény a paraméterül kapott alapszámnak megfelelő számrendszerben legyen megadva!

A megoldás egy kicsit egyszerűsödik, ha az összeadás előtt azonos hosszúságúvá alakítjuk a számokat.

Ne feledjük, előfordulhat, hogy a két számjegy (amely b alapú számrendszerben adott) összege az alapszámnál nagyobb. Ebben az esetben az egész osztás műveletével az osztási maradékot kell az adott helyiértékben meghagyni és az egész osztás eredményét pedig a nagyobb helyiértékek előállításánál felhasználni (vagyis átvinni)!
-}
addBigNums :: Base -> BigNum -> BigNum -> BigNum
addBigNums _ y [] = y
addBigNums _ [] z = z
addBigNums x y z = addBigNums2 x (y <=> z)

addBigNums2 :: Base -> (BigNum, BigNum) -> BigNum
addBigNums2 x (y, z)
  | x > (head y + head z) = [head y + head z] ++ addBigNums x (tail y) (tail z)
  | otherwise = [(head y + head z) `mod` x] ++ addBigNums x [1] (addBigNums x (tail y) (tail z))

{-Számok összegzése

Korábban definiáltuk két szám összeadását. Definiáljuk ennek segítségével a nagy számok listájának összegzését! Ekkor lényegében az előbbi műveletet kell listákra kiterjesztenünk.
-}  
sumBigNums :: Base -> [BigNum] -> BigNum
sumBigNums _ [] = []
sumBigNums _ [y] = y
sumBigNums x l@(y:ys) = sumBigNums x ([addBigNums x y (head ys)] ++ (drop 2 l))

{-Számok különbsége

Az összeadás mintájára most definiáljuk a számok különbség képzését! Amennyiben a kivonás eredménye negatív, akkor ezt az információt a legnagyobb helyiérték együtthatójában őrizzük meg!

FONTOS! A művelet eredményét az adott reprezentációban kell előállítani! Az operandusok egész számmá alakítása és a művelet elvégzése után a szám visszaalakítását végző megoldás NEM fogadható el!
-}
subBigNums :: Base -> BigNum -> BigNum -> BigNum
subBigNums _ x [] = x
subBigNums x y z = subBigNums2 x (y <=> z)

subBigNums2 :: Base -> (BigNum, BigNum) -> BigNum
subBigNums2 x (y,z)
  | length y /= length z = [0, -1]
  | length y == 1 && (head y - head z) < 0 = [(x + head y - head z)] ++ [-1]
  | 0 <= (head y - head z) = [(head y - head z)] ++ subBigNums x (tail y) (tail z)
  | 0 > (head y - head z) = [(x + head y - head z)] ++ subBigNums2 x ((tail y), (addBigNums x [1] (tail z)))
  
{-Számok listájának különbsége

Az előbb megadott függvény segítségével adjuk meg a számok listájának különbség képzését!
-}
diffBigNums :: Base -> [BigNum] -> BigNum
diffBigNums _ [] = []
diffBigNums _ [y] = y
diffBigNums x l@(y:ys) = diffBigNums x ([subBigNums x y (head ys)] ++ (drop 2 l))

{-Szám szorzása skalár értékkel (előkészítés)

Adjuk meg azt a függvényt, amely meghatározza egy i szám b alapú egész logaritmusát (j) és az ennek megfelelő b hatványát! A függvény eredménye egy rendezett pár, amelynek:

az első eleme a logaritmus számolásának eredménye (j),
a második eleme pedig a szám legnagyobb hatványa (bj).
Megjegyzések:

Az alapszám hatványát lehetőség szerint ne utólag a hatványozás segítségével határozzuk meg, hanem egy menetben a logaritmus meghatározásával!

Figyeljünk arra, hogy az Int a korlátos egész számokat jelenti, tehát egy kellően nagy számmal végzett művelet eredménye túlcsordulva negatívvá válhat!
-}
logPowerBase :: Base -> Int -> (Int, Int)
logPowerBase x y 
  | x <= 1 = error("logPowerBase: improper arguments")
  | y < x = (0,1)
  | otherwise = snd (logPowerBase2 (x, y) (0, 1))

logPowerBase2 :: (Int, Int) -> (Integer, Integer) -> ((Int, Int), (Int, Int))
logPowerBase2 (x1, y1) (x2, y2)
  | (fromIntegral(x1) * y2) > fromIntegral(y1) = ((x1, y1),(fromIntegral(x2), fromIntegral(y2)))
  | otherwise = logPowerBase2 (x1, y1) (x2+1, y2*fromIntegral(x1))


{-Adjuk meg azt a függvényt, amely meghatározza egy szám adott alapszámra vett hatványösszegre való bontását! A függvény a hatványösszegben használt hatványkitevők listáját adja meg!
Megjegyzések:

Az eredményben csak a hatványkitevők szerepeljenek, csökkenő sorrendben!

Törekedjünk a legnagyobb hatványkitevők meghatározására!

A logPowerBase művelet segítségével a definiálhatjuk legegyszerűbben a műveletet.

Például:

A 2 szám hatványaiból a 10-es szám bontása: [3,1], azaz 23 + 21.
A 2 szám hatványaiból a 100-as szám bontása: [6,5,2], azaz 26 + 25 + 22.
A 8 szám hatványaiból a 83-as szám bontása: [2,1,1,0,0,0], azaz 82 + 81 + 81 + 80 + 80 + 80. -}

powersOf :: Base -> Int -> [Int]
powersOf _ 0 = []
powersOf x y = [fst(logPowerBase x y)] ++ powersOf x (y-snd(logPowerBase x y))

{-Szám szorzása skalár értékkel

Adjuk meg a skalárszorzás műveletét a korábban definiált függvények segítségével!

FONTOS! A művelet eredményét az adott reprezentációban kell előállítani! Az operandusok egész számmá alakítása és a művelet elvégzése után a szám visszaalakítását végző megoldás NEM fogadható el!

Megjegyzések:

Egy b alapú számrendszerben adott [x,y..z] alakú szám (ahol az x a legkisebb helyiérték) bi-vel (az alapszám valamely hatványával) való szorzás megadható a szám alacsonyabb helyiérték felőli eltolásával. Azaz az [x,y..z] alakú számot, ha kiegészítjük balról i darab nulla értékű elemmel (esetünkben ez maga a 0), akkor a szorzat előáll.

Példaul a 8 alapszám esetén a 2015 egész szám reprezentációja [7,3,7,3], amelyet 82-nal megszorozva a [0,0,7,3,7,3] érték áll elő, amely a 2015 * 64 = 128960 megfelelője.

Ennek megfelelően a skalárszorzás lépései:

A szorzót felbontjuk az alapszám hatványainak összegévé, de ebből csak a kitevők szükségesek számunkra. Használjuk a korábban definiált powersOf függvényt!

A hatványkitevőket a megjegyzés első pontjában ismertetett módon fogjuk felhasználni, azaz minden egyes hatványkitevő és az eredeti szám esetén a hatványkitevőnek megfelelő mértékben a kisebb helyiértéktől eltoljuk az eredeti számot.

n hatványkitevő esetén n darab számunk keletkezik ezzel a módszerrel, amelyeket végül összegezni kell.

Példaul 2-es alapban a 11 skalár és a [1,0,1] BigNum esetén ez a következőképpen fog történni:

Előállítjuk a szorzó hatványkitevőit: [3,1,0] (23 + 21 + 20).

A 2. pontnak megfelelően hatványkitevőknek megfelelően az eredeti számot egyszer 3-mal ([0,0,0,1,0,1]), majd 1-el ([0,1,0,1]) és végül 0-val ([1,0,1]) toljuk el bal oldalról.

Az előállított számokat összegezve így a szorzás eredménye: [0,0,0,1,0,1] + [0,1,0,1] + [1,0,1] = [1,1,1,0,1,1]
-}
multBigNum :: Base -> Int -> BigNum -> BigNum
multBigNum x y z = sumBigNums x  $ zipWith (eltol) (powersOf x y) (replicate (length(powersOf x y)) z)

eltol :: Int -> BigNum -> BigNum
eltol x y = (replicate x 0) ++ y

{-Számok szorzata

Definiáljuk két szám szorzatát! A művelet felfogható úgy, hogy egy skalársorozattal szorozzuk végig ugyanazt a nagy számot, majd összegezzük a szorzások eredményeit. A szorzások során fontos, hogy melyik helyiértékkel szorzunk éppen, hiszen vegyük észre, a helyiértékektől függ a “számjegy” tényleges értéke!

Például (8-as számrendszerben):

    [2,1,7]
  * [1,2,1]
------------------
    [2,1,7]           (1 * [2,1,7])
      [4,2,6,1]       (2 * [2,1,7])
        [2,1,7]       (1 * [2,1,7])
------------------
    [2,5,3,0,1,1]-}
	
multBigNums :: Base -> BigNum -> BigNum -> BigNum
multBigNums x y z 
 | (length y) == 1 = multBigNum x (head y) z
 | otherwise = sumBigNums x [(multBigNum x (head y) z), (multBigNums x (drop 1 y) (eltol 1 z))]
 
{-Karatsuba művelete

A függvény paraméterei a következők:

Az első argumentum a számrendszer alapszáma.

A második argumentum egy egész érték, amely segítségével azt adjuk meg, hogy milyen méretű számokat tekintünk egyszerűen szorozhatónak (vagyis milyen szinten kell megállnia az algoritmusnak).

Az utolsó két paraméter adja meg az összeszorzandó számokat.

Az algoritmus lépései:

Megnézzük, hogy a számok valamelyike kellően kicsi-e, azaz a listák valamelyikének hossza kisebb vagy egyenlő-e a második paraméter értékénél.

Ha igen, akkor a korábban megírt szorzás műveletével összeszorozzuk és kész az eredmény.

Ha nem, akkor továbblépünk a következő pontra.

Normalizáljuk mindkét számot, hogy azonos méreten legyenek ábrázolva.

Mindkét számot körülbelül a felénél ketté vágjuk (low1, high1) és (low2, high2) listákra, ahol a low a neki megfelelő szám kisebb helyiértékeit, a high pedig annak nagyobb helyi értékeit tartalmazza.

Három különböző számolás szükséges a szorzat előállításához:

A z0 a Karatsuba-szorzás low1 és low2 részlistákon vett (rekurzív) eredménye lesz.

A z1 a Karatsuba-szorzás (low1 + high1) és (low2 + high2) összegeken vett (rekurzív) eredménye lesz.

A z2 a Karatsuba-szorzás high1 és high2 részlistákon vett (rekurzív) eredménye lesz.

A két szám szorzata végül a z2 * b(2 * m2) + (z1 − z2 − z0) * bm2 + z0 képlet alapján határozható meg, ahol:

A z0, z1, z2 értékek az előbbi pontban megadottak alapján kiszámításra kerülnek.

b a számrendszer alapszáma.

m2 pedig a paraméterül kapott (normalizált) listák hosszának (m) felének felső egészrésze, azaz ⌈m / 2⌉.

A képletben a z2 * b(2 * m2) és a (z1 − z2 − z0) * bm2 kifejezések kiértékelésénél ne a multBigNum műveletet alkalmazzuk, hanem az alacsonyabb helyiérték szerinti eltolás műveletét (padLeft). Ugyanis az alapszám Int típusú, így a bi hatvány könnyedén túlcsordulhat!
-}

type Granularity = Int

karatsuba :: Base -> Granularity -> BigNum -> BigNum -> BigNum
karatsuba x g y z
  | g >= length(y) || g >= length(z) = multBigNums x y z
  | otherwise = karatsuba2  x g (y <=> z)

karatsuba2 :: Base -> Granularity -> (BigNum, BigNum) -> BigNum
karatsuba2 x g (y,z) = result x (floor(realToFrac(length(y))/2)) (karatsuba x g yl zl) (karatsuba x g (addBigNums x yl yh) (addBigNums x zl zh)) (karatsuba x g yh zh) where
  [yl,yh,zl,zh] = [(take ((length y) `div` 2) y), (drop ((length y) `div` 2) y), (take ((length z) `div` 2) z), (drop ((length z) `div` 2) z)]

result :: Base -> Int -> BigNum -> BigNum -> BigNum -> BigNum
result x m z0 z1 z2 = sumBigNums x [(eltol (2*m) z2), (eltol (m) (diffBigNums x [z1, z2, z0])), z0]
