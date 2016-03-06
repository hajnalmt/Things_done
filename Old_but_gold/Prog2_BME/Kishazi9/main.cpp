#include <iostream>
#include <exception>

#include "rac.h"
#include "ractomb.h"
#include "tomb_hiba.h"

using namespace std;

int main() {
	// Standard hibamentes működés tesztelése:
	Ractomb r_defconst;							// default konstruktor teszt
	r_defconst.Print();							// üres
	cout<<"--"<<endl;
	Ractomb r_copyconst(r_defconst);			// copy konstruktor teszt #1 (üres)
	r_copyconst.Print();						// üres
	cout<<"--"<<endl;
	r_copyconst.berak(Rac(1,2), 0);				// berak teszt #1 (üres)
	r_copyconst.Print();						// 1/2
	cout<<"--"<<endl;
	r_copyconst.berak(Rac(1,3), 0);				// berak teszt #2 (előre)
	r_copyconst.Print();						// 1/3, 1/2
	cout<<"--"<<endl;
	r_copyconst.berak(Rac(1,4), 1);				// berak teszt #3 (középre)
	r_copyconst.Print();						// 1/3, 1/4, 1/2
	cout<<"--"<<endl;
	r_copyconst.berak(Rac(1,5), 5);				// berak teszt #4 (hátra)
	r_copyconst.Print();						// 1/3, 1/4, 1/2, 0/1, 0/1, 1/5
	cout<<"--"<<endl;
	r_copyconst.berak(Rac(1,6));				// berak teszt #5 (1 paraméterrel)
	r_copyconst.Print();						// 1/3, 1/4, 1/2, 0/1, 0/1, 1/5, 1/6
	cout<<"--"<<endl;
	Ractomb r_copyconst2(r_copyconst);			// copy kontruktor teszt #2 (nem üres)
	r_copyconst2.Print();						// 1/3, 1/4, 1/2, 0/1, 0/1, 1/5, 1/6
	cout<<"--"<<endl;
	r_copyconst2.kivesz(0).Print();				// kivesz teszt #1 (elölről)
	cout<<"--"<<endl;							// 1/3
	r_copyconst2.Print();						// 1/4, 1/2, 0/1, 0/1, 1/5, 1/6
	cout<<"--"<<endl;
	r_copyconst2.kivesz(2).Print();				// kivesz teszt #2 (középről)
	cout<<"--"<<endl;							// 0/1
	r_copyconst2.Print();						// 1/4, 1/2, 0/1, 1/5, 1/6
	cout<<"--"<<endl;
	r_copyconst2.kivesz(4).Print();				// kivesz teszt #3 (végéről)
	cout<<"--"<<endl;							// 1/6
	r_copyconst2.Print();						// 1/4, 1/2, 0/1, 1/5
	cout<<"--"<<endl;
	r_copyconst2.kivesz().Print();				// kivesz teszt #4 (paraméter nélkül)
	cout<<"--"<<endl;							// 1/5
	r_copyconst2.Print();						// 1/4, 1/2, 0/1
	cout<<"--"<<endl;
	cout<<(r_copyconst==r_copyconst2)<<endl;	// operator== teszt #1 (nem egyenlők)
	cout<<"--"<<endl;							// 0

	cout<<(r_copyconst==r_copyconst)<<endl;		// operator== teszt #2 (egyenlők)
	cout<<"--"<<endl;							// 1

	cout<<(r_copyconst!=r_copyconst2)<<endl;	// operator!= teszt #1 (nem egyenlők)
	cout<<"--"<<endl;							// 1

	cout<<(r_copyconst!=r_copyconst)<<endl;		// operator!= teszt #2 (egyenlők)
	cout<<"--"<<endl;							// 0

	r_copyconst2[3] = Rac(1,7);					// operator[] teszt #1 (nem const)
	r_copyconst2.Print();						// 1/4, 1/2, 0/1, 1/7
	cout<<"--"<<endl;
	const Ractomb r_const(r_copyconst2);
	r_copyconst2[0].Print();					// operator[] teszt #2 (const)
	cout<<"--"<<endl;							// 1/4

	// Hibák:
	try {
		Ractomb r_extest;
		//r_extest.berak(Rac(), -1);			// berak: negatív index
		r_extest.berak(Rac());
		r_extest.berak(Rac());
		//r_extest.kivesz(-1);					// kivesz: negatív index
		//r_extest.kivesz(2);					// kivesz: túl nagy index
		//r_extest[-1];							// operator[]: negatív index
		//r_extest[3];							// operator[]: túl nagy index
		const Ractomb r_extest2(r_extest);
		//r_extest2[-1];						// operator[]: negatív index
		//r_extest2[2];							// operator[]: túl nagy index
		int a = 0;
	}
	catch (tomb_hiba hiba) {
		cout<<"tomb_hiba: "<<hiba.what()<<endl;
	}
	catch (out_of_range hiba) {
		cout<<"out_of_range: "<<hiba.what()<<endl;
	}
	catch (...) {
		cout<<"Vegervenyesen valami elveszett!"<<endl;
	}
	getchar();
	return 0;
}
