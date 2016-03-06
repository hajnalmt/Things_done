%%Kisbeadandó 4. - Végrekurzió és primitív rekurzió gyakorló feladat.
%%Készítette: Hajnal Máté
%%Írjuk meg a darabol függvényt primitív rekurzívan és végrekurzívan is!

%%A darabol függvénynek kér argumentuma van. Az első egy lista, mely számokat tartalmaz. A második pedig egy tetszőleges elemeket tartalmazó lista. A darabol függvény az első listában lévő értékeknek megfelelő hosszú darabokra vágja a második függvényt. Tehát a darabol függvény listák listájával tér vissza.

%%darabol([1,2,3], [alma, korte, szilva, egy, ketto, harom]) = [[alma], [korte, szilva], [egy, ketto, harom]]

%%Élhetünk azzal a feltételezéssel, hogy az első listában lévő elemek összegének megfelelő számú elem van a második listában, illetve a segéd függvényeket nem muszáj megírni, lehet a lists modult használni.

-module(hazi4).

-compile(export_all).

%A segédfüggvények apróbb próbálkozások néhol, a darabol2 és a tail_recursive_darabol függvények valósítják meg a feladatot, egy szükséges segédfüggvénnyel a takeanddrop-al.

take([H|T], N) when N > 0 ->
    [H|take(T, N-1)];
take(_, 0) -> 
	[].

drop([_|T], N) when N > 0 ->
	drop(T, N-1);
drop(X, 0) -> 
	X.

take2(List, N) -> 
	take2(List, N, []).
	
take2([H|T], N, Acc) when N > 0 ->
    take2(T, N-1, [H|Acc]);
take2(_, 0, Acc) -> 
	lists:reverse(Acc).

takeanddrop(List, N) -> 
	takeanddrop(List, N, []).

takeanddrop([H|T], N, Acc) when N > 0 ->
    takeanddrop(T, N-1, [H|Acc]);
takeanddrop(T, 0, Acc) -> 
	[T, lists:reverse(Acc)];
takeanddrop([],_,Acc) ->
	[[], Acc].
	
darabol([],_) ->
	[];
darabol([X | Tail], List) ->
	lists:append([take(List, X)], darabol(Tail, drop(List, X))).

darabol2([],_) ->
	[];
darabol2([X|Tail], List) ->
	[T, Acc] = takeanddrop(List, X),
	lists:append([Acc], darabol2(Tail, T)).	

	
tail_recursive_darabol(List, N) -> 
	tail_recursive_darabol(List, N, []).
	
tail_recursive_darabol([H|T], List, Acc) ->
	[RemainList, Slice] = takeanddrop(List,H),
	tail_recursive_darabol(T, RemainList, [Slice|Acc]);
tail_recursive_darabol([],_,Acc) ->
	lists:reverse(Acc);
tail_recursive_darabol(_,[],Acc) ->
	lists:reverse(Acc).

%%	Végeredmény: 100% 