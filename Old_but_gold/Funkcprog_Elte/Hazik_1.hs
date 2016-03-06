--Funkcionális programozás
--Hajnal Máté házi feladatai

import Prelude hiding(unzip)

--1. feladat - Zárójelezés
--Zárójelezzük az alábbi kifejezést:
--1 ^ 2 ^ 3 * 4 < div 5 6 + 7 || 8 / 9 > 3 - 10 * 1 
--Megoldás: ((((1 ^ 2) ^ 3) * 4) < (div 5 6 + 7)) || ((8 / 9) > (3 - 10 * 1))

--2. feladat - 6-al osztható számok
--Adjuk meg azt a lista kifejezést, ami előállítja a 6-al osztható számok sorozatát! (0,6,12 ...)
--Megoldás: [ x | x <- [0,1 ..], mod x 6 == 0]

--3. feladat - i szám i-szer
--Listagenerátor segítségével adjuk meg azt a kifejezést, amely előállítja a következő listát: [1,2,2,3,3,3,4,4,4,4, …]! Az i szám i-szer szerepel a listában.
--Megoldás: [ x | x <- [1,2..], y <- [1..x]]

--4. feladat - Hullámok sorozata
--Első rész
--Adjuk meg azt a függvényt, amely egy paraméterül kapott tetszőleges (nem negatív egész) számból előállít egy hullámot! Egy adott n szám esetén, a hullámot az alábbi számsorozattal definiáljuk: 0, 1 ... n, n-1 ... 1, 0, -1 ... -n, -n + 1, -n + 2 ... -1
wave :: Integer -> [Integer]
wave n = [ x | x <- [0..n] ++ [n-1, n-2..0] ++ [(-1), (-2)..(-n)] ++ [(-n+1), (-n+2).. (-1)] ]

--Második rész
--Adjuk meg azt a függvényt, amely egy adott számig előállítja az egyre nővekvő hullámok sorozatát! A megoldáshoz használjuk a korábban definiált wave függvényt!
{-wavet :: [Integer] -> [Integer]
wavet [] = []
wavet (x:xs) = wave x ++ wavet xs

waves :: Integer -> [Integer]
waves n = wavet [ x | x <- [1.. n]] -}

waves :: Integer -> [Integer]
waves 0 = []
waves n = concat [ wave x |  x <- [1..n] ]

--5.feladat - Ponta tükrözés
--Tükrözzük az első pontot a második pont szerint! A pontokat a koordinátájukkal, egy rendezett párként adjuk meg, azaz pl. (x,y). A rendezett pár első eleme az X tengely, a második eleme az Y tengely szerinti érték.
--FONTOS! A koordináták értékeinek "kicsomagolásához" használjuk a gyakorlaton bemutatott rendezett párok mintaillesztését!
mirrorP :: Num a => (a, a) -> (a, a) -> (a, a)
mirrorP (x1,y1) (x2,y2) = (2*x2 - x1, 2*y2 - y1)

--6.feladat - Polinom kiértékelése
{-Értékeljünk ki adott helyen egy együtthatóival megadott polinomot! A számítás alapját a Horner-séma képzi.
Ügyeljünk arra, hogy a polinom együtthatói a listában fordított sorrendben szerepelnek, hogy a rekurziót könnyebb legyen felírni.-}
polinom :: Num a => [a] -> a -> a
polinom [] x = 0
polinom (y:ys) x = y + x * polinom (ys) x

--7.feladat - Minden n-edik elem
--Definiáljuk az every függvényt, amely veszi egy lista minden n-edik elemét!
every :: Int -> [a] -> [a]
every _ [] = []
every n l = head l : every n (drop n l)

--8.feladat - unzip
--Konstans minták unzip függvény.
--A feladatot rekurzívan és lokális definíciók segítségével kell megoldani!
unzip :: [(a, b)] -> ([a], [b])
unzip [] = ([],[])
unzip ((a,b):as) = (a:l1,b:l2)
	where
	 (l1,l2) = unzip as

--9.feladat - applyPairwise
{-Adjuk meg a következő függvényt:

    applyPairwise :: [(a -> b)] -> [a] -> [b]
A függvény paraméterei:

    1. egy függvényekből álló lista

    2. a függvények értelmezési tartományának megfelelő értékek listája
A függvény páronként alkalmazza a listában megadott függvényeket a sorban hozzá tartozó értékre.

Például:

    applyPairwise [(+1),(*2),(^2),(2^)] [1..7]  == [(+1) 1, (*2) 2, (^2) 3, (2^) 4]
azaz

    [2,4,9,16]-}
	
applyPairwise :: [(a -> b)] -> [a] -> [b]
applyPairwise [] x = []
applyPairwise x [] = []
applyPairwise (x:xs) (y:ys) = x y : applyPairwise (xs) (ys)

--10.feladat - reduce
--Egymás utáni ismétlődő elemek kihagyása
--A reduce l hagyja el l-ből az egymás utáni ismétléseket!
--Megjegyzés: A feladatot a témakörnek megfelelően, a kompozíció műveletének felhasználásával kell megadni!
reduce :: Eq a => [a] -> [a]
reduce = map head . group
