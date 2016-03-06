#include <iostream>
#include <cstdio>
#include "halmaz.h"
#include "Vector.h"

int main()
{
	Halmaz <int> h1;
	Halmaz <int> h2(6);
	h2=h2+8+9+10;
	Halmaz <int> h3(0);
	h3=h3+6+5+15+8+10;
	Halmaz <int> h4=h2*h3;
	Halmaz <int> h5=h2+h3;
	Vector <Halmaz<int>>t;
	t.insert(1,h1);
	t.insert(1,h2);
	t.insert(1,h3);
	t.insert(1,h4);
	t.insert(1,h5);
	std::cout << t<<std::endl;
	getchar();
	return 0;
}