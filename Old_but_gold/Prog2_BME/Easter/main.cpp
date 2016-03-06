#include <iostream>
#include "Candy.h"
#include "Chocolate.h"
#include "Egg.h"
#include "Present.h"

using namespace std;
using namespace EasterBunny;

int main()
{
	const unsigned maxPresent=4;

	Present* Presents[maxPresent];

	Presents[0]=new Present(1);
	Presents[1]=new Candy(1);
	Presents[2]=new Chocolate(1);
	Presents[3]=new Egg(1);
	
	for(int i=0;i<maxPresent;i++)
	{
		Presents[i]->GetNev();
		Presents[i]->GetPrice();
		delete Presents[i];
		cout<<endl;
		cout<<endl;
	}

	getchar();
	return 0;
}