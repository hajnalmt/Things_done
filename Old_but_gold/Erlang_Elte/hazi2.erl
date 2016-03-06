%%Kisbeadandó 2. - Fibonacci
%%Készítette: Hajnal Máté
%%Írd meg a speciális Fibonacci számoló függvényt. A fibonacci számok úgy állnak elő, hogy az első és a második fibonacci szám 1, majd az i-edik fibonaccit úgy számíthatod ki, hogy az előző két fibonacci számot összeadod (i-1 és i-2).

%%Az Erlangos implementációd legyen speciális és ne csak akkor működjön, ha egy pozitív egész számmal hívod meg.

%%	Minden olyan esetben, amikor értelmesen lehet a fibonacci értéket számolni, akkor add vissza az eredményt.
%%	Ha negatív egész számot kapsz, akkor számold ki a szám abszolút értékének megfelelő fibonacci számot.
%%	Ha nem egészet számot adsz, akkor kerekítsd a számot egészre, és az annak megfelelő fibonacci számot add vissza.
%%	Ha listát kapsz, vagy tuple-t, akkor azok első elemének megfelelő fibonaccit adj vissza.
%%	Minden más esetben pedig egy stringgel térj vissza, melyben benne van, hogy nem megfelelő az input.
%%Példák: fib(2) == 1, fib(-2) == 1, fib(2.3) == 1, fib({2,3,4}) == 1, fib([2,3,4]) == 1, fib(alma) == "valami string a hibával"

-module(hazi2).

-compile(export_all).

fibonacci(0) ->
	0;
fibonacci(1) ->
	1;
fibonacci(List) when is_list(List) ->
	fibonacci(element(1,list_to_tuple(List)));
fibonacci(Tuple) when is_tuple(Tuple) ->
	fibonacci(element(1,Tuple));
fibonacci(X) when false == is_number(X) ->
	"Hibas bemenet";
fibonacci(N) when N >= 1 ->
	fibonacci(round(N)-1) + fibonacci(round(N)-2);
fibonacci(N) when (N > 0) and (N < 1) ->
	fibonacci(round(N));
fibonacci(N) when N < 0 ->
	fibonacci(round(-N)).

%%	Végeredmény: 100%
