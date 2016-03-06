#include <stdio.h>
#include "triangle.h"
#include <math.h>

void Right_angle(Triangle a){													//A derékszög ellenõrzõ függvény
	if(a.right_angle())printf("Derekszogu\n");
	else printf("Nem derekszogu\n");
}

void printer(Triangle a){														// A kiíró függvény a szorgalmiba
	printf("a=%f\tb=%f\tc=%f\nalpha=%f\tbeta=%f\tgamma=%f\n",a.get_a(),a.get_b(),a.get_c(),a.get_alpha(),a.get_beta(),a.get_gamma());
	printf("\tTerulete:%f\n\tKerulete:%f\n\t",a.area(),a.circle());
	Right_angle(a);
}


int main(){																		// A main függvény melyben az összes esetre tesztelek
	Triangle r1;
	Triangle r2(3,4,5,eset_1);
	Triangle r3(5,12,90,eset_2);
	Triangle r4(4,75,60,eset_3);
	Triangle r5(4.5,3,10,eset_1);
	Triangle r6(5,6,190,eset_2);
	Triangle r7(4,100,100,eset_3);
	printf("Az adatok az egyes esetekben:");									//Írjuk ki az egyes adatokat!
	r1.print();		
	r2.print();
	r3.print();
	r4.print();
	r5.print();
	r6.print();
	r7.print();
	printf("Az elso negy haromszog egyeb tulajdonsagai:\n");					// A nem hibás esetek egyéb tulajdonsgait írjuk ki!
	printf("r1:\n\tTerulete:%f\n\tKerulete:%f\n\t",r1.area(),r1.circle());
	Right_angle(r1);
	printf("r2:\n\tTerulete:%f\n\tKerulete:%f\n\t",r2.area(),r2.circle());
	Right_angle(r2);
	printf("r3:\n\tTerulete:%f\n\tKerulete:%f\n\t",r3.area(),r3.circle());
	Right_angle(r3);
	printf("r4:\n\tTerulete:%f\n\tKerulete:%f\n\t",r4.area(),r4.circle());
	Right_angle(r4);
	printf("A szorgalmi fuggveny eredmenye:\n\n");								// A kiíró függvény meghívása
	printer(r2);
	return 0;
}
