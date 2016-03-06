%%Kisbeadandó 14. - Process ring 2
%%Készítette: Hajnal Máté

%%Az előzőleg kiírt beadandót kellene másként megoldani. Elindítunk N darab folyamatot, aki indításkor megkapja, hogy hanyadik az elindítottak között (azaz 1 és N között egy szám). Majd resztrálja magát proc_i néven, ahol az i az ő indexe: proc_1, proc_2, stb... 
%%Majd körbeküldik az ok üzenetet úgy, hogy az iedik a proc_(i-1)-től vár üzenet és ha megkapta, akkor a proc_i+1-nek küldi tovább: azaz a harmadik a proc_2-től vár és a proc_4-nek küld.