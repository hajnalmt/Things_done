--Funkcionális programozás
--Esetszétválasztás + where

module esetszv where
import Prelude hiding ((^), drop, take, unzip, splitAt)
import Data.Char hiding (digitToInt)
import Data.List hiding (insert, drop, take, unzip, splitAt)

--Nagybetű-kisbetű
--Definiáljunk az upperLower függvényt, amely kisbetűből nagybetűt csinál, és fordítva!
upperLower :: Char -> Char
upperLower x
 | elem x ['a'..'z'] = toUpper x
 | elem x ['A'..'Z'] = toLower x
 | otherwise = x
 
--Data.Char.digitToInt 
--A következő függvény karaktereknek ad számértéket:
digitToInt:: Char -> Int
digitToInt x
 | elem x ['0'..'9'] = ord x - ord '0'
 | elem x ['A'..'F'] || elem x ['a'..'f'] = ord (toUpper x) - ord 'A' + 10
 | otherwise = error "not a digit"
 
--Négyzetre emelés
sqr :: Num a => a -> a
sqr a = a * a
 
--Prelude,^
--Definiáljuk újra a (^) operátort (gyorshatványozás)!
(^) :: Num a => a -> Integer -> a
x^n
 | n == 0 = 1
 | mod n 2 == 1 = x * x^(n-1)
 | otherwise = sqr (x ^ (div n 2))
  
--Kettes számrendszerbeli számjegyek (fordítottan)
--Legyen toBin az a függvény, amely visszaadja egy nemnegatív egész szám kettes számrendszerbeli számjegyeit fordított sorrendben!
toBin :: Integer -> [Int]
toBin n
 | n == 0 = []
 | n == 1 = [1]
 | n `mod` 2 == 0 = [0] ++ toBin (div n 2)
 | n `mod` 2 == 1 = [1] ++ toBin (div n 2) 
--Rekurzióval:
{- toBin 0 = []
toBin n [fromIntegral (mod n 2)] ++ toBin (div n 2) -}
 
--Prelude.drop
--Definiáljuk újra a Prelude modul drop függvényét! A drop n l jelentése: elhagyni az l lista elejéről n elemet.
drop :: Int -> [a] -> [a]
drop _ [] = []
drop n l@(x:xs)
 | n <= 0 = l
 | length l <= n = []
 | otherwise = drop (n-1) xs
  
--Prelude.take
--Definiáljuk újra a Prelude modul take függényét! A take n l jelentése: meghagyni az l lista elejéről n elemet.
take :: Int -> [a] -> [a]
take _ [] = []
take n l@(x:xs)
 | n <= 0 = []
 | length l <= n = l
 | otherwise = x : take (n-1) xs 
 
--Data.List.insert
--Definiáljuk újra a List modulban definiált insert függvényt (elem beszúrása rendezett listába)!
insert :: Ord a => a -> [a] -> [a]
insert n [] = [n]
insert n (x:xs)
 | n > x = x : insert n xs
 | n <= x = n:x:xs

--Rendezett Összefésülés
--Definiáljuk rendezett listák rendezett összefésülését!
sortMerge :: Ord a => [a] -> [a] -> [a]
sortMerge [] l = l
sortMerge l [] = l
sortMerge l1@(x:xs) l2@(y:ys)
 | x >= y = y : sortMerge l1 ys
 | otherwise = x : sortMerge xs l2
 
--Kombinációk
--Állítsuk elő egy lista elemeinek az ismétlés nélküli kombinációit! (A lista elemeit tekintsük különbözőknek.)
{-combinations :: Int -> [a] -> [[a]]
combinations _ [] = []
combinations 1 l@(x:xs) = [take 1 l] ++ combinations 1 xs
combinations n l@[x:xs] 
 | n < 0 = []
 | n = 0 = [[]]
 | n > length l = []-}
--Megoldás hiányzik
 
--Pakolás
--Legyen n nemnegatív egész szám és xs nemnegatív egészek listája.
--Válasszunk ki xs-ből számokat az összes lehetséges módon úgy, hogy a számok összege n legyen!
--pack' :: Integral a => [a] -> a -> [[a]]
 
 
--Where
 
--Prelude.unzip
--A zip függvény inverze
unzip :: [(a, b)] -> ([a], [b])
unzip [] = ([], [])
unzip ((a,b):as) = (a:l1, b:l2)
 where 
  (l1, l2) = unzip as
 
--Prelude.splitAt
--Definiáljuk újra a splitAt függvényt! Készítsünk a következőnél hatékonyabb definíciót:
-- splitAt n l = (take n l, drop n l)
splitAt :: Int -> [a] -> ([a], [a])
splitAt _ [] = ([],[])
splitAt n l@(x:xs)
 | n <= 0 = ([],l)
 | otherwise = (x:l1, l2)
  where 
   (l1, l2) = splitAt (n-1) xs

--Lista kettéosztása
split :: [a] -> ([a], [a])
spit [] = ([], [])
split [x] = ([x], [])
split (x:xs) = (x:l1, l2)
 where
 (l2, l1) = split (xs)
 
--Összefésüléses rendezés
--Definiáljuk az összefésüléses rendezést! A egynél több elemű listákat osszunk ketté (split), majd rendezés után fésüljük össze a két részt (az esetszétválasztás sortMerge függvénye).
--msort :: Ord a => [a] -> [a]
--Megoldás hiányzik