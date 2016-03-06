%%Kisbeadandó 5. - Darabolás másként
%%Készítette: Hajnal Máté

%%Írjuk meg az előző feladatban megadott darabol függvényt úgy, hogy abban az esetben is működjön, ha a második lista hossza nem egyenlő az első listában lévő elemek összegével. Lehet választani, hogy végrekurzívan írjátok meg, vagy nem végrekurzívan.

%%Ha rövidebb a lista, akkor egyszerűen hagyjuk abba a végrehajtást és a legutolsó elem legyen a maradék lista:%%%%

%%darabol([3,4,5], [alma, korte, szilva, egy, ketto, harom]) = [[alma, korte, szilva], [egy, ketto, harom]].

%%Ha hosszabb a lista, akkor pedig, amikor elfogytak a számok, fűzzük az eredmény végére a maradék listát:

%%darabol([1,1,1], [alma, korte, szilva, egy, ketto, harom]) = [[alma], [korte], [szilva], [egy, ketto, harom]]

-module(hazi5).

-compile(export_all).

%%Az előző feladatban lévő függvényeket írtam át csak a kért változtatásokat figyelembe véve. A nem végrekurzív verziót sokkal egyszerűbb volt átírni.

takeanddrop(List, N) -> 
	takeanddrop(List, N, []).

takeanddrop([H|T], N, Acc) when N > 0 ->
    takeanddrop(T, N-1, [H|Acc]);
takeanddrop(T, 0, Acc) -> 
	[T, lists:reverse(Acc)];
takeanddrop([],_,Acc) ->
	[[], Acc].

darabol([X|Tail], List) ->
	[RemainList, Slice] = takeanddrop(List, X),
	lists:append([Slice], darabol(Tail, RemainList));
darabol(_,[]) ->
	[];
darabol([],List) ->
	[List].

tail_recursive_darabol(List, N) -> 
	tail_recursive_darabol(List, N, []).
	
tail_recursive_darabol([H|T], List, Acc) ->
	[RemainList, Slice] = takeanddrop(List,H),
	tail_recursive_darabol(T, RemainList, [Slice|Acc]);
tail_recursive_darabol(_,[],Acc) ->
	lists:reverse(lists:dropwhile( fun(X) -> length(X) == 0 end,Acc));
tail_recursive_darabol([],RemainList,Acc) ->
	lists:reverse([RemainList | Acc]).

%%	Végeredmény: 100%