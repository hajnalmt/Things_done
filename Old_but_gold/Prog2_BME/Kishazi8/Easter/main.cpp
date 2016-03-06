#include "Chocolate.h"
#include "Candy.h"
#include "Egg.h"
#include "Present.h"

using namespace EasterBunny;

int main() {
	Present* presents[5];
	presents[0] = new Candy;					//Default konstruktor
	presents[1] = new Chocolate(4);
	presents[2] = new Egg(5);
	presents[3] = new Chocolate(6);
	presents[4] = new Candy(7);
	for (int i = 0; i < 5; i++) {
		presents[i]->print();
		delete presents[i];
	}
	getchar();
	return 0;
}