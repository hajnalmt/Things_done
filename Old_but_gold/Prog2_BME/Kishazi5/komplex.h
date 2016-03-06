#include <iostream>
#ifndef KOMPLEX_H
#define KOMPLEX_H

class komplex{
public:
	double re, im;
    komplex(double a=0, double b=0)			// Emiatt a konstrukto miatt tudunk egy esetleges double �rt�ket is hozz�adni egy komplex sz�mohoz
        { this->re=a;this->im=b;}
    void print()const;
    komplex operator +(const komplex &t0)const
            {
				komplex e(re+t0.re, im+t0.im);
                return e;
            }
   /*komplex osszead(const komplex &t0)const // az els� const hogy a param�tert ne tudjam megv�ltoztatni, a m�sik, hogy a v�g�n a thisest ne
            {
                komplex e(re+t0.re, im+t0.im);
                return e;
            }*/
    komplex & operator +=(const komplex &t0)
            {
                this->re+=t0.re;this->im+=t0.im;
                return *this;
            }
    komplex operator *(const komplex &t0)const				// A * kisz�m�t�sa a megfelel� matematikai ismeretekkel
            {
                komplex e(re*t0.re-im*t0.im,re*t0.im+im*t0.re);
                return e;
            }
    komplex & operator *=(const komplex &t0)				// A *= kisz�m�t�sa a megfelel� matematikai ismeretekkel
            {
                double a=this->re,b=this->im;
                this->re=a*t0.re-b*im*t0.im;
                this->im=a*t0.im+b*t0.re;
                return *this;
            }
    komplex & hozzaad (const komplex dt0)				//nincs const mert itt azt szeretn�m, hogy megv�ltozzon
            { this->re+=dt0.re;this->im+=dt0.im;
            return *this;
            }
	komplex & operator ! ()								// A konjug�l�s (ezt nem lehet const� tenni, mert megv�ltoztatom a this �rt�k�t
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
