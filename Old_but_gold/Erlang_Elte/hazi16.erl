%%Kisbeadandó 16. - Fobonacci
%%Készítette: Hajnal Máté


%%Írjuk meg a fibonacci számító függvény naiv párhuzamosítását: számoljuk ki a fib(N-1)-et és fib(N-2)-t egy egy új erlang folyamatban. Biztosan csak nagy számokra tudunk bármilyen gyorsulást elérni többmagos gépen, mert mondjuk 4-re nem éri meg párhuzamosítani, hiszen microszekundunmok alatt lesz már eredmény.

%%Az érdekes kérdés, hogy meddig éri meg párhuzamosítani? Mérjétek ki! A beadott megoldás pedig legyen olyan, hogy ha már nem éri meg párhuzamosítani, akkor ne párhuzamosítson!

%%Méréshez használjátok a timer:tc(Mod, Fun, ArgList) függvényt.

%%Még egy segítség lehet, ha céltudatosan a divide and conquer minta alapján dolgoztok, de ez nem kötelező.