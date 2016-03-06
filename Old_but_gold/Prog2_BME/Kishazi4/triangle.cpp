#include <stdio.h>
#include "triangle.h"
#include <cmath>

Triangle::Triangle(double a,double b,double c, Data d){						// A h�rom adattal dolgoz� konstruktor
	if (d==eset_1)
	{															// Ha h�rom oldal adott:
		this->a_=a;
		this->b_=b;
		this->c_=c;
	}
	if (d==eset_2)
	{															//Ha k�t oldal �s a k�zbez�rt sz�g adott
		if (c<=0 || c >= 180)
		{
			this->a_=this->b_=this->c_=1;
		}							//Hibakezel�s ha nem lenne j� egy adat
		this->a_=fabs(a);
		this->b_=fabs(b);
		this->c_=sqrt(a*a+b*b-2*a*b*cos(c/180*M_PI));						//Koszinusz t�tellela harmadik oldal
	}																		//Meg kell eml�teni, hogy mindig radi�nban dolgoznak  sz�gf�ggv�nyek, �s �talak�t�sra szorulnak egy picit ez�rt van a v�g�n M_PI/180
	if(d==eset_3){															//Ha egy oldal �s a rajta fekv� k�t sz�g adott
		if(c<=0||c>=180||b<=0||b>=180||(c+b)>=180)this->a_=this->b_=this->c_=1;//Hibakezel�s, ha nem lenne j� egy adat
		this->a_=fabs(a);
		this->b_=sin(b*M_PI/180)/sin((180-b-c)*M_PI/180)*fabs(a);
		this->c_=sin(c*M_PI/180)/sin((180-b-c)*M_PI/180)*fabs(a);
	}
	if(a_+b_<=c_||a_+c_<=b_||b_+c_<=a_){										//Ha nem teljes�l a h�romsz�g-egyenl�tlens�g az egyoldal� szab�lyos h�romsz�get adja ki
		this->a_=this->b_=this->c_=1;
	}
}

void Triangle::print(){														//A koszinusz-t�tellel ki�r� f�ggv�ny
	printf("A haromszog adatai:\na=%f\tb=%f\tc=%f\nalpha=%f\tbeta=%f\tgamma=%f\n\n",a_,b_,c_,acos((b_*b_+c_*c_-a_*a_)/(2*b_*c_))*180/M_PI,acos((a_*a_+c_*c_-b_*b_)/(2*a_*c_))*180/M_PI,acos((a_*a_+b_*b_-c_*c_)/(2*a_*b_))*180/M_PI);
}

double Triangle::area(){													// H�ron k�plettel a ter�let f�ggv�ny
	double s=(a_+b_+c_)/2;
	return sqrt(s*(s-a_)*(s-b_)*(s-c_));
}

double Triangle::circle(){													// A ker�let f�ggv�ny
	return a_+b_+c_;
}

double Triangle::right_angle(){												//Ha a hat�rokon bel�l vannak a sz�gek akkor legyen der�ksz�g� �s t�rjen vissza 1-el. Ha nem 0-val.
	if (Triangle::get_alpha()<90.5&&Triangle::get_alpha()>89.5){return 1;}
	if (Triangle::get_beta()<90.5&&Triangle::get_beta()>89.5){return 1;}
	if (Triangle::get_gamma()<90.5&&Triangle::get_gamma()>89.5){return 1;}
	else return 0;
}
