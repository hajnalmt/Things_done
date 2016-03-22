//Készítette:    Hajnal Máté
//Dátum:         2016.március.17
//eha kód:       RJBSCJ
//mail:          hajnalmt@gmail.com
//csoport:       5.csoport
//Feladat:       0.beadandó/11.feladat
//               A föld felszínének egy vonala mentén egyenlő távolságonként megmértük a terep tengerszint feletti magasságát és a mért értékeket egy tömbben tároljuk.
// 				 Keressük meg a legmagasabb völgyet a mérési sorozatban!

#include <iostream>
#include <fstream>
#include <string>
#include <vector>

using namespace std;

bool ReadFromFile(const string &fname, vector<int> &t);
bool Maxvolgy(bool &l, int &max, int &ind , const vector<int> &t);

int main(int argc, char *argv[])
{
    char ch;
    do{
        vector<int> t;
        bool l = false;
        int max = 0;
        int ind = 0;

        // Adatok beolvasása fájlból
        string fname;
        if(argc>1)
            fname = argv[1];
        else{
            cout << "Adja meg a szöveges fájl nevét: ";
            cin >> fname;
        }
        if (!ReadFromFile(fname, t)) break;
        //3-nál kisebb tömbökre értelmetlen a feladat
        if (t.size() < 3) {
            cout << "Legalább három magasságérték szükséges a feladathoz!" << endl;
        }
        else {
            // Kiértékelés és kiíratás
            if(!Maxvolgy(l, max, ind, t)) {
            cout << "Nincsen völgy a sorozatban." << endl;
            }
            else {
            cout << "Legnagyobb völgy indexe:" << ind << " és értéke:" << max << endl;
            }
        }
        cout << endl << "Futtassam újra? (I/N) "; cin  >> ch;
        argc = 1;
    }while(ch!='n' && ch!='N');

    return 0;
}

//Feladat:      Sztringeket tartalmazó tömb (vector) feltöltése szöveges állományból
//Tevékenység:  Megnyitja a megadott szöveges állományt (sikertelen kísérlet esetén hibát jelez)
//              majd a fájlból egymás után beolvassa az összes elválasztójelekkel határolt egész számot
//              és elhelyezi azokat egy tömbben (vector-ban)
//Bemenõ adat:  string fname - szöveges állomány neve
//Kimenõ adat:  vector<double> &t
//              bool ok - sikerült-e az állomány megnyitása (visszatérési értékként)
bool ReadFromFile(const string &fname, vector<int> &t)
{
    ifstream x(fname.c_str());
    if(x.fail()){
        cout << "Hibás fájlnév!"<< endl;
        return false;
    }

    int altitude;
    x >> altitude;
    while(!x.eof()){
        t.push_back(altitude);
        x >> altitude;
    }
    // Ha nem volt az utolsó sor végén sorvége jel:
    if (!x.fail()) t.push_back(altitude);
    return true;
}

//Feladat:      Egy megadott tömbben megkeresni a legmagasabb értéket melynek melynek szomszédai
//              nagyobbak nála.
//Tevékenység:  Feltételes maximum kereséssel megkeresi egy adott tömbben a legmagasabb völgyet
//Bemenõ adat:  bool &l,
//              int &max
//              int &ind
//              vector<int> &t
//Kimenõ adat:  bool l - Volt-e völgy egyáltalán a tömbben.
bool Maxvolgy(bool &l, int &max, int &ind , const vector<int> &t)
{
    for (int i=1; i < t.size()-1; ++i) {
        if (t[i-1] > t[i] && t[i+1] > t[i] && l) {
            if (t[i] > max) {
                max = t[i];
                ind = i+1;
            }
        }
        else if (t[i-1] > t[i] && t[i+1] > t[i]) {
            l = true;
            max = t[i];
            ind = i+1;
        }
    }
    return l;
}
