#ifndef CANDY_H
#define CANDY_H

#include <iostream>
#include "Present.h"
//Hasonlóan az előző kettőhöz:
namespace EasterBunny {
	class Candy : public Present {
	private:
		static const double candyFactor;
	public:
		Candy(unsigned amount = 1) : Present(amount) {
		}
		double getPrice() const {
			return this->amount * basePrice * candyFactor;
		}
		void print() const {
			std::cout<<"Candy:"<<std::endl;
			Present::print();
		}
	};
	const double Candy::candyFactor = 1.2;
}

#endif  //CANDY_H