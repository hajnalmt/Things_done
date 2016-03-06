#ifndef STRING_H
#define STRING_H
#include <iostream>

namespace TheUltimateString
{
   class String
   {
       // A karakterek aktu=C3=A1lis sz=C3=A1ma:
       unsigned int elementsNum;

       // A karaktereket tartalmaz=C3=B3 mem=C3=B3riater=C3=BCletre mutat=
=C3=B3 pointer:
       char*pData;
   public:
       // Argumentum n=C3=A9lk=C3=BCli konstruktor:
       String(){
       this->elementsNum=3D0;
       this->pData=3Dnew char[1];this->pData=3D&#39;\0&#39;;};

       // M=C3=A1sol=C3=B3 konstruktor:
       String(const String&string)
       {
           this->elementsNum=3Dstring.elementsNum;
           pData=3Dnew char [this->elementsNum+1];
           for (unsigned int i=3D0;i<=3Dthis->elementsNum;i++){this->pData=
[i]=3Dstring.pData[i];};
       }

       // Egy NULL v=C3=A9gu sztringet v=C3=A1r=C3=B3 konverzi=C3=B3s kons=
truktor
       // Ez felel a char*-> String konverzi=C3=B3=C3=A9rt
       String(const char* str)
       {
           unsigned int i;
           for(i=3D0;str[i]!=3D&#39;\0&#39;;i++);
           this->elementsNum=3Di;
           pData=3Dnew char [this->elementsNum+1];
           for(i=3D0;i<=3Dthis->elementsNum;i++)pData[i]=3Dstr[i];
       };

       // Egy karaktert =C3=A9s egy elojel n=C3=A9lk=C3=BCli eg=C3=A9szet =
(times) v=C3=A1r=C3=B3 konstruktor,
       // amely times darab c karakterrel inicializ=C3=A1lja a stringet:
       //String(char c, unsigned int times);

       // A destruktor:
       ~String(){delete[]pData;}

       // Visszat=C3=A9r a sztring hossz=C3=A1val
       unsigned int getLength()const{return elementsNum;}

       // Ki=C3=ADrja a sztringet a megadott kimeneti adatfolyamba (a &#39=
;cout&#39; ostream t=C3=ADpus=C3=BA):
       void print(std::ostream& os)
       {
           os<<this->pData<<std::endl;
       }

       // Visszaadja a megadott poz=C3=ADci=C3=B3ban l=C3=A9vo karaktert, =
egy=C3=A9bk=C3=A9nt null=C3=A1t:
       char& operator[](unsigned int pos)
       {
           if (pos<0||pos>this->elementsNum+1)return this->pData[0];
           return this->pData[pos];
       };

       // Konstans objektumokat is le szeretn=C3=A9nk k=C3=A9rdezni
       const char& operator[](unsigned int pos)const{
           if (pos<0||pos>this->elementsNum+1)return this->pData[0];
           return this->pData[pos];
       };

       // =C3=96sszefuz k=C3=A9t Stringet
       String operator+(const String& theOther)const
       {
           String e;
           e.pData=3D new char[this->elementsNum+theOther.elementsNum+1];
           e.elementsNum=3Dthis->elementsNum+theOther.elementsNum;
           for (unsigned int i=3D0;i<=3Dthis->elementsNum;i++)e[i]=3Dthis-=
>pData[i];
           for (unsigned int i=3D0;i<=3DtheOther.elementsNum;i++)e.pData[t=
his->elementsNum+i]=3DtheOther.pData[i];
           return e;
       };

       const String &operator+=3D(const String &theOther)
       {
           String e;
           char* k=3Dnew char[this->elementsNum+theOther.elementsNum+1];
           for (unsigned int i=3D0;i<this->elementsNum;i++)k[i]=3Dthis->pD=
ata[i];
           for (unsigned int i=3D0;i<=3DtheOther.elementsNum;i++)k[i+this-=
>elementsNum]=3DtheOther.pData[i];
           e.pData=3Dk;
           e.elementsNum=3Dthis->elementsNum+theOther.elementsNum;
           *this=3De;
           return *this;
       };

       const String &operator=3D(const String& theOther){
       delete [] this->pData;
       this->pData=3Dnew char [theOther.elementsNum+1];
       for(unsigned int i=3D0;i<=3DtheOther.elementsNum;i++)this->pData[i]=
=3DtheOther.pData[i];
       this->elementsNum=3DtheOther.elementsNum;
       return *this;
       }

       bool operator=3D=3D(const String& theOther)const
       {
           if(this->elementsNum !=3D theOther.elementsNum)return false;
           else for(unsigned int i=3D0;i<=3Dthis->elementsNum;i++){if(this=
->pData[i]!=3DtheOther.pData[i]){return false;}}
           return true;
       };
       bool operator!=3D(const String& theOther)const
       {
           if (this=3D=3D& theOther)return false;
           return true;
       };

       // Visszaad egy  csak olvashat=C3=B3 hozz=C3=A1f=C3=A9r=C3=A9st a s=
tringhez
       operator const char*()const{
       return this->pData;
       };

       // --- Statikus f=C3=BCggv=C3=A9nyek. Ezek k=C3=A9t stringen v=C3=
=A9geznek muveletet. ---

       /*// =C3=96sszefuz k=C3=A9t sztringet, =C3=A9s visszat=C3=A9r vele:
       static String concatenate(const String& string1, const String& stri=
ng2);

       // =C3=96sszehasonl=C3=ADt k=C3=A9t sztringet:
       static bool compare(const String& string1, const String& string2);

       // A m=C3=A1sodik sztringet az elso sztringbe m=C3=A1solja:
       static void copy(String& string1, const String &string2);*/
   };
}
#endif /* STRING_H */