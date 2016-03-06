#include <cmath>
#ifndef TRIANGLE_H
#define TRIANGLE_H
#define M_PI 3.14159265358979323846

typedef enum Data{										//Az esetek megkülönböztetésére az enum függvény
	eset_1, eset_2, eset_3};

class Triangle {
private:												//csak az oldalak a privát változók
	double a_, b_, c_;
public:													
	Triangle(double a=1,double b=1,double c=1, Data d=eset_1);		//A három megadott adattaldolgozó konstruktor
	double get_a(){										//Az oldalakat is lekérdezhetõvé tesszük
		return a_;}
	double get_b(){
		return b_;}
	double get_c(){
		return c_;}
	double get_alpha(){									//Ahogyan a szögeket is koszinusz tétellel
		return acos((b_*b_+c_*c_-a_*a_)/(2*b_*c_))*180/M_PI;}
	double get_beta(){
		return acos((a_*a_+c_*c_-b_*b_)/(2*a_*c_))*180/M_PI;}
	double get_gamma(){
		return acos((a_*a_+b_*b_-c_*c_)/(2*a_*b_))*180/M_PI;}
	void print();										//Az összes alapadatot kiíró függvény
	double area();										//A terület kiszámoló függvény
	double circle();									//A kerület kiszámoló függvény
	double right_angle();								//A derékszöget ellenörzõ függvény
};

#endif