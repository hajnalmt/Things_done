#include <cmath>
#ifndef TRIANGLE_H
#define TRIANGLE_H
#define M_PI 3.14159265358979323846

typedef enum Data{										//Az esetek megk�l�nb�ztet�s�re az enum f�ggv�ny
	eset_1, eset_2, eset_3};

class Triangle {
private:												//csak az oldalak a priv�t v�ltoz�k
	double a_, b_, c_;
public:													
	Triangle(double a=1,double b=1,double c=1, Data d=eset_1);		//A h�rom megadott adattaldolgoz� konstruktor
	double get_a(){										//Az oldalakat is lek�rdezhet�v� tessz�k
		return a_;}
	double get_b(){
		return b_;}
	double get_c(){
		return c_;}
	double get_alpha(){									//Ahogyan a sz�geket is koszinusz t�tellel
		return acos((b_*b_+c_*c_-a_*a_)/(2*b_*c_))*180/M_PI;}
	double get_beta(){
		return acos((a_*a_+c_*c_-b_*b_)/(2*a_*c_))*180/M_PI;}
	double get_gamma(){
		return acos((a_*a_+b_*b_-c_*c_)/(2*a_*b_))*180/M_PI;}
	void print();										//Az �sszes alapadatot ki�r� f�ggv�ny
	double area();										//A ter�let kisz�mol� f�ggv�ny
	double circle();									//A ker�let kisz�mol� f�ggv�ny
	double right_angle();								//A der�ksz�get ellen�rz� f�ggv�ny
};

#endif