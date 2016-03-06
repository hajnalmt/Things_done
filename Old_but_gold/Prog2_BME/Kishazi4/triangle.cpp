#include <stdio.h>
#include "triangle.h"
#include <cmath>

Triangle::Triangle(double a,double b,double c, Data d){						// A három adattal dolgozó konstruktor
	if (d==eset_1)
	{															// Ha három oldal adott:
		this->a_=a;
		this->b_=b;
		this->c_=c;
	}
	if (d==eset_2)
	{															//Ha két oldal és a közbezárt szög adott
		if (c<=0 || c >= 180)
		{
			this->a_=this->b_=this->c_=1;
		}							//Hibakezelés ha nem lenne jó egy adat
		this->a_=fabs(a);
		this->b_=fabs(b);
		this->c_=sqrt(a*a+b*b-2*a*b*cos(c/180*M_PI));						//Koszinusz tétellela harmadik oldal
	}																		//Meg kell említeni, hogy mindig radiánban dolgoznak  szögfüggvények, és átalakításra szorulnak egy picit ezért van a végén M_PI/180
	if(d==eset_3){															//Ha egy oldal és a rajta fekvõ két szög adott
		if(c<=0||c>=180||b<=0||b>=180||(c+b)>=180)this->a_=this->b_=this->c_=1;//Hibakezelés, ha nem lenne jó egy adat
		this->a_=fabs(a);
		this->b_=sin(b*M_PI/180)/sin((180-b-c)*M_PI/180)*fabs(a);
		this->c_=sin(c*M_PI/180)/sin((180-b-c)*M_PI/180)*fabs(a);
	}
	if(a_+b_<=c_||a_+c_<=b_||b_+c_<=a_){										//Ha nem teljesül a háromszög-egyenlõtlenség az egyoldalú szabályos háromszöget adja ki
		this->a_=this->b_=this->c_=1;
	}
}

void Triangle::print(){														//A koszinusz-tétellel kiíró függvény
	printf("A haromszog adatai:\na=%f\tb=%f\tc=%f\nalpha=%f\tbeta=%f\tgamma=%f\n\n",a_,b_,c_,acos((b_*b_+c_*c_-a_*a_)/(2*b_*c_))*180/M_PI,acos((a_*a_+c_*c_-b_*b_)/(2*a_*c_))*180/M_PI,acos((a_*a_+b_*b_-c_*c_)/(2*a_*b_))*180/M_PI);
}

double Triangle::area(){													// Héron képlettel a terület függvény
	double s=(a_+b_+c_)/2;
	return sqrt(s*(s-a_)*(s-b_)*(s-c_));
}

double Triangle::circle(){													// A kerület függvény
	return a_+b_+c_;
}

double Triangle::right_angle(){												//Ha a határokon belül vannak a szögek akkor legyen derékszögû és térjen vissza 1-el. Ha nem 0-val.
	if (Triangle::get_alpha()<90.5&&Triangle::get_alpha()>89.5){return 1;}
	if (Triangle::get_beta()<90.5&&Triangle::get_beta()>89.5){return 1;}
	if (Triangle::get_gamma()<90.5&&Triangle::get_gamma()>89.5){return 1;}
	else return 0;
}
