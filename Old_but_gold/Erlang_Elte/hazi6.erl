%%Kisbeadandó 6. - Hatodik javítása
%%Készítette: Hajnal Máté

%%Javítsuk még egy kicsit a http://people.inf.elte.hu/toth_m/erlang/hatodik.erl megoldást.

%%Kezeljük le azt a hibát is, ha nem létező modul nevet gépel be a user.
%%Ilyen esetben ne kérjen be a program már függvény nevet.
%%A read_par függvényt fejlesszük úgy, hogy kiírja azt is, hogy hányadik paraméter kéri be éppen.

-module(hazi6).
-compile(export_all).

read()->
    try {ok, Mod} = io:read('Adj meg egy modult: '),
		Mod:module_info(),		%if the module not exist, catch the error instantly
		{ok, Fun} = io:read('Adj meg egy fuggvenyt: '),
		{_, Arity} =  lists:keyfind(Fun, 1, Mod:module_info(exports)),
		Args = read_args(Arity, lists:seq(1,Arity)),
		{Mod, apply(Mod, Fun, Args)}
		%apply(fun() -> f() end, Args) 
    of
		{M , A} -> { siker, A, ?MODULE == M}
    catch
		error:{badmatch, {error, _}} ->
			"rossz input";
		error:undef ->
			"rossz modulnev";
		error:{badmatch, false} ->
			"rossz fuggvenynev";
		_:A -> 
			{"hiba a kiertekelesben", A}
    end.


read_args(0,[])->
    [];
read_args(Arity, [H|T])->
    {ok, Arg} = io:read(lists:concat([H,". parameter ertekenek adasa: "])),%, H, ". parametert")),
    [ Arg | read_args(Arity-1, T)].

f() ->
    alma +2.

	
%%A házihoz a tesztelő log file:
%% 43>c(hazi6).
%% hazi6.erl:41: Warning: this expression will fail with a 'badarith' exception
%% {ok,hazi6}
%% 44> hazi6:read().
%% Adj meg egy modult: éaá-.
%% "rossz input"
%% 45> hazi6:read().
%% Adj meg egy modult: hazika.
%% "rossz modulnev"
%% 46> hazi6:read().
%% Adj meg egy modult: hazi6.
%% Adj meg egy fuggvenyt: s.
%% "rossz fuggvenynev"
%% 47> hazi6:read().
%% Adj meg egy modult: hazi6.
%% Adj meg egy fuggvenyt: f.
%% {"hiba a kiertekelesben",badarith}
%% 48>  hazi6:read().
%% Adj meg egy modult: hazi5.
%% Adj meg egy fuggvenyt: takeanddrop.
%% 1. parameter ertekenek adasa: [1,2,3,4,5,6,7,8,9].
%% 2. parameter ertekenek adasa: 4.
%% {siker,[[5,6,7,8,9],[1,2,3,4]],false}

%% Végeredmény: 100%