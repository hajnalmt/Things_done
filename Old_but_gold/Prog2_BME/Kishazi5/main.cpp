#include <iostream>
#include "komplex.h"
#include <stdio.h>
#include <iostream>

int main()
{
    komplex a, b(5), c(5,6),d(7,8);// A komplex számaink megadava
    /*printf("A szamaink:\n");
    a.print();
    b.print();
    c.print();
    d.print();
    printf("Az osszeadasok:\n");
    //c=6+a;            // Nem mûködik, mert itt a baloldali operandus határozza meg az összeadás operátor szerepét(itt int)
    //c=a+6;            // van tipus konverzió Ez mûködik.
    //c=(komplex)b+a;   //Így már mûködik
    c=a+b;
    c.print();
    c+=b;
    c.print();
    c=c.hozzaad(b);
    c.print();
    printf("A szorzasok:\n");
    d=b*c;
    d.print();
    d*=b;
    d.print();*/ 
	int n=0;									  //Mindekelőtt nézzük meg a konjugálás egészekre is működik
	komplex i=!n;
	i.print();
	printf("A kivonasok es a konjugalas:\n");	 // A kivonások tesztelését meghagytam :)
	d-=b;
	d.print();
	c=d-b;
	c.print();
	!d;
	d.print();
	-d;
	d.print();
	getchar();									// Egy getchar, hogy meálljon a futás
    return 0;
}

