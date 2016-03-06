#include <iostream>

#include "map.h"
#include "conio.h"

using namespace std;

enum State {								//Állapotgéppel talán elegánsabb az állapotok megkülönböztetése
	Running,								//Futás 
	Paused,									//Szünetelés
	Editing,								//Adat betöltés
	Saving,									//Pálya mentés
	Loading									//Pálya betöltés
} State;
Map map;									//Hozzunk létre egy globális pályát
void DrawMap() {							//Pályakiíró függvény
	clrscr();
	map.Draw();
}
void Draw() {								//A pályát és a "Toolbar-t kiíró függvény
	DrawMap();
	cout << "[a]:Start/Stop [s]:Step [e]:Edit [d]:Save [l]:Load [c]:Clear [x]:Exit";
}
void Step() {								//A Step függvény egyszer frissíti a pályát, majd kiírja
	map.Update();
	Draw();
}
int main(int argc, char* argv[]) {			//A MAIN függvényünk
	if (argc > 1)							//Ha parancsosorból hívjuk, akkor próbáljunk betölteni
		try {
			map.Load(argv[1]);
		}
		catch (exception& e) {
			cout << "File "<< argv[1] << " not found." << endl;			//Ha nem sikerült dobjunk kivételt
			return -1;													//És térjnk vissza
		}
	State = Paused;														//Alapjáraton szünetelésről induljunk
	bool running = true;												//Egy változó amellyel jelezzük, hogy fut a programunk
	Draw();																//Rajzoljuk ki az életterünket
	while (running) {													//Amíg fut a program
		if (State == Running) {											//Ha a Futás állapotban vagyunk
			Step();														//Lépesegessünk
		}
		else if (State == Editing) {									//Ha Adatbetöltés álapotban vagyunk 
			DrawMap();													//Írjuk ki a pályát
			cout << "Coordinates=";										//Adjunk meg koordinátákat
			unsigned x;
			unsigned y;
			cin >> x >> y;;
			try {
				map.Edit(x, y);											//Rakjuk be az Edit függvénnyel a megfelelő helyre a koordinátát
			}
			catch (out_of_range& e) {									//Ha kell dobjunk kivételt
				DrawMap();
				cout << "Invalid coordinates.";
				getch();
			}
			State = Paused;												//Ha végeztünk a koordináták megadásával menjünk Szünet állapotba
			Draw();														//És írjuk ki pályát
		}
		else if (State == Saving) {										//Ha fájlba mentünk
			DrawMap();													//Írjuk ki a pályát
			cout << "File name: ";
			char file[12];
			cin >> file;
			map.Save(file);												//Mentsük el a Sev függvénnyel a fájlunkat
			State = Paused;												//Ha elmentettük Szünet állapot
			Draw();														//És írjuk ki pályát
		}
		else if (State == Loading) {									//Ha fájlból töltünk
			DrawMap();
			cout << "File name: ";
			char file[12];
			cin >> file;												//Olvassuk be a fájl nevet
			try {
				map.Load(file);
			}
			catch (exception& e) {										//Ha nem sikerült dobjunk kivételt
				DrawMap();
				cout << "File " << file << " not found.";
				getch();
			}
			State = Paused;
			Draw();
		}
		if (kbhit()) {													//Ha le van nyomva egy billentyű
			char c = getch();											//Olvassuk be és nézzk meg mi volt és az alapján menjónk a megfelelő állapotba 
			switch (c) {
			case 'a':
				if (State == Running)
					State = Paused;
				else
					State = Running;
				break;
			case 's':
				Step();
				break;
			case 'e':
				State = Editing;
				break;
			case 'd':
				State = Saving;
				break;
			case 'l':
				State = Loading;
				break;
			case 'c':
				map = Map();
				Draw();
				break;
			case 'x':
				running = false;								//Lépjünk ki a programból és a while ciklusból x-re		
				break;
			}
		}
	}
	return 0;
}