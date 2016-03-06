#include <iostream>
#include <map>
#include <vector>
#include <set>
#include <string>

using namespace std;
int main() {
	map<string, string>telko;
	telko["Mate"] = "0670/946-13-05";
	telko["Lajos"] = "0630/456-56-15";
	telko["Zsolt"] = "0601/463-29-92";
	std::cout << "Mate Szama: " << telko["Mate"] << endl;								
	std::cout << "Lajos Szama: " << telko["Lajos"] << endl;
	std::cout << "Zsolt Szama: " << telko["Zsolt"] << endl;
	vector<set<int>> V;
	int a[] = { 5, 6, 9, 15, 16};
	int b[] = { 4, 6, 8, 11, 124, 1029};
	set<int> h_1,h_2(a,a+5),h_3(b, b+6);												//Használhatjuk a pointereket iterátorként  és nem kell egyenként insertelni.
	set<int> c[] ={ h_1, h_2, h_3};
	V.insert(V.begin(),c,c+3);
	for (vector<set<int>> :: iterator it = V.begin(); it < V.end(); it++) {
		for (set<int> :: iterator iit = (*it).begin(); iit != (*it).end(); iit++) {
			cout << *iit << " ";
		}
		cout << endl;
	}
	getchar();
	return 0;
	// #include <PótZH.h> 
	// #define PótZH_mark = 5;
	// if (PótZH_mark == 5) int Programozas_Alapjai_evvegi_jegy = 5;
	// else { throw logic_error("impossibru");}
}