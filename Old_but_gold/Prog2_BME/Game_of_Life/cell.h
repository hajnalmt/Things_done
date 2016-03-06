#ifndef CELL_H
#define CELL_H

class Cell {								//Cella osztály
private:									//Két privát tagváltozóval
	bool isAlive;							//Él-e
	bool changesState;						//Fog-e állapotot változtatni
public:
	Cell(bool isAlive = false) {			//Alapvetően legyen a cella halott
		this->isAlive = isAlive;			//Egyébként a kapott bool paraméter adjon értéket az isAlive-nak
		this->changesState = false;			//Létrehozáskor nem áltoztatunk állapotot
	}
	bool IsAlive() const {					//Legyen lekérdezhető a cella állapota
		return this->isAlive;
	}
	void ChangeState() {					//Ezzel a függvénnyel tudjuk az állapotváltoztatásra felszólító tagváltozót beállítani 
		this->changesState = true;
	}
	void Update() {							//A cella állapotát frissítő függvény	
		if (this->changesState) {			//Ha kell változtatni az állapoton
			this->isAlive = !this->isAlive;	//Akkor változtassunk is
			this->changesState = false;		//És állítsuk vissza az állapotváltoztatásra felszólítótagváltozót
		}
	}
};

#endif