//Készítette:    Hajnal Máté
//Dátum:         2016.március.17
//eha kód:       RJBSCJ
//mail:          hajnalmt@gmail.com
//csoport:       5.csoport
//Feladat:       2.beadandó/11.feladat
//               Felsorolókat megvalósító objektumok

#ifndef ENOR_H
#define ENOR_H

#include <fstream>
#include <string>
#include <sstream>

enum Status { abnorm, norm };

struct Akt_f{
    std::string nev;
    unsigned int ido;
    unsigned int adag;
    unsigned int ar;
};

struct Rendeles{
    std::string nev;
    unsigned int bevetel;
};
//  Rendelés_1-felsoroló típusa
//  Típusértékek:   felsoroló objektumok
//  Reprezentáció:  szöveges állomány adatfolyam objektuma
//                  rendelés-olvasás státusza
//                  rendelés adatai
//  Mûveletei:  felsoroló létrehozása
//              felsoroló mûveletek
//              a szöveg következõ sorának olvasása
class Enor{
    private:
        std::ifstream f;
        Status st;
        Rendeles akt;
        Akt_f akt_f;
        std::string elso;
        void Read();

    public:
        Enor(const std::string &str);
        void First() {Read(); Next();}
        void Next();
        Rendeles Current() const { return akt;}
        bool End() const { return st==abnorm;}
};

#endif
