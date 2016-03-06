//Készítette:    Hajnal Máté
//Dátum:         2015.3.26
//eha kód:       RJBSCJ
//mail:          hajnalmt@inf.elte.hu
//csoport:       5.csoport
//Feladat:       0.beadandó/7.feladat
//               Egymást követő napokon megmértük a napi hőmérsékletet, és ezeket az értékeket egy tömbben tároljuk. Mértünk-e 0 Celsius fokot közvetlenül azelőtt, hogy először fagypont alatti hőmérsékletet regisztráltunk?

#include <iostream>
#include <fstream>
#include <string>
#include <vector>

using namespace std;
bool ZeroBeforeFirstLowerZero(const vector<int> temp);
bool ReadFromFile(const string &fname, vector<int> &t);
bool ZeroBeforeFirstLowerZero2(const vector<int> temp);

int main(int argc, char* argv[])
{
    char ch;
    do{
        vector<int> temp;

    // Adatok beolvasása fájlból
        string fname;
        if(argc>1)
            fname = argv[1];
        else{
            cout << "Adja meg a szoveges fajl nevet: ";
            cin >> fname;
        }
        if (!ReadFromFile(fname, temp)) break;

    // Kiértékelés és kiíratás
        if(ZeroBeforeFirstLowerZero(temp)&&((int)temp.size()>1))
            cout << "Azelott, hogy eloszor fagypont alatti homersekletet regisztraltunk, 0 Celsius fokot mertunk." << endl;
        else
            cout << "Az elso fagypont alatti homerseklet elott nem 0 Celsius fokot mertunk"<< endl;

        cout << endl << "Futtassam újra? (I/N) "; cin  >> ch;

    }while(ch!='n' && ch!='N');

    return 0;
}

//Feladat:      Integereket tartalmazó tömb vektor feeltöltése szöveges állományból
//Tevékenység:  Megnyitja a megadott szöveges állományt (sikertelen kísérlet esetén hibát jelez)
//              majd a fájlból egymás után beolvassa az összes elválasztójelekkel határolt számot
//              és elhelyezi azokat egy tömbben (vector-ban)
//Bemenõ adat:  string fname - szöveges állomány neve
//Kimenõ adat:  vector<int> temp
//              bool ok - sikerült-e az állomány megnyitása (visszatérési értékként)
bool ReadFromFile(const string &fname, vector<int> &temp){
    ifstream x(fname.c_str());
    if(x.fail()){
        cout << "Hibas fajlnev!"<< endl;
        return false;
    }

    int next_temp;
    x >> next_temp;
    while(!x.eof()){
        temp.push_back(next_temp);
        x >> next_temp;
    }
    // Ha nem volt az utolsó sor végén sorvége jel:
    if (!x.fail()) temp.push_back(next_temp);
    return true;
}

//Feladat:      Eldönti, hogy egy tömbben az első 0 alatti érték előtt 0 volt-e a hőmérséklet
//Tevékenység:  Pesszmista lineáris kereséssel megvizsgálja, hogy nulla értéke szerepelt-e az első nullánál kisebb érték előtt
//              a megadott tömbben (vector)
//Bemenõ adat:  vector<int> temp - a hőmérsékletekből álló tömb.
//Kimenõ adat:  bool l - a válasz visszatérési értékként
bool ZeroBeforeFirstLowerZero(const vector<int> temp){
    bool l = temp[0]== 0;
    for (int i=1; (i<(int)temp.size()) && (temp[i]>=0); i++) {
        if(i==(int)temp.size())
            l=false;
        else
            l=temp[i]==0;
    }
    return l;
}

//Feladat:      Eldönti, hogy egy tömbben az első 0 alatti érték előtt 0 volt-e a hőmérséklet
//Tevékenység:  Pesszmista lineáris kereséssel megvizsgálja, hogy nulla értéke szerepelt-e az első nullánál kisebb érték előtt
//              a megadott tömbben (vector)
//Bemenõ adat:  vector<int> temp - a hőmérsékletekből álló tömb.
//Kimenõ adat:  bool l - a válasz visszatérési értékként
bool ZeroBeforeFirstLowerZero2(const vector<int> temp){
    bool l = false;
    for (int i=0; (l==false)&& (i<(int)temp.size()-1) && (temp[i]>=0); i++) {
        l=(temp[i]==0)&& (temp[i+1]>=0);
    }
    return l;
}

