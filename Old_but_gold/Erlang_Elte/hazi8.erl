%%Kisbeadandó 8. - Tökéletes újra
%%Készítette: Hajnal Máté

%%Készítsd el a tökéletes számokat előállító függvényt, mely adott N darab tökéletes számot állít elő: perfects(N).

%%Figyelj rá, hogy nincsenek végtelen listák, és ha az N kellően nagy, akkor nehéz kitalálni, hogy hol van a felső határ, így dinamikusan kell keresni.

%%Az előző feladathoz definiált függvényeket bátran használhatod.

%%A feladat megoldásához nem kell dinamikusan keresni. 
%%A Mersenne prímes megfeleltetés miatt elég a Mersenne prímeken végigiterálni.
%%Ez a leggyorsabb módja a keresésnek, ugyanis ha N > 10, akkor már nagyon sok idő kiszámolni a következő tökéletes számot, és ekkor még csak 88 eseten iterált végig a függvény.
%%Már a 9 és a 10 -es esetben is az én gépemen percekig tart a számolás.

-module(hazi8).
-import(hazi7,[lambda/1, lambda/2, perfect_filter/1, run/2, pow/2, prim/1, prim/2, prim/4]).
-compile(export_all).

%%Counts the first N perfect number.
-spec perfect(integer()) -> list().
perfect(0) ->
	[];
perfect(N) when not (is_integer(N) andalso N > 0) ->
	"Perfect: Give a bigger than 0 integer as parameter";
perfect(N) ->
	perfect (N, 1, []).


perfect(N, A, L) ->
	M = hazi7:pow(2,A)*(hazi7:pow(2,A+1)-1),
	X = length(L),
	Y = hazi7:lambda(M),
	if
		X == N ->
			L;
		Y == true, X < N ->
			perfect(N, A+1, [M] ++ L);
		true ->
			perfect(N, A+1, L)
	end.

%% Végeredmény: 100%