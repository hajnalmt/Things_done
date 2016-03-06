#include <iostream>
#include "halmaz.h"

bool operator/(int n, const Halmaz & halmaz)
{
	for(int i=0;i<halmaz.GetElnum();i++)
	{
		if (n==halmaz.GetData(i))return true;
	}
	return false;
};

int main()
{
    Halmaz a;														// []
    Halmaz b(3);													// [3]
    Halmaz c(b);													// [3]
    b.beszur(5);													// [3,5]
    std::cout<<b;													// 3,5
    a.beszur(5);													// [5]
    a.beszur(3);													// [5,3]
    c=a;
    b=b;
    DiagPrint(a);													//ref
    DiagPrint(&b);													//ptr
    DiagPrint(c); 
    std::cout << (c==b ? "azonos\n" : "kulonbozo\n");				// ki: azonos. 
    a=a+4;															// [5,3,4]
    int v[6]={6,5,6,4,4,5};
    Halmaz d(v,6);													// [6,5,4]
    c=a*d;
    b=a+d;
    std::cout<<"c:"<<c<<" b:"<<b;									// c:5,4 b:5,3,4,6
    b=b-5;															//[3,4,6]
    std::cout<<5/b<<5/c;											// 0 1
    b=a=c;
    //ide meg tehetsz kodot tovabbi operatoraid tesztelesehez
    return 0;
}