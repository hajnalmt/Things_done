#ifndef CANDY1_H
#define CANDY1_H

#include "Present1.h"
#include <iostream>

namespace Easterbunny{
	class Candy : public Present{
	private:
		static const double candyFactor;
	public:
		Candy(unsigned amount=0) : Present(amount){};
		double getPrice()const {return candyfactor*basePrice*this->amount};
		void print(){
		cout<< "Candy"<<stdl;
		Present::print();
		}
	};
	const double Candy::candyfactor=1.2;
}



#endif //CANDY_H