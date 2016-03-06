#include "komplex.h"
#include <iostream>
#include <stdio.h>
void komplex::print()const //A kiíró függvény (kitérve arra az esetre is ha az imaginárius negatív lenne)
{
	im>=0?printf("\n%f+%fi\n",re,im):printf("\n%f%fi\n",re,im);
}

komplex operator - (const komplex & a, const komplex & b)		// A kétoperandusú kivonás
{
	komplex e ( a.re-b.re, a.im-b.im);
		return e;
}

komplex & operator -=(komplex  & a, const komplex & b)			//A -= kivonás
{
	a=a-b;
	return a;
}

komplex operator -(const komplex & a)									// Az egyoperandusú kivonás		
{
	komplex e(-a.re,-a.im);
	return e;
}