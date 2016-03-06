#include <iostream>
#include "halmaz.h"
#include "Vector.h"

int main()
{
	Vector <Halmaz<int>>t;
	Halmaz <int> h1;
	Halmaz <int> h2(6);
	h2=h2+8+9+10;
	int k[]={5,3,6,8,11,12,10};
	Halmaz <int> h3=(k,6);
	Halmaz <int> h4=h1*h2;
	Halmaz <int> h5=h1+h2;
	t=t+h1+h2+h4+h5;
	std::cout << t;
	getchar();
	return 0;
}