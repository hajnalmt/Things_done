#ifndef PRESENT1_H
#define PREENT1_H

#include <iostream>

namespace Easterbunny{
class Present{
protected:
	static const double baseprice;
	unsigned amount;
public:
	Present(unsigned amount=1) : amount(amount){};
	virtual double getPrice()const=0;
	virtual ~Present(){};
	virtual void print()const{
	std::cout<<"Price: "<<this->getPrice()<<std::endl;};

};
const double Present::baseprice=50.0;
}
#endif  //PRESENT1_H 