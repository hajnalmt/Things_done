--Funkcionális programozás
--Függvénykompozíció

module fugg_komp where
import Prelude hiding (until)

--A függvénykompozíció definíciója:
infixr 9 .
(.) :: (b -> c) -> (a -> b) -> (a -> c)
(f . p) x = f (p x)

--Állítsuk elő az 1, 11, 111, 1111, … sorozatot!
numbersMadeOfOnes :: [Integer]
numbersMadeOfOnes = iterate ((+1).(*10)) 1

--Állítsuk elő a 3, 33, 333, 3333, … sorozatot!
numbersMadeOfThrees :: [Integer]
numbersMadeOfThrees = iterate ((+3).(*10)) 3

--Állítsuk elő az 1, 31, 331, 3331, … sorozatot!
numbersMadeOfThreesAndOne :: [Integer]
numbersMadeOfThreesAndOne = iterate ((+21).(*10)) 1

--Szóközök eldobása elölről
dropSpaces :: String -> String
dropSpaces = dropWhile (==' ')

--Szóközök eldobása elölről és hátulról
trim :: String{-véges-} -> String
trim = reverse . dropSpaces . reverse . dropSpaces

--Minimumok maximuma
--Adott elemek listájának listája. Keressük meg a legnagyobbat a legkisebb elemek közül!
maximumOfMinimums :: Ord a => [[a]] -> a
maximumOfMinimums = maximum . minimum map

--Dupla map
--Alkalmazzunk egy függvényt listák listájában levő elemekre!
mapMap :: (a -> b) -> [[a]] -> [[b]]
mapMap = map . map

--Kezdőbetűk
--Egy névnek adjuk meg a kezdőbetűit!
firstLetters :: String -> String
firstLetters = unwords . map (take 1). words

--Monogram 
--Egy névnek adjuk meg a monogramját!
monogram :: String -> String
monogram = unwords . map ((++".").(take 1)) . words

--Egymás utáni ismétlődő elemek kihagyása
--A reduce l hagyja el l-ből az egymás utáni ismétléseket!
reduce :: Eq a => [a] -> [a]
reduce = map head . group
--Alkalmazzuk a group függvényt!

--Egyedi elemek
--A uniq l legyen az l-beli elemek listája, de minden elem csak egyszer szerepeljen!
uniq :: Ord a => [a]{-véges-} -> [a]
uniq = reduce . sort 

--Ismétlődő elemek
--A repeated l legyen azon l-beli elemek listája, amelyek többször szerepelnek l-ben!
repeated :: Ord a => [a]{-véges-} -> [a]
repeated = map head . filter ((>1).length) . group . sort

--Részsorozatok 
sublists :: [a] -> [[a]]
sublists = concat . map (init . tails) . tail . inits

--Adott hosszúságú részlisták
--Adjuk vissza egy lista összes adott hosszúságú részlistáját!
subListWithLength :: Int -> [a] -> [[a]]
subListWithLength n = filter ((==n).length) . sublists

--Adott számnál nem hosszabb részlisták
--Adjuk vissza egy lista adott számnál nem hosszabb részlistáit!
subListWithMaxLength :: Int -> [a] -> [[a]]
subListWithMaxLength n = filter ((<=n) . length ) . sublists

--Definiáljuk újra az until függvényt!
until :: (a -> Bool) -> (a -> a) -> a -> a
until f p = head . filter (f) . iterate p



