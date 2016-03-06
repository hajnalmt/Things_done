#ifndef CHOCOLATE_H
#define CHOCOLATE_H

#include "Present.h"
#include <iostream>

namespace EasterBunny {
	class Chocolate : public Present {
	private:
		static const double chocolateFactor;									//A nekünk kellő szorzó
	public:
		Chocolate(unsigned amount = 1) : Present(amount) {				//Inicializáló listával a Present konstruktorát hívja meg
		}
		double getPrice() const {
			return this->amount * basePrice * chocolateFactor;			//A getPrice() függvény
		}
		void print() const {
			std::cout<<"Chocolate:"<<std::endl;
			Present::print();
		}
	};
	const double Chocolate::chocolateFactor = 2.4;
}

#endif  //CHOCOLATE_H