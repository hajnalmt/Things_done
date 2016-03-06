%%Kisbeadandó 7. - Lambdák használata
%%Készítette: Hajnal Máté

%%Készítsd el azt a lambda függvényt, mely eldönti egy számról, hogy tökéletes szám-e. Majd a iterálj végig ezzel a függvénnyel egy lista elemein és add vissza a tökéletes számokat belőle.

%%Készíts egy run (A,B) függvényt, mely legenerálja a számokat A és B között egy listába, majd meghívja az előzőleg definiált filterező függvényt, hogy kiszűrje az A és B közötti tökéletes számokat.

%%A számelméletben tökéletes számnak nevezzük azokat a természetes számokat, amelyek megegyeznek az önmaguknál kisebb osztóik összegével.

%%Igyekeztem minél kisebb futási idő alatt meglodani a feladatot.
%%A megoldás kihasználja a Mersenne prímek azon tulajdonságát, hogy izomorf megfeleltetés van köztük, és a páros tökéletes számok között. Továbá eltekintünk attól, hogy létezhetnek páratlan tökéletes számok.
%%A tudomány jelenlegi állása szerint, hogyha létezik páratlan tökéletes szám akkor nagyobb, mint 10^300 így ezzel a felvetéssel jogosan élhetünk.

-module(hazi7).
-compile(export_all).

%%Checks a given number about being perfect or not.
-spec lambda(integer()) -> atom(). %%Boolean 
lambda(A) when (not is_integer(A)) orelse A<0 ->
	"Lambda: Wrong input";
lambda(A) when A rem 2 == 0 ->
	lambda(A div 2, 1);
lambda(_) ->
	false.
	
lambda(A, B) when A rem 2 == 0 ->
	lambda(A div 2, B+1);
lambda(A, B) ->
	C = pow(2,B+1),
	D = prim(C-1),		%%Mersenne prime or not.
	if 
		A == (C-1), D == true ->
			true;
		D == true ->
			C-1;
		true ->
			false
	end.

%%Filters the perfect numbers from a list.
-spec perfect_filter(list()) -> list().
perfect_filter(L) when not is_list(L) ->
	"Perfect: Wrong input. Give a list of integers for parameter.";
perfect_filter([]) ->
	[];
perfect_filter([H|T]) ->
	C = lambda(H),
	if
		is_integer(H) =:= false ->
			exit("Perfect: Wrong input. Not integer element.");
		C == true ->
			[H] ++ perfect_filter(T);
		true ->
			perfect_filter(T)
	end.

%%Makes a list from A to B, and filters the perfect numbers from it.
-spec run(integer(), integer()) -> list().
run(A, B) when not (is_integer(A) and is_integer(B)) ->
	"Run: Wrong input. Not integer parameter";
run(A, B) ->
	perfect_filter(lists:seq(A,B)).

%%Powers the first element to the second
-spec pow(integer(), integer()) -> integer().
pow(A,B) when A < 0 orelse B < 0 ->
	"Pow: Wrong input";
pow(A, B) when not (is_integer(A) and is_integer(B)) ->
	"Pow: Wrong input. Give a bigger than 0 integer";
pow(0,_) ->
	0;
pow(_,0) ->
	1;
pow(A,B) ->
	A * pow(A, B-1).


prim(debug, N) ->
	prim(N, 2, erlang:trunc(math:sqrt(N))+1, debug).

%%Decides from a given number that is that a prime or not.
-spec prim(integer()) -> atom(). %%Boolean	
prim(N) when not (is_integer(N) and N > 1) ->
	"Prim: Wrong input";
prim(N) ->
	prim(N, 2, erlang:trunc(math:sqrt(N))+1, none).

prim(_, Max, Max, _) ->
	true;
prim(N,I, Max, Type) ->
	if
		N rem I =:=0, Type =:= debug ->
			{false, I};
		N rem I =:= 0 -> 
			false;
		true ->
			prim(N, I+1, Max, Type)
	end.
	
%%	Végeredmény: 70%
%%	Indoklás: A lambda függvény név nélküli függvényt jelent, fun-t (Erlangban a szintaxisa fun(...) ->... end). Azzal kellett volna definiálni a megoldást.