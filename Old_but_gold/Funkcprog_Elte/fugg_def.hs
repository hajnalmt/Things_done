--Funkcionális programozás
--Függvények definiálása

module fugg_def where
import Prelude hiding (even, odd)

--Hegy
--Generáljuk a következő listát: [1, 2, …, n-1, n, n-1, …, 2, 1]!
mountain :: Integer -> [Integer]
mountain n = [1..n] ++ [n-1,n-2..1]

--Háromszög szerkeszthetősége
--Döntsük el az a, b és c számokról, hogy lehetnek-e egy háromszög oldalhosszai!
areTriangleSides :: Real a => a -> a -> a -> Bool
areTriangleSides a b c = (a+b > c) && (a+c > b) && (b+c > a)

--Prelude.even
--Definiáljuk újra a Prelude-beli even függvényt, amely eldönti egy számról, hogy páros-e
even :: Integer -> Bool
even n = mod n 2 == 0

--Prelude.odd
--Definiáljuk újra a Prelude-beli odd függvényt, amely eldönti egy számról, hogy páratlan-e!
odd :: Integer -> Bool
odd n = mod n 2 == 1

-- Oszthatóság
-- Definiáljuk az oszthatóságot!
divides :: Integer -> Integer -> Bool
divides a b = mod b a == 0

--Szökőévek
--Állapítsuk meg egy évről, hogy szökőév-e!
isLeapYear :: Integer -> Bool
isLeapYear n = (mod n 400 == 0) || (mod n 4 == 0 && mod n 100 /= 0)

--Négyzetösszeg
--Adjuk meg az 1, 2, …, n számok négyzetösszegét!
sumSquaresTo :: Integer -> Integer
sumSquaresTo n = sum [ n^2 | n<-[1..n]]

--Osztók
--Definiáljunk egy függvényt, amely egy listában előállítja egy szám osztóit!
divisors :: Integer -> [Integer]
divisors n = [ i | i<-[1..n], mod n i == 0]

--Valódi osztók
--Definiáljunk egy függvényt, amely egy listába előállítja egy szám valódi osztóit!
properDivisors :: Integer -> [Integer]
properDivisors n = [ i | i <-[2..n-1], mod n i == 0]