#include <iostream>
#ifndef RAC_H
#define RAC_H

class Rac{
	private:
		int szam,nev;
		void egyszerusit(); 
	public:
		Rac(int a=0, int b=1){this->szam=a;this->nev=b;}// E segítségével 0, vagy egy paraméterrel is meg lehet adni a  törtet.
		//A +,-,*,/ operátorok
		Rac operator +(const Rac &b)const
		{
			Rac a(szam*b.nev+b.szam*nev,nev*b.nev);
			a.egyszerusit();
			return a;
		}
		Rac operator -(const Rac &b)const
		{
			Rac a(szam*b.nev-b.szam*nev,nev*b.nev);
			a.egyszerusit();
			return a;
		}
		Rac operator *(const Rac &b)const
		{
			Rac a(szam*b.szam,nev*b.nev);
			a.egyszerusit();
			return a;
		}
		Rac operator /(const Rac &b)const
		{
			Rac a(szam*b.nev,nev*b.szam);
			a.egyszerusit();
			return a;
		}
		//= jellel:
		Rac & operator +=(const Rac &b)
		{
			this->szam=this->szam*b.nev+b.szam*this->nev;
			this->nev=this->nev*b.nev;
			this->egyszerusit();
			return *this;
		}
		Rac & operator -=(const Rac &b)
		{
			this->szam=this->szam*b.nev-b.szam*this->nev;
			this->nev=this->nev*b.nev;
			this->egyszerusit();
			return *this;
		}
		Rac & operator *=(const Rac &b)
		{
			this->szam=this->szam*b.szam;
			this->nev=this->nev*b.nev;
			this->egyszerusit();
			return *this;
		}
		Rac & operator /=(const Rac &b)
		{
			this->szam=this->szam*b.nev;
			this->nev=this->nev*b.szam;
			this->egyszerusit();
			return *this;
		}
		//reciprokképzõ operátor:
		Rac operator ~()
		{
			Rac a(this->nev,this->szam);
			return a;
		}
		bool operator==(Rac a) //Egy bool igaz/hamis összehasonlító operátorra van szükségünk
		{
			Rac b=*this, c=a;
			b.egyszerusit();
			c.egyszerusit();
			if(b.szam==c.szam||b.nev==c.nev)return true;
			else return false;
		}
		// A megfelelõ függvényeink pedig:
		void Print();
		double Rac2dbl();
		friend void DiagPrint(Rac a);// talán elegánsabb, mint a get_szam(){return this->szam;}-os megoldás
};
#endif //RAC_H