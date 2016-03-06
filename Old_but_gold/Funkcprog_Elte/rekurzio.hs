--Funkcionális programozás
--Rekurzió

module rekurzio where
import Prelude hiding (sum, last, init, minimum, concat, (++), zip, elem)
import Data.List hiding (sum, last, init, minimum, concat, (++), zip, elem, isPrefixOf, nub, tails, inits, permutations)

--Prelude.sum
--Definiáljuk újra a sum függvényt, amely összegez egy számlistát!
sum :: Num a => [a] -> a
sum [] = 0
sum (x:xs) = x + sum (xs)

-- Prelude.last
-- Definiáljuk újra a last függvényt, amely visszaadja egy lista utolsó elemét!
last :: [a] {-a nem üres-} -> a
last [x] = x
last (x:xs) = last xs 

--Prelude.init
--Definiáljuk újra az init függvényt, amely egy lista összes elemét visszaadja, az utolsót kivéve!
init :: [a] {-a nem üres-} -> [a]
init [x] = []
init (x:xs) = x : init xs

--Prelude.minimum
--Definiáljuk újra a minimum függvényt, amely több elem minimumát adja vissza! Használjuk a min függvényt: ez két elem minimumát adja vissza.
minimum :: Ord a => [a] {-a nem üres-} -> a
minimum [x] = x
minimum (x:xs) = min x (minimum xs)

--Prelude.concat
--Definiáljuk újra a concat függvényt, amely sok listát fűz össze!
concat :: [[a]] -> [a]
concat [] = []
concat (x:xs) = x ++ concat(xs) 

--(Prelude.++)
--Definiáljuk újra a (++) operátort, amely két listát fűz össze!
(++) :: [a] -> [a] -> [a]
[] ++ l = l
l ++ [] = l
(x:xs) ++ l = x : (xs ++ l)

--Összefésülés
--Definiáljuk az összefésülést! Az eredménylista elemei az bemenő listák váltogatott elemei lesznek.
merge :: [a] -> [a] -> [a]
merge [] l = l
merge l [] = l
merge (x:xs) (y:ys) = x : y : merge xs ys

--Prelude.zip
--Definiáljuk újra a páros összefűzést!
zip  :: [a] -> [b] -> [(a, b)]
zip [] l = []
zip l [] = []
zip (x:xs) (y:ys) = (x, y) : zip xs ys

--Data.List.isPrefixOf
--Definiáljuk újra a Data.List modulbeli isPrefixOf függvényt, amely megállapítja, hogy az egyik szöveg kiegészítése-e a másik!
isPrefixOf :: Eq a => [a] -> [a] -> Bool
isPrefixOf [] _ = True
isPrefixOf _ [] = False
isPrefixOf (x:xs) (y:ys) = x == y && isPrefixOf xs ys

--Prelude.elem
--Definiáljuk újra az elem függvényt, amely megállapítja, hogy egy érték szerepel-e egy listában!
elem :: Eq a => a -> [a] {- véges -} -> Bool
elem e [] = False
elem e (x:xs) = e == x || elem e xs

--Data.List.nub 
--Definiáljuk újra a Data.List modulbeli nub függvényt! A nub a többszörös elemeket hagyja el egy listából.
nub :: Eq a => [a] -> [a]
nub [] = []
nub (x:xs) = x : nub [e | e <- xs, e /= x] 

--Polinom kiértékelése
{-Értékeljünk ki adott helyen egy együtthatóival megadott polinomot! A számítás alapját a Horner-séma képzi.
Ügyeljünk arra, hogy a polinom együtthatói a listában fordított sorrendben szerepelnek, hogy a rekurziót könnyebb legyen felírni.-}
polinom :: Num a => [a] -> a -> a
polinom [] x = 0
polinom (y:ys) x = y + x * polinom (ys) x

--Lista feldarabolása
--Vágjunk le egy listából adott hosszúságú részeket!
runs :: Int -> [a] -> [[a]]
runs _ [] = []
runs n l = [take n l] ++ runs n (drop n l)

