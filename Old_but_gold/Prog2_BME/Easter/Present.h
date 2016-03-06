#include <iostream>
#include <string.h>
#ifndef PRESENT_H
#define PRESENT_H

namespace EasterBunny
{
	class Present
	{
		static unsigned int basePrice;
		unsigned int db;
		
	public:

		Present() {db=1;}

		Present (unsigned int db) {this->db=db;}

		static int GetbasePrice() {return basePrice;}

		unsigned int Getdb() {return db;}

		virtual void GetPrice(){std::cout<<db*basePrice;}

		virtual void GetNev(){std::cout<<"Present";}

		void Setdb(unsigned int db) {this->db=db;}

	
	};
	unsigned int Present::basePrice=50;
}
#endif;