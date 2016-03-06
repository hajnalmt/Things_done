%%Kisbeadandó 15. - Ring
%%Készítette: Hajnal Máté

%%Írd meg azt a függvényt (run/1), mely paraméterül kap egy számot (N). A run függvény elindít N darab folyamatot, majd minden egyes folyamattal tudatja, hogy kik az ő 
%%szomszédai, azaz ki a sorban előtte lévő és az utána lévő. Ezután az elindított folyamatok az előttük lévőtől várnak egy üzenetre (ok), majd továbbküldik az utánnuk lévőnek. Az 
%%elindított első folyamat a run-tól kap üzenetet, az utolsó pedig a run-nak küldi vissza az ok üzenetet.