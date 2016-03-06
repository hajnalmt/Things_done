#include <iostream>
#include <stdio.h>
#include "string.h"

using namespace std;
using namespace TheUltimateString;


int main()
{
   String str1("Hello Moneypenny.");
   printf(str1);
   cout<<endl;
   str1=3D"My name is Bond. ";
   str1+=3D"James Bond.";
   printf("\n%s\n",(const char*)str1);

   if(str1=3D=3D(String)"My name is Bond. James Bond."
               &&!(str1!=3D(String)"My name is Bond. James Bond."))
   {
       cout<<"Oh, Mr. Bond!"<<endl;
   }
   getchar();
   return 0;
}
