#include <iostream>
#include "rac.h"
#include <math.h>

void Rac::egyszerusit()// Az egyszer�s�t� f�ggv�ny�nk
{ 
	int i, a=1; //Seg�dv�ltoz�k
	if (this->szam>=this->nev) // Ha a sz�ml�l� a nagyobb
	{
		for(i=2;i<=sqrt((double)this->szam);i++)	// menjen kett�t�l a  sz�m gy�k�ig �s n�zze meg, hogy oszthat�-e a sz�ml�l� �s a nevez� ismindkett� vele
		{
			if (this->szam%i==0 && this->nev%i==0)a=i;
		}
	}
	else					// Ha a nevez� nagyobb, akkor pepit�ban:
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