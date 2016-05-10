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

struct Rendeles_1 {
    string nev;
    unsigned int ido;
    unsigned int adag;
    unsigned int ar;
};

struct Rendeles_2 {
    string nev;
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
class Enor_1{
    private:
        std::ifstream f;
        Status st;
        Rendeles_1 akt;
        void Read();

    public:
        Enor_1(const std::string &str);
        void First() {Read(); Next();}
        void Next();
        Rendeles_1 Current() const { return akt;}
        bool End() const { return st==abnorm;}
};

//  Rendelés_2-felsoroló típusa
//  Típusértékek:   felsoroló objektumok
//  Reprezentáció:  szöveges állomány adatfolyam objektuma
//                  rendelés-olvasás státusza
//                  rendelés adatai
//  Mûveletei:  felsoroló létrehozása
//              felsoroló mûveletek
//              a szöveg következõ sorának olvasása
class Enor_2{
    private:
        std::ifstream f;
        Status st;
        Rendeles_2 akt;
        void Read();

    public:
        Enor_2(const std::string &str);
        void First() {Read();}
        void Next(Read(););
        Rendeles_2 Current() const { return akt;}
        bool End() const { return vege;}
};

#endif
