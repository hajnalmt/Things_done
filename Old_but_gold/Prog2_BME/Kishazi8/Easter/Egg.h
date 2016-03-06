#ifndef EGG_H
#define EGG_H

#include "Present.h"
#include <iostream>

namespace EasterBunny {
	class Egg : public Present {
	private:
		static const double eggFactor;								//A nek�nk kell szorz�
	public:
		Egg(unsigned amount = 1) : Present(amount) {				//Inicializ�l� list�val a Present konstruktor�t h�vja meg
		}
		double getPrice() const {									//A getPrice() f�ggv�ny
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