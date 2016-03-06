#ifndef PRESENT_H
#define PRESENT_H

#include <iostream>

namespace EasterBunny {
	class Present {													//Egy Present absztrakt oszt�ly (ilyet nem tudunk l�trhozni csak a t�bbi oszt�ly megval�s�t�s�hoz kell)
	protected:
		static const double basePrice;									//A statikus alap�r 
		unsigned amount;
	public:
		Present(unsigned amount = 1) : amount(amount) {				//inicializ�l� list�val a mennyis�g
		}
		virtual double getPrice() const = 0;						//a getPrice virtu�lis f�ggv�ny, melynek minden lesz�rmazottban szerepelnie kell
		virtual ~Present() {
		}
		virtual void print() const {								//A ki�r� f�ggv�ny, ha esetleg egy olyan oszt�lyt is k�sz�ten�nk, melyben nem lenne
			std::cout<<"Price: "<<this->getPrice()<<std::endl;
		}
	};
	const double Present::basePrice = 50.0;
}

#endif //PRESENT_H