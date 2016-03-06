#include <iostream>
#ifndef KOMPLEX_H
#define KOMPLEX_H

class komplex{
public:
	double re, im;
    komplex(double a=0, double b=0)			// Emiatt a konstrukto miatt tudunk egy esetleges double értéket is hozzáadni egy komplex számohoz
        { this->re=a;this->im=b;}
    void print()const;
    komplex operator +(const komplex &t0)const
            {
				komplex e(re+t0.re, im+t0.im);
                return e;
            }
   /*komplex osszead(const komplex &t0)const // az elsõ const hogy a paramétert ne tudjam megváltoztatni, a másik, hogy a végén a thisest ne
            {
                komplex e(re+t0.re, im+t0.im);
                return e;
            }*/
    komplex & operator +=(const komplex &t0)
            {
                this->re+=t0.re;this->im+=t0.im;
                return *this;
            }
    komplex operator *(const komplex &t0)const				// A * kiszámítása a megfelelõ matematikai ismeretekkel
            {
                komplex e(re*t0.re-im*t0.im,re*t0.im+im*t0.re);
                return e;
            }
    komplex & operator *=(const komplex &t0)				// A *= kiszámítása a megfelelõ matematikai ismeretekkel
            {
                double a=this->re,b=this->im;
                this->re=a*t0.re-b*im*t0.im;
                this->im=a*t0.im+b*t0.re;
                return *this;
            }
    komplex & hozzaad (const komplex dt0)				//nincs const mert itt azt szeretném, hogy megváltozzon
            { this->re+=dt0.re;this->im+=dt0.im;
            return *this;
            }
	komplex & operator ! ()								// A konjugálás (ezt nem lehet constá tenni, mert megváltoztatom a this értékét
		{
			this->re=this->re;
			this->im= - this->im;
			return *this;
		}
};
	komplex & operator -=(komplex  & a, const komplex & b);	
	komplex operator -(const komplex & a);
	komplex operator - (const komplex & a, const komplex & b);
#endif //KOMPLEX_H
