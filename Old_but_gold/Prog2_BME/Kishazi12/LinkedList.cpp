#include <iostream>
#include "Lista.h"

using namespace std;
using namespace LinkedList;

int main()
{
	SList<int> intList;

	POSITION p1=intList.push_back(1);
	POSITION p2=intList.push_back(2);
	POSITION p3=intList.push_back(3);
	POSITION p4=intList.push_back(4);
	POSITION p5=intList.push_back(5);

	for(POSITION p=intList.start(); p != 0 ;p=intList.next(p))										//A != operátort end()-re nem tudta értelmezni így helyette 0-t írtam
	{
		cout<<intList.getAt(p)<<endl;
	}

	cout<<"Remove: "<<intList.remove(p2)<<endl;
	cout<<"Remove: "<<intList.remove(p1)<<endl;
	cout<<"Remove: "<<intList.remove(p5)<<endl;
	cout<<"Remove: "<<intList.remove(p3)<<endl;
	
	intList.insert_after(p4,10);
	intList.insert_after(p4,11);

	for(POSITION p2=intList.start();p2 != 0; p2= intList.next(p2))									//A != operátort end()-re nem tudta értelmezni így helyette 0-t írtam
	{
		cout<<intList.getAt(p2)<<endl;
	}
        
        cout << "iteratorral:\n";
        for(SList<int>::iterator it = intList.begin(); it != intList.end(); ++it)
            cout << *it << "  ";
        cout << endl;
		
        SList<int> intList_2 = intList.reverse();													//A reverse függvény értelmetlen lenne másoló kontruktor használata nélkül
																									//A konstokat pedig iterátor használat céljából távolítottuk el.
		cout << "A forditott lista: ";
		for(SList<int>::iterator it = intList_2.begin(); it != intList_2.end(); ++it)
            cout << *it << "  ";
        cout << endl;

		SList<int> intList_3 = intList.concatenate(intList_2);										//A concatenate tesztelése
		cout << "Az eredeti es a forditott lista osszefuzese: ";
		for(SList<int>::iterator it = intList_3.begin(); it != intList_3.end(); ++it)
            cout << *it << "  ";
        cout << endl;

		getchar();
	return 0;
}

