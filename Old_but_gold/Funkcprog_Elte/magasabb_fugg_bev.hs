--Funkcionális programozás
--Magasabbrendű függvények bevezetés

module magasabb_fugg_bev where
import Prelude hiding (map, filter, takeWhile, dropWhile, span, iterate, all, any, elem, zipWith, uncurry)
import Data.List hiding (group,map, filter, takeWhile, dropWhile, span, iterate, all, any, elem, zipWith, uncurry)

--Prelude.map
--Definiáljuk újra rekurzióval az elemenkénti feldolgozást!
map :: (a -> b) -> [a] -> [b]
map _ [] = []
map f (x:xs) = f x : map f xs
--Másik megoldás:
--map f l = [ f e | e <- l]

--Prelude.filter
--Definiáljuk újra rekurzióval a szűrést!
filter :: (a -> Bool) -> [a] -> [a]
filter _ [] = []
filter f (x:xs) 
 | f x = x : filter f xs
 | otherwise = filter f xs
--Másik megoldás
--filter p l = [e | e <- l, p e]

--Számlálás
--Számoljuk meg egy adott tulajdonságú elem előfordulásait egy listában!
count :: (a -> Bool) -> [a] -> Int
count _ [] = 0
count f (x:xs)
 | f x = 1 + count f xs
 | otherwise = count f xs

--Prelude.takeWhile
--Definiáljuk újra a takeWhile függvényt!
takeWhile :: (a -> Bool) -> [a] -> [a]
takeWhile _ [] = []
takeWhile f (x:xs)
 | f x = x : takeWhile f xs
 | otherwise = []
 
--Prelude.dropWhile
--Definiáljuk újra a dropWhile függvényt!
dropWhile :: (a -> Bool) -> [a] -> [a]
dropWhile _ [] = []
dropWhile f (x:xs)
 | f x = dropWhile f xs
 | otherwise = (x:xs)

--Prelude.span
{-Definiáljuk újra a span függvényt, amely lényegében a következő módon adható meg:

span p xs = (takeWhile p xs, dropWhile p xs)
Készítsünk ennél hatékonyabb definíciót!-}
span :: (a -> Bool) -> [a]{-véges-} -> ([a],[a])
span _ [] = ([],[])
span f (x:xs) 
 | f x = (x : l1, l2)
 | otherwise = ([],(x:xs))
  where (l1,l2) = span f xs
  
--Prelude.iterate
--Definiáljuk újra az iterate függvényt!
iterate :: (a -> a) -> a -> [a] 
iterate f x = x : iterate f (f x)

--Dollár operátor
--Definiáljuk a dollár operátort!
infixr 0 $
($) :: (a -> b) -> a -> b
f $ a  = f ( a )

--Prelude.all
--Definiáljuk az univerzális kvantort
all :: (a -> Bool) -> [a] {-véges-} -> Bool
all f [] = True
all f (x:xs) = f x && all f xs

--Prelude.any
--Definiáljuk újra az egzisztenciális kvantort
any :: (a -> Bool) -> [a] {-véges-} -> Bool
any f [] = False
any f (x:xs) = f x || any f xs

--Prelude.elem
--Definiáljuk újra az elem függvényt (az any segítségével), amely megállapítja, hogy egy érték szerepel-e egy listában!
elem :: Eq a => a -> [a] {-véges-} -> Bool
elem n l = any (==n) l

--Több elem szűrése
--Szűrjünk ki adott elemeket egy listából!
filters :: Eq a => [a] -> [a] -> [a]
filters _ [] = []
filters l (x:xs)
 | elem x l = fiters l xs
 | otherwise = x : filters l xs
--Másik megoldás
--filters l1 l = [x | x <- l, notElem x l1]

--Prelude.zipWith
--Definiáljuk újra a zipWith függvényt!
zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith _ _ [] = []
zipWith _ [] _ = []
zipWith f (x:xs) (y:ys) = f x y : zipWith f xs ys

--Különbségsorozat
--A zipWith felhasználásával készítsünk egy olyan függvényt, amely számok egy sorozatából előállítja azok páronkénti különbségeinek sorozatát!
differences :: Num a => [a] -> [a]
differences l = zipWith (-) (tail l) l
--Másik megoldás
{-differences [x] = []
differences (x:y:xs) = y -x : differences (y:xs)
-}

--Fibonacci párok
--Állítsuk elő a (0,1), (1,1), (1,2), (2,3), (3,5), (5,8), … (végtelen) sorozatot! A sorozat előállítási szabálya: (a, b)  (b, a+b).
fibPairs :: [(Integer, Integer)]
fibPairs = iterate (\ (a, b) -> (b, a+b)) (0, 1)

--Data.List.group
--Adjuk meg a group függvény definícióját! Ez a függvény kisebb csoportokra bont egy listát aszerint, hogy az egymás mellett levő elemek megegyeznek vagy sem.
group :: Eq a => [a]{-véges-} -> [[a]]
group [] = [[]]
group l@(x:y:xs) = span (==x) (

--Ismétlődő elemeket tartalmazó lista tömörítése
compress :: Eq a => [a] -> [(Integer, Integer)]
compress l = zip (map length $ group l) (map head $ group l)

--Pascal-háromszög
pascalTrianle :: [[Integer]]
pascalTrianle = iterate (\l -> zipWith (+) ([0]++1) (l++[0])) [1]

--Prelude.uncurry
--
uncurry :: (a -> b -> c) -> ((a, b) -> c)
uncurry fg (a,b) = fg a b 

--Kitömörítés 
decompress :: Eq a => [(Int,a)] -> [a]
decompress l = concat [replicate (fst x) (snd x) | x <- l]

--Súlyozott összeg 
weigthedSum :: Num a => [(a,a)] -> a
weigthedSum l = sum [(fst x) * (snd x) | x <- l]
