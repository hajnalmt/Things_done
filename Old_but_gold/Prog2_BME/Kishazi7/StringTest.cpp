#include <iostream>
#include "String.h"

using namespace std;
using namespace MyStr;


int main()
{
	/*Str s1;								// def. ctor
	Str s2="Hello World!";				// cstring ctor
	Str s3('=',20);						// sorminta

	s3.print(cout);cout<<endl;			//========
	s1.print(cout);
	cout<<endl;
	s3.print(cout);cout<<endl;			//========
	s2.print(cout);
	cout<<endl<<endl;

	s3.print(cout);cout<<endl;			//========
	Str::copy(s1,s2);
	s1.print(cout);
	cout<<endl;
	s2.print(cout);
	cout<<endl;
	s3.print(cout);cout<<endl;			//========

	if(Str::compare(s1,s2))
		cout<<"s1 and s2 are identical!"<<endl;
	if(Str::compare(s1,s3))
		cout<<"s1 and s3 are identical!"<<endl;

	s3.print(cout);cout<<endl;			//========
	Str s4=Str::concatenate(s2,Str(" Nothing")); //copy ctor is hivodik!
	s4.print(cout);
	cout<<endl;
	s3.print(cout);cout<<endl; //========

//Ezt csak akkor, ha minden mas jol mukodik
//    Str::append(s4," interesting"); // automatikus konverzio char* ctor hivast okoz

	for(unsigned int i=0; i<s4.getLength();i++) //getChar() tesztje
	{
		cout<<s4.getChar(i);
	}
	cout<<endl;
	s3.print(cout);cout<<endl; //========

	char* pStr;
	pStr=s4.cStr();		// A fv foglal memoriat! (stilus/feladat kerdese)
	cout<<pStr<<endl;	// A cout ismeri a cstringet is...
	delete[] pStr;		// Felszabaditjuk a buffert, hisz nem "rendes" Str objektum.

	return 0;
}*/
	char* t="kortek";
    Str s1 ("almak");		
    Str s2(t);				
    Str s3('+',20);		//Egy sorminta
    Str s4(s1);

    if(s1<s2)cout<<"s1 kisebb, mint s2";
    else cout<<"s1 nem kisebb, mint s2"<< endl;  //s1 kisebb, mint s2

	cout<<"s1:";
    s1.print(cout);
    cout<<endl;                             //almak
    cout<<"s2:";
    s2.print(cout);
    cout<<endl;                             //kortek
    cout<<"s3:";s3.print(cout);cout<<endl;                             //++++++++++++++++++++
    cout<<"s4:";s4.print(cout);cout<<endl;                             //almak
	s3.print(cout);cout<<endl; 

    s4=s2;
    cout<<"s4:";s4.print(cout);cout<<endl;                             //kortek

    if(s4==s2)
        cout<<"s4 es s2 megegyeznek";
    else cout<<"op == rossz";cout<<endl;                             //s4 es s2 megyegyeznek
	s3.print(cout);cout<<endl; 

    if(s2!=s1)
        cout<<"op != ok";
    else cout<<"op != rossz";cout<<endl;                             //op != ok
    s3.print(cout);cout<<endl;

    if(s2>=s1)
        cout<<"op >= ok";
    else cout<<"op >=hibas";
    cout<<endl;                             //op >= ok
    s3.print(cout);cout<<endl;

    if(s4<s4)
    cout<<"op < rossz";
    else cout<<"op < ok";                   //op < ok
    cout<<endl;
    s3.print(cout);cout<<endl;

    //s1:almak, s2:kortek, s3:20*=, s4:kortek

    s4=s1+' '+s2;
    s4.print(cout);cout<<endl;               //almak kortek

    s4+=s1;
    s4.print(cout);cout<<endl;              //almak kortek almak

    s4+='B'; cout<<endl;                    //almak kortek almakB 

    Str s5=~s4;
    s4.print(cout);cout<<endl;              //almak kortek almakB
	s5.print(cout);cout<<endl;              //ALMAK KORTEK ALMAKb
    cout<<"+++";

    s4=~s5;
    s4.print(cout);cout<<endl;              //almak kortek almakB +++

    unsigned int lenght=s4.getLength();     //19
    cout<<lenght;

    char d=s4.getChar(9);
    cout<<d;                                //t
    cout<<endl;

    char *tomb=s4.cStr();                   //almak kortek almak
    cout<<tomb<<endl;

    unsigned int place='t'/s4;
    cout<<place<<endl;                      //10
	return 0;
}

