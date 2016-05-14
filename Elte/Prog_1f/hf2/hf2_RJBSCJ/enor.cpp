//Készítette:   Gregorics Tibor
//Dátum:        2009.01.23.
//eha kód:      EHACODE.ELTE
//mail:         gt@inf.elte.hu
//csoport:      0.csoport
//Feladat:      3.beadandó/0.feladat
//              Bekezdéseket felsoroló objektum osztálya

#include "enor.h"

#include <iostream>
#include <cstdlib>

using namespace std;

//Feladat: 		Felsoroló létrehozása.
//Bemenõ adatok:-
//Kimenõ adatok:alapértelmezett felsoroló
//Tevékenység:	Megnyitja a felsoroló hátterében levõ szöveges állományt olvasásra
//              inicializálja a bekezdések sorszámozását
Enor::Enor(const string &str)
{
    f.open(str.c_str());
    if(f.fail()){
        cout << "Nem lehet megnyitni az inputfajlt!\n";
        exit(1);
    }
}


//Feladat: 		A felsoroló Next() mûvelete.
//Bemenõ adatok:alapértelmezett felsoroló
//Kimenõ adatok:alapértelmezett felsoroló
//Tevékenység:	Átlépi az üres sorokat, majd ha azok után nincs nem üres sor, akkor jelzi, hogy nincs több bekezdés
//              különben beolvassa a következõ bekezdés sorait, amelyekben
//              egyrészt kiszámítja  a bekezdés sorszámát
//              másrészt számolja a szavak illetve a 'w' betûs szavak számát,
//              harmadrészt eldönti, hogy minden sorban van-e legalább két 'w' betûs szó
//              Egy soron belül felsoroltatja a szavakat, amelyekben 'w' betût a find() függvénnyel keres.
void Enor::Next()
{
    if(st==norm) {
        elso=akt_f.nev;
        akt.bevetel=0;
    }
    while((!elso.compare(akt_f.nev)) && (st==norm)) {
        akt.nev=akt_f.nev;
        akt.bevetel=akt.bevetel+akt_f.adag*akt_f.ar;
        Read();
    }
}

//Feladat: 		folyó szöveg beolvasása.
//Bemenõ adatok:alapértelmezett felsoroló
//Kimenõ adatok:alapértelmezett felsoroló
//Tevékenység:	Olvas egy újabb rendelést olvas be a szöveges állományból,
//              ha nem sikerül az olvasás státuszát abnorm-ra állítja, különben norm-ra

void Enor::Read()
{
    f >> akt_f.nev;
    if(!f.fail() || !f.eof()){
        st = norm;
        f >> akt_f.ido;
        f >> akt_f.adag;
        f >> akt_f.ar;
    }
    else st = abnorm;
}
