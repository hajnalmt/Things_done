--Funkcionális programozás
--Hajtogatások

module hajtogatasok where
import Prelude hiding (until, foldr, sum, or, concat, (++), length, reverse, maximum, minimum, scanr)

--Prelude.foldr
--Definiáljuk újra rekurzióval a jobbról hajtogatás műveletét!
foldr :: (a -> b -> b) -> b -> [a] -> b
foldr _ x [] = x
foldr f e (x:xs) = f x $ foldr f e xs

--Prelude.foldl
--Definiáljuk újra rekurzióval a balról hajtogatás műveletét!
foldl _ x [] = x
foldl f e (x:xs) = foldl f (f e x) xs

--Prelude.sum
--Definiáljuk újra a sum függvényt!
sum :: Num a => [a]{-véges-} -> a
sum = foldr (+) 0

--Prelude.product
--Definiáljuk újra a product függvényt!
product :: Num a => [a]{-véges-} -> a
product = foldr (*) 1

--Pelude.and
--Definiáljuk újra az and függvényt!
and :: [Bool]{-véges-} -> Bool
and = foldr (&&) True

--Prelude.or
--Definiáljuk a logikai VAGY függvényt!
or :: [Bool]{-véges-} -> Bool
or = foldr (||) False

--Prelude.concat
--Definiáljuk újra a concat függvényt!
concat :: [[a]] -> [a]
concat = foldr (++) []	

--Prelude.++
--Definiáljuk újra a (++) függvényt!
(++) :: [a] -> [a] -> [a]
(++) k l = foldr (:) l k
--(++) = flip $ foldr (:)

--Prelude.length
--Definiáljuk újra a length függvényt!
length :: [a]{-véges-} -> Int
length l =s foldr (\_ b -> b+1) 0 l

--Prelude.reverse
--Definiáljuk újra a reverse függvényt!
reverse :: [a]{-véges-} -> [a]
reverse x = foldl (\a b -> b:a) [] x 

--Prelude.maximum
--Találjuk meg több elem maximumát!
maximum :: Ord a => [a]{-véges, nemüres-} -> a
maximum x = foldr max (head x) x
--maximum = foldr1 max

--Bináris szám értéke
--Írjuk meg azt a függvényt, amely egy bináris számjegy-sorozatból kiszámítja annak értékét!
fromBin :: [Int] -> Integer

--Polinom kiértékelése
--Értékeljünk ki adott helyen egy együtthatóival megadott polinomot!
polinom :: Num a => [a] -> a -> a

--Hajtogatások kezdőérték nélkül

--Prelude.minimum 
--Definiáljuk újra a minimum függvényt!
minimum :: Ord a => [a]{-véges, nemüres-} -> a
minimum = foldr1 min

--Hajtogatások részeredményekkel

--Prelude.scanr
--Definiáljuk újra rekurzióval a jobbról pásztázás műveletét!
scanr :: (a -> b -> b) -> b -> [a] -> [b]
scanr _ b [] = [b]
scanr f e (x:xs) = f x y : (y:ys)
  where
    (y:ys) = scanr f e xs 

--Összegsorozat
sums :: [Integer] -> [Integer]
sums (x:xs) = scanl (+) x xs

--Fibonacci sorozat
fibs :: [Integer]
fibs = [1,0] ++ sums fibs

--Növekvő maximumok sorozata
increasingMaximums :: Ord a => [a] -> [a]


--isLower all the String's element?
strIsLower :: [Char] -> Bool
strIsLower str = foldr (\a b-> b && isLower a ) True str
