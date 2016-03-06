#ifndef MAP_H
#define MAP_H

#include <iostream>
#include <fstream>
#include "cell.h"

class Map {																								//A Pályánk(játéktérkép)
private:
	Cell cells[24][24];																					//Egy 24*24-es élettér ^^
public:
	Map() {																								//Egy paraméter nélküli konstruktor, hogy létre tudjuk hozni
	}
	void Update() {																						//Ez a frissítő függvényünk, mely a játékszabályok alapján hozza létre a pályát
		unsigned aliveNeighbors;																		//Egy számláló arra, hogy mennyi szomszéd él
		for (unsigned y = 0; y < 24; y++)																//Iteráljunk végig az életterünkön
			for (unsigned x = 0; x < 24; x++) {															
				aliveNeighbors = 0;																		//Először legyen az egyes cellák élő szomszédjainak a száma 0
				if (y > 0 && this->cells[x][y - 1].IsAlive())											//Nézzük meg, hogy a 8-ból hány élő szomszédja van a cellánknak
					aliveNeighbors++;
				if (x < 23 && y > 0 && this->cells[x + 1][y - 1].IsAlive())
					aliveNeighbors++;
				if (x < 23 && this->cells[x + 1][y].IsAlive())
					aliveNeighbors++;
				if (x < 23 && y < 23 && this->cells[x + 1][y + 1].IsAlive())
					aliveNeighbors++;
				if (y < 23 && this->cells[x][y + 1].IsAlive())
					aliveNeighbors++;
				if (x > 0 && y < 23 && this->cells[x - 1][y + 1].IsAlive())
					aliveNeighbors++;
				if (x > 0 && this->cells[x - 1][y].IsAlive())
					aliveNeighbors++;
				if (x > 0 && y > 0 && this->cells[x - 1][y - 1].IsAlive())
					aliveNeighbors++;
				if ((!this->cells[x][y].IsAlive() && aliveNeighbors == 3) ||							//Itt van a játékszabály, azaz ha nem élt a cella és három szomszédja van szülessen újjá
					(this->cells[x][y].IsAlive() && (aliveNeighbors < 2 || aliveNeighbors > 3)))		//Ha élt és kevesebb, mint kettő vagy több mint három szomszédja van haljon meg
					this->cells[x][y].ChangeState();													//Ezeknek a celláknak változtatjuk az állapotát
			}
		for (unsigned y = 0; y < 24; y++)																//És a legvégén frissítjük a cellákat az új állapotra
			for (unsigned x = 0; x < 24; x++)
				this->cells[x][y].Update();
	}
	void Draw() const {																					//A kiíró függvény
		for (unsigned y = 0; y < 24; y++) {
			for (unsigned x = 0; x < 24; x++)
				std::cout << (this->cells[x][y].IsAlive() ? '0' : ' ');
			std::cout << std::endl;
		}
	}
	void Load(const char* file) {																		//A betöltő függvény 
		std::ifstream fileStream(file);																	//Töltsük be a filesStream-be a fájlunkat																
		if (!fileStream.is_open())																		//Ha nem sikerült a megnyitásdobjuk hibát
			throw std::exception("File not found");
		char c;																							//Ideiglenes karakter
		for (unsigned y = 0; y < 24; y++)																//Végig iterálnk a tömbön
		{
			for (unsigned x = 0; x < 24; x++) {															
				fileStream >> c;																		//Beolvasunk egy karakter a filestreamból
				this->cells[x][y] = Cell(c == '0');														//Attól függően, hogy 0 van-e ott hozzk létre az ottani cellánkat
			}
			fileStream.ignore(1);																		//Az újsor jeleket is olvassuk be
		}
		fileStream.close();																				//Zárjuk be a fájlunkat
	}
	void Edit(unsigned x, unsigned y) {																	//Beállíthatunk koordinátákat, élőre és halottra az editing
		if (x < 0 || y < 0 || x > 23 || y > 23)
			throw std::out_of_range("Index was outside the bounds of the array");						//Ha rosszak a koordináták dobjuk kivételt
		this->cells[x][y].ChangeState();
		this->cells[x][y].Update();
	}
	void Save(const char* file) const {																	//Kimenthetjük fájlba a pályánkat
		std::ofstream fileStream(file);																	//Egy interface biztosítása a fájlbaíáshoz
		for (unsigned y = 0; y < 24; y++) {												
			for (unsigned x = 0; x < 24; x++)
				fileStream << (this->cells[x][y].IsAlive() ? '0' : '_');								//Beírjuk a fájlba a 0-kat és a sorvége karaktereket
			fileStream << std::endl;
		}
		fileStream.close();																				//Majd bezárjuk a fájlt
	}
};

#endif