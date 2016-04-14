//Készítette:    Hajnal Máté
//Dátum:         2016.március.17
//eha kód:       RJBSCJ
//mail:          hajnalmt@gmail.com
//csoport:       5.csoport
//Feladat:       1.beadandó/11.feladat
//               Egy határállomáson feljegyezték az átlépő utasok útlevélszámát. Melyik útlevélszámú
//               utas fordult meg leghamarabb másodszor a határon?

#include <iostream>
#include <cstdlib>
#include <fstream>
#include <string>
#include <vector>

using namespace std;
bool ReadFromFile(const string &fname, vector<string> &t);
bool MasodikUtl(bool& l, unsigned int& ind, const vector<string> &t);
bool Pesszker(bool& l2, unsigned int& ind2, const vector<string> &t);

int main(int argc, char *argv[])
{
    char ch;
    do {
        vector<string> t;
        bool l = false;
        unsigned int ind;

        //Adatok beolvasása fájlból
        string fname;
        if(argc>1)
            fname = argv[1];
        else{
            cout << "Adja meg a szöveges fájl nevét: ";
            cin >> fname;
        }
        if (!ReadFromFile(fname, t)) break;

        // Kiértékelés és kiíratás
        if(!MasodikUtl(l, ind, t)) {
            cout << "Nincs olyan utas, aki kétszer fordult meg a határon." << endl;
        }
        else {
            cout << "A leghamarabb legalább kétszer megfordult utas útlevélszáma:" << t[ind]  << " (indexe:" << ind+1 << ")" << endl;
        }

            cout << endl << "Futtassam újra? (I/N) "; cin  >> ch;
        argc = 1;
    } while(ch!='n' && ch!='N');
    return 0;
}

//Feladat:      Sztringeket tartalmazó tömb (vector) feltöltése szöveges állományból
//Tevékenység:  Megnyitja a megadott szöveges állományt (sikertelen kísérlet esetén hibát jelez)
//              majd a fájlból egymás után beolvassa az összes elválasztójelekkel határolt sztringet
//              és elhelyezi azokat egy tömbben (vector-ban)
//Bemenõ adat:  string fname - szöveges állomány neve
//Kimenõ adat:  vector<string> t
//              bool ok - sikerült-e az állomány megnyitása (visszatérési értékként)
bool ReadFromFile(const string &fname, vector<string> &t)
{
    ifstream x(fname.c_str());
    if(x.fail()){
        cout << "Hibás fájlnév!"<< endl;
        return false;
    }

    string name;
    x >> name;
    while(!x.eof()){
        t.push_back(name);
        x >> name;
    }
    // Ha nem volt az utolsó sor végén sorvége jel:
    if (!x.fail()) t.push_back(name);
    return true;
}

//Feladat:      A megadott tömbben megkeresi az az elemet ami leghamarabb fordul el megint.
//Tevékenység:  Minimum kiválasztással kiválasztja a legkisebb indexűt, ami mégegyszer előfordul
//Bemenõ adat:  bool &l, - Van-e egyáltalán olyan elem, ami kétszer előfordul
//              int &min - Mi a második előfordulás indexe
//              int &ind - Mi az elem indexe
//              vector<int> &t - Tömb
//Kimenõ adat:  bool l - Van-e egyáltalán elem, ami kétszer előfordul a tömbben?
bool MasodikUtl(bool &l, unsigned int &ind, const vector<string> &t)
{
    ind = t.size();
    unsigned int min = t.size();
    for (unsigned int i = 0; i < t.size()-2; ++i) {
        unsigned int ind2 = i;
        bool l2 = false;
        if (Pesszker(l2, ind2, t)) {
            l =  true;
            if (ind2 < min) {
                ind2 = min;
                ind = i;
            }
        }
    }
    return l;
}

//Feladat:      A megadott tömbben megkeresi, hogy előfordul-e mégegyszer a megadott indexű elem
//Tevékenység:  Pesszimista keresésel megkeresi a következő elemet
//Bemenõ adat:  bool &l2, - Előfordul-e kétszer az elem
//              int &ind2 - Mi a második előfordulás indexe?
//              vector<int> &t - Tömb
//Kimenõ adat:  bool l2 - Előfordul-e kétszer az elem?
bool Pesszker(bool &l2, unsigned int &ind2, const vector<string> &t)
{
    for (unsigned int i = ind2+1; i < t.size()-1 && !l2; ++i) {
        if (t[ind2] == t[i]) {
            l2 = true;
            ind2 = i;
        }
    }

    return l2;
}