--Feldarabolás másképp
--Vágjunk le egy listából adott hosszúságú részeket úgy, hogy a hosszúságokat egy listában kapjuk!
slice :: [Int] -> [a] -> [[a]]
slice _ [] = [[]]
slice [] _ = []
slice (x:xs) l = runs x (take x l) ++ slice xs (drop x l)
--Másik megoldás
{-
slice [] _ = []
slice (n:ns) l = take n l : slice ns (drop n l)
-}

--Minden n-edik elem
--Definiáljuk az every függvényt, amely veszi egy lista minden n-edik elemét!
every :: Int -> [a] -> [a]
every _ [] = []
every n l = head l : every n (drop n l)

--Gyorsrendezés
--Definiáljuk a gyorsrendezést (a listát kettébontjuk a fejnél kisebb és nagyobb elemekre)!
qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort [ y | y <- xs, y <= x ] ++ [x] ++ qsort [ y | y <- xs, y > x ]

--Data.List.tails
--Állítsuk elő egy lista összes lehetséges végződését! (A Data.List modulban már definiált.)
tails :: [a] -> [[a]]
tails [x] = [[x]] ++ [[]]
tails (x:xs) = [x:xs] ++ tails xs
--tails l = [ drop n l | n <- [0..length l] ]

--Data.List.inits
inits :: [a] -> [[a]]
inits l = [ take n l | n <- [0..length l] ]

--Elem törlése listából
--Töröljünk egy elemet egy listából az összes lehetséges módon!
deletions :: Eq a => [a] -> [[a]]
deletions [x] = [[]]
deletions (x:xs) =  [ delete y (x:xs) | y <- (x:xs) ]
--Ez a megoldás a honlapon nem fut le, mert hasznájuk benne a delete függvényt ami az Eq a => típuskiegészítést igényli

--Elem beszúrásai listába
--Szúrjunk be egy elemet egy listába az összes lehetséges módon!
insertions :: a -> [a] -> [[a]]
insertions x [] = [[x]]
insertions x l = [ take n l ++ [x] ++ drop n l | n <- [0..length l] ]
--Megoldás hiányzik

--Permutációk
--Adjuk meg egy lista összes permutációját!
{-permutations :: Eq a => [a] -> [[a]]
permutations [x] = [[x]]
permutations (x:xs) = concat [ insertions z y | z <- (x:xs), y <- deletions (x:xs)]-}
--Megoldás hiányzik

--Egész szám felbontása összegekre
{-Bontsunk fel egy egész számot összegekre az összes lehetséges módon!

Az összeget egy listaként ábrázoljuk (például az 1 + 2 + 4 összeget így: [1, 2, 4]).

Az összegben számítson a sorrend (például a 1 + 2 és 2 + 1 különböző felbontások).

Segítség. Az algoritmus a következő:

Ha 4-et akarjuk felbontani az összes lehetséges módon, akkor a következő tesszük:

A 4 egy felbontása a 4-nek.
A 3 + x akkor felbontása a 4-nek, ha x felbontása az 1-nek. Mivel 1-nek csak 1 felbontása van, ezért innen a 3 + 1-et kapjuk.
A 2 + x akkor felbontása a 4-nek, ha x felbontása a 2-nek. Mivel 2-nek 2 és 1 + 1 a felbontásai, ezért innen a 3 + 2 és 3 + 1 + 1-et kapjuk.
A 1 + x akkor felbontása a 4-nek, ha x felbontása a 3-nak. Mivel 3-nak a felbontásai 3, 2 + 1, 1 + 2 és 1 + 1 + 1, ezért innen az 1 + 3, 1 + 2 + 1, 1 + 1 + 2 és 1 + 1 + 1 + 1-et kapjuk.
Minden egyes esetben rekurzívan hívtuk a part függvényt. A 4 eset eredményeit összefűzzük.-}
--part :: Int -> [[Int]]


