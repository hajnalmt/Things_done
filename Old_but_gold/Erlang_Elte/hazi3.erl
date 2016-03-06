%%Kisbeadandó 3. - Végrekurzív quicksort
%%Készítette: Hajnal Máté
%%Opcionális beadandó, megoldásárt plusz pont jár a félév végén, de nem jelent hátrányt, ha nincs teljesítve!

%%Oldd meg a quicksortot végrekurzív módon! A hatékonyság nem szempont most!

-module(hazi3).

-compile(export_all).

quicksort(Pivot, Left, Right, []) ->  
     {Left, Pivot, Right};  
quicksort(Pivot, Left, Right, [H|T]) when H < Pivot ->  
     quicksort(Pivot, [H|Left], Right, T);  
quicksort(Pivot, Left, Right, [H|T]) ->  
     quicksort(Pivot, Left, [H|Right], T).  

quicksort([]) ->  
     [];  
quicksort([H|T]) ->  
     {Left, Pivot, Right} = quicksort(H, [], [], T),  
     quicksort(Left) ++ [Pivot] ++ quicksort(Right). 

%%	Végeredmény: 20%
%%  Indoklás: Csak a szétválogatás része végrekurzív, maga a rendezés nem, hiszen kétszer hívsz rá rekurzívan.
