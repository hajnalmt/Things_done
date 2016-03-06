#include <iostream>
#include "Present.h"
#ifndef EGG_H
#define EGG_H

namespace EasterBunny
{
	class Egg: public Present
	{
		static double eggFactor;

	public:

		Egg (): Present() {}

		Egg (unsigned int db) {Setdb(db);}

		void GetPrice(){std::cout<<Getdb()*GetbasePrice()*eggFactor;}

		void GetNev(){std::cout<<"Egg";}

		static void SeteggFactor(double EggFactor) {eggFactor=EggFactor;}
	};
	double Egg::eggFactor=0.3;
}
#endif;