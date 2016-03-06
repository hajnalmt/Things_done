#ifndef PRESENT_H
#define PRESENT_H

#include <iostream>

namespace EasterBunny {
	class Present {													//Egy Present absztrakt osztály (ilyet nem tudunk létrhozni csak a többi osztály megvalósításához kell)
	protected:
		static const double basePrice;									//A statikus alapár 
		unsigned amount;
	public:
		Present(unsigned amount = 1) : amount(amount) {				//inicializáló listával a mennyiség
		}
		virtual double getPrice() const = 0;						//a getPrice virtuális függvény, melynek minden leszármazottban szerepelnie kell
		virtual ~Present() {
		}
		virtual void print() const {								//A kiíró függvény, ha esetleg egy olyan osztályt is készítenénk, melyben nem lenne
			std::cout<<"Price: "<<this->getPrice()<<std::endl;
		}
	};
	const double Present::basePrice = 50.0;
}

#endif //PRESENT_H