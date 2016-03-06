--Funkcionális programozás
--Mintaillesztés

module minta_ill where
import Prelude
import Data.Char

--Elemcsere
swap :: (a,b) -> (b,a)
swap (a,b) = (b,a)

--Tükrözés az X tengelyre
mirrorX :: Num a => (a, a) -> (a, a)
mirrorX (x,y) = (x,-y)

--Origó középpontú nagyítás
scale' :: Num a => a -> (a, a)  -> (a, a)
scale' n (x, y) = (n*x, n*y)

--Pontra tükrözés
mirrorP :: Num a => (a, a) -> (a, a) -> (a, a)
mirrorP (x1, y1) (x2, y2) = (2*x1-x2, 2*y1-y2)

--Két pont távolsága
distance :: Floating t => (t, t) -> (t, t) -> t
distance (x1, y1) (x2, y2) = sqrt(((x2-x1)^2) + ((y2-y1)^2)) 

--Modulo 3 szorzás
mul3 :: Int -> Int -> Int
--mul3 n m =  mod ((mod n 3) * (mod m 3)) 3
mul3 n m = mod (n*m) 3

--Sortörés-szóköz csere
replaceNewline :: Char -> Char
replaceNewline '\n' = ' '
replaceNewline c = c

--Sortörés-szóköz cserék
replaceNewlines :: String -> String
replaceNewlines [] = []
replaceNewlines (x:xs) = replaceNewline x : replaceNewlines xs
--replaceNewlines l = [ replaceNewlines l | replaceNewline x | x <- l ]

--a-az csere
--Definiáljunk egy függvényt, amely az “a” és “az” szót felcseréli!
swap_a_az :: String -> String
swap_a_az "a" = "az"
swap_a_az "az" = "a"
swap_a_az str = str

--a-az cserék
--Definiáljunk egy függvényt, amely az összes "a" és "az" szót felcseréli"
swapAll_a_az :: String -> String
swapAll_a_az str = unwords [ swap_a_az x | x <- words str ]

--1 elemű-e a lista?
--Definiáljuk az “1 elemű-e a lista” függvényt mintaillesztéssel!
isSingleton :: [a] -> Bool
isSingleton [x] = True
isSingleton _ = False

--Kezdőbetű nagybetűvé
--Egy tetszőleges szót alakítsunk át úgy, hogy nagybetűvel kezdődjön! A megoldásban használjuk a Data.Char modul toUpper függvényét!
toUpperFirst :: String -> String
toUpperFirst (x:xs) = toUpper x : xs

--Kezdőbetűk nagybetűsítése
--Egy tetszőleges szöveg minden szavát alakítsuk át nagybetűvel kezdődőre.
tuUpperFirsts :: String -> String
tuUpperFirsts l = unwords [ toUpperFirst x | x <- words l ]

--Azonos szavak egy szövegben
--Számoljuk meg az “a” szavakat egy szövegben!
countOfAs :: String -> Int 
countOfAs l = lenght [ x | x <- words l, x == "a" ]

--Szűrés elemek közti távolság alapján
--Számoljuk meg azokat a párokat egy listában, amelyekben a pár elemei közötti távolság legalább 2!
distantPairs :: [(Integer, Integer)] -> Int
distantPairs l = length [ x | x <- l , (snd x - fst x) >= 2 ]

--A lista minden ötödik eleme
--Vegyük egy liste minden ötödik elemét
everyFifth :: [a] -> [a]
everyFifth [] = []
everyFifth l = head l : everyFifth (drop 5 l)
