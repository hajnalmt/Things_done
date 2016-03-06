#include <iostream>

#include "halmaz.h"
#include "vector.h"

int main() {
	Vector<Halmaz<int>> t;
	t.Insert(0, Halmaz<int>());
	int a[] = {1, 3, 5, 7, 9, 10};
	t.Insert(1, Halmaz<int>(a, 6));
	int b[] = {0, 2, 4, 6, 8, 10};
	t.Insert(2, Halmaz<int>(b, 6));
	t.Insert(3, t[1] + t[2]);
	t.Insert(4, t[1] * t[2]);
	std::cout << t;
	getchar();
    return 0;
}