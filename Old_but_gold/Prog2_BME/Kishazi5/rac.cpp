#include <iostream>
#include "rac.h"
#include <math.h>

void Rac::egyszerusit()// Az egyszerûsítõ függvényünk
{ 
	int i, a=1; //Segédváltozók
	if (this->szam>=this->nev) // Ha a számláló a nagyobb
	{
		for(i=2;i<=sqrt((double)this->szam);i++)	// menjen kettõtõl a  szám gyökéig és nézze meg, hogy osztható-e a számláló és a nevezõ ismindkettõ vele
		{
			if (this->szam%i==0 && this->nev%i==0)a=i;
		}
	}
	else					// Ha a nevezõ nagyobb, akkor pepitában:
	{
		for(i=2;i<=sqrt((double)this->nev);i++)	
		{
			if (this->szam%i==0 && this->nev%i==0)a=i;
		}
	}
	this->szam=this->szam/a;
	this->nev=this->nev/a;
}
void Rac::Print()
{
	this->egyszerusit();
	std::cout<< this->szam << " / " << this ->nev << "\n";
}
void DiagPrint(Rac a)
{
	a.egyszerusit();
	std::cout<< a.szam << " / " << a.nev << "\n";
}
double Rac::Rac2dbl()
{	
	return (double)this->szam/this->nev;
}