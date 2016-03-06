#include <iostream>
#include "Present.h"
#ifndef CHOCOLATE_H
#define CHOCOLATE_H

namespace EasterBunny
{
	class Chocolate: public Present
	{
		static double chocolateFactor;

	public:

		Chocolate (): Present() {}

		Chocolate (unsigned int db) {Setdb(db);}

		void GetPrice(){std::cout<<Getdb()*GetbasePrice()*chocolateFactor;}
		
		void GetNev(){std::cout<<"Chocolate";}

		static void SetchocolateFactor(double ChocolateFactor) {chocolateFactor=ChocolateFactor;}
	};
	double Chocolate::chocolateFactor=1.2;
}
#endif;