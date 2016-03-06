--Funkcionális programozás
--Hajnal Máté házi feladatai 1. félév

import Prelude
import Data.Char

--1. feladat - Kisbeadandó 1
--Gyakorlaton láttuk, hogy a (1 / 3) :: Int kifejezés típushibás. Egészítsük ki egy típushelyes, 0-át eredményül adó kifejezéssé az alábbiak szerint:
--X (1 / 3) :: Int
--Milyen függvény állhat az X helyén?
--Megoldás: A floor függvény

--2. feladat - Kisbeadandó 2
--Add meg azt a Haskell kifejezést ami kiszámítja a 150. pozitív páratlan számot.
--Megoldás: [1,3..]!!149

--3. feladat - Kisbeadandó 3
--Egy olyan Haskell kifejezést keresünk, mely előállítja 1-től kezdve az összes prímszámot egy listában.
--Segítség: - indulj ki az órai Prímvizsgálat feladatból - halmazkifejezések egymásba is ágyazhatóak
--Megoldás: [n|n<-[2,3..],[i|i<-[2..(n-1)],n`mod`i==0]==[]]

--4. feladat - Kisbeadandó 4
--Készítsd el az alábbi operátort:
--(<<) :: Integral a => a -> a -> Bool
--a << b akkor értékelődik ki igazra, ha b valódi osztóinak a száma szigorúan nagyobb, mint a osztóinak a száma
--Megoldás: a << b = length([i|i<-[2..(a-1)],a`mod`i==0]) < length([j|j<-[2..(b-1)],b`mod`j==0])

--5. feladat - Kisbeadandó 5
--HTML konverter akarunk írni. Egy stringben az összes cserét elvégzi az alábbi szabályok szerint.
--'>' karaktert "&gt;" stringre cseréli
--'<' karaktert "&lt;" stringre cseréli
--toHtml :: String -> String a megírandó függvény neve, típusa
--u.i.: célszerű lehet egy segédfüggvényt is írni

swap_ltgt :: Char -> String
swap_ltgt '>' = "&gt"
swap_ltgt '<' = "&lt"
swap_ltgt x = [x] 

toHtml :: String -> String
toHtml [x] = swap_ltgt x
toHtml (x:xs) = swap_ltgt x ++ toHtml xs

--6. feladat - Kisbeadandó 6
--Készítsétek el az alábbi rekurzív Haskell függvényt. 
--A kapott stringben szereplő betűket nagybetűssé konvertálja, ami nem betű (nem esik az ['a'..'z'] listába) azt elhagyja. 
--Segítségként használhatjátok a toUpper függvényt.

--import Data.Char
--A feladatot, két módon is lehet értelmezni, az egyikben ha nagybetűt kapunk azt is eldobjuk, a másikban megtartjuk a nagybetűket is.
toUpperABC :: String -> String
toUpperABC [] = []
toUpperABC (x:xs)
--	| x >= 'A' && x <= 'Z' = x : toUpperABC(xs) 
	| x >= 'a' && x <= 'z' = toUpper(x) : toUpperABC(xs)
	| otherwise = toUpperABC(xs)

--7. feladat - Kisbeadandó 7
--Készíts egy alpaFilter : String -> (String, String) függvényt, mely a paraméterként kapott sztring karaktereit szétválogatja kisbetűsekre és nagybetűsekre.
--A nem betű karaktereket elhagyja. A karakterek egymáshoz viszonyított sorrendje nem változik.
alpaFilter :: String -> (String, String)
alpaFilter [] = ([], [])
alpaFilter x = ( [ c | c <- x, isUpper c], [ c | c <- x, isLower c])

--8. feladat - Kisbeadandó 8
--Készíts egy checkSum :: String -> Int függvényt amit a paraméterként kapott stringben szereplő kisbetűk ascii kódját összegzi oly módon, hogy mindegyiket megszorozza a karakter eredeti pozíciójával.
--A megoldásod magasabb rendű függvényeket használjon, rekurzió kerülendő.
--Példa: " a123FGb" ->2*ord('a')+8*ord('b')
--Tipp: sum, map, filter, zip/zipWith, isLower, ord
checkSum :: String -> Int
checkSum [] = 0
checkSum l = sum (zipWith (*) ([ x | x <- [1..length(l)], isLower (l!!(x-1))]) (map(ord) (filter isLower l)))

--9. feladat - Kisbeadandó 9
--Egy névnek adjuk meg a monogramját! 
monogram :: String -> String
monogram = unwords . map ((++".").(take 1)) . words
