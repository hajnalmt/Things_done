#include <iostream> //stdio.h helyett
#include "rac.h"

int main()
{
    Rac a(6,8);
    Rac b = Rac(3,4); // igy is lehet
    Rac c(1);         // 1
    Rac d;            // 0
    DiagPrint(a);     // NEM tagfv.    ki: 6 / 8 vagy. 3 / 4
    b.Print();        // ki: 3 / 4
    DiagPrint(c);     // ki: 1 / 1
    std::cout << b.Rac2dbl() << '\n'; // == printf("%f\n",b.Rac2dbl())   ki: 0.75
    c=b*b;
    DiagPrint(c);     // ki: 9 / 16
    c/=3;             // ez egy Rac operator/=(int) fv
    DiagPrint(c);     // ki: 3 / 16
    c/=b;             // ez egy Rac operator/=(Rac) fv, NEM azonos az elozovel
    DiagPrint(c);     // ki: 1 / 4, vagy bovitett alakja
    c.operator /=(b); // igy is lehet hivni, de nem igy szoktuk
    DiagPrint(c);     // ki: 1 / 3, vagy bovitett alakja
    std::cout << (a==b ? "azonos\n" : "kulonbozo\n");  // ki: azonos. NE valos ertekeket hasonlitsunk.
    c/=(b); 
    DiagPrint(~c);    // ki: 9 / 4, vagy ...
    DiagPrint(c);     // ki: 4 / 9, vagy ...
                      //ide meg tehetsz kodot tovabbi operatoraid tesztelesehez
	getchar(); // Ezt szeretem a végére rakni ^^
    return 0;
}