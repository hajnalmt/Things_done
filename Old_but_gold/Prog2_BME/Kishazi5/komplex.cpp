#include "komplex.h"
#include <iostream>
#include <stdio.h>
void komplex::print()const //A ki�r� f�ggv�ny (kit�rve arra az esetre is ha az imagin�rius negat�v lenne)
{
	im>=0?printf("\n%f+%fi\n",re,im):printf("\n%f%fi\n",re,im);
}

komplex operator - (const komplex & a, const komplex & b)		// A k�toperandus� kivon�s
{
	komplex e ( a.re-b.re, a.im-b.im);
		return e;
}

komplex & operator -=(komplex  & a, const komplex & b)			//A -= kivon�s
{
	a=a-b;
	return a;
}

komplex operator -(const komplex & a)									// Az egyoperandus� kivon�s		
{
	komplex e(-a.re,-a.im);
	return e;
}