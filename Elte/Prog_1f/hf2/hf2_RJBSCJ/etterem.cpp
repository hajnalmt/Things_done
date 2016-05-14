//Készítette:    Hajnal Máté
//Dátum:         2016.március.17
//eha kód:       RJBSCJ
//mail:          hajnalmt@gmail.com
//csoport:       5.csoport
//Feladat:       2.beadandó/11.feladat
//               Egy étteremben a pincérek által felvett rendeléseket egy szekvenciális input fájlban tartják
//               nyilván az ételek neve, azon belül a rendelések időpontja szerint rendezett formában.
//               Feltehetjük, hogy a fájl nem üres. A tárolt adatok: a rendelt étel neve, a rendelés időpontja,
//               rendelt adagok száma, egy adag ára. Melyik étel hozta az étteremnek a legtöbb bevételt
//               (összesített darab*egységár)?

#include <iostream>
#include "enor.h"

using namespace std;

//Feladat: 	    Kiírja egy szöveg azon bekezdések sorszámát és 'w' betûs szavainak arányát
//              amelyeknek minden sorában legalább két 'w' betût tartalmazó szó van.
//Bemenõ adatok:szöveges állomány
//Kimenõ adatok:statndard output
//Tevékenység:	A szöveges állomány bekezdéseinek felsorolására épülõ összegzés (kiválogatás)
//              A felsoroló megmutatja egy bekezdésrõl annak sorszámát, az abban levõ a szavak számát,
//              a 'w' betûs szavak számát és azt, hogy minden sorában van-e legalább két 'w' betûs szó.
//              Ennek segítségével a a megfogalmazott kiválogatás elvégezhetõ.
int main()
{
    Enor t("input.txt");

    t.First();
    unsigned int max=t.Current().bevetel;
    Rendeles elem=t.Current();

    for(;!t.End();){
        t.Next();
        if(t.Current().bevetel>max){
            max=t.Current().bevetel;
            elem=t.Current();
        }
    }
    cout << "A legtobb bevetelt hozo etel neve: " << elem.nev << endl;
    return 0;
}
