#ifndef EGG_H
#define EGG_H

#include "Present.h"
#include <iostream>

namespace EasterBunny {
	class Egg : public Present {
	private:
		static const double eggFactor;								//A nekünk kell szorzó
	public:
		Egg(unsigned amount = 1) : Present(amount) {				//Inicializáló listával a Present konstruktorát hívja meg
		}
		double getPrice() const {									//A getPrice() függvény
			return this->amount * basePrice * eggFactor;							
		}
		void print() const {
			std::cout<<"Egg:"<<std::endl;
			Present::print();
		}
	};
	const double Egg::eggFactor = 0.3;
}

#endif //EGG_H