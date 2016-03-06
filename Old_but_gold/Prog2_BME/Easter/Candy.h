#include <iostream>
#include "Present.h"
#ifndef CANDY_H
#define CANDY_H

namespace EasterBunny
{
	class Candy: public Present
	{
		static double candyFactor;

	public:

		Candy (): Present() {}

		Candy (unsigned int db) {Setdb(db);}

		void GetPrice(){std::cout<<Getdb()*GetbasePrice()*candyFactor;}

		void GetNev(){std::cout<<"Chocolate";}

		static void SetcandyFactor(double CandyFactor) {candyFactor=CandyFactor;}
	};
	double Candy::candyFactor=2.4;
}
#endif;