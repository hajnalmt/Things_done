#include <iostream>
#include "String.h"


namespace MyStr {

Str::Str()
{
	this->length=0;
	this->data=new char [0];
	std::cout<<"DefC"<< '\n';			// A speciális karakter a DefC
};

Str::Str(const Str& TheOther)
{
	this->length=TheOther.length;
	this->data=new char [this->length];
	for(unsigned int i=0;i<this->length;i++)
	this->data[i]=TheOther.data[i];
	std::cout<<"CpyC:"<<this->data<<'\n';					//A speciális karakter a CpyC
};

Str::Str(char c)
{
	this->length=1;
	this->data=new char [1];
	this->data[0]=c;
	std::cout<<"OneCharC:"<<this->data<< '\n';							//A speciális karakter a OneCharC
};

Str::Str(const char *c)
{
	unsigned int i=0;
	while(c[i])i++;
	this->length=i;
	this->data=new char [i];
	for (i=0;i<this->length;i++)this->data[i]=c[i];
	std::cout<<"CharC:"<<this->data<<'\n';								//A speciális karakter a CharC
};

Str::Str(char c, unsigned int db)
{
	this->length=db;
	this->data=new char [db];
	for(unsigned int i=0;i<db;i++)this->data[i]=c;
	std::cout<<"sokCharC:"<<this->data<<'\n';								//A speciális karakter a sokCharC
};

Str::~Str()
{
	this->length=0;
	delete [] this->data;
	std::cout<<"defCharC:"<<this->data<<'\n';								//A speciális karakter a defCharC
};

char *Str::cStr()const
{
	char *c;
	c=new char [this->length+1];									// Az objektum tartalmanak megfelelo helyet foglal, oda masolja, es '\0'-val lezarja.
	for(unsigned int i=0;i<this->length;i++)						// Mivel osztalyon kivuli objektumot ad vissza, a HIVO koteles tarolni a cimet,, majd feszabadítani a memóriát
	{
		c[i]=this->data[i];
	}
	c[this->length]='\0';											// A \0 a végre, hogy cstring legyen
	return c;
};

void Str::print(std::ostream& os)
{
	//for(unsigned int i=0; i<this->length; i++)
	os<<this->data/*[i]*/;											// Az ostream stringeket is ki tud írni, tehát elhagyható a for ciklus
};

/*static Str Str::concatenate(Str string1, Str string2)
{
	unsigned int s1=string1.getLength(), s2=string2.getLength(), sum=s1+s2;
    char *tmp=new char [sum];
    for(unsigned int i=0; i<s1; i++)
        tmp[i]=string1.getChar(i);
    for(unsigned int j=0, i=s1; j<s2; j++,i++)
        tmp[i]=string2.getChar(j);

    Str Tmp(tmp);
    return Tmp;

};

static bool Str::compare(Str &string1, Str &string2)
{
	if (string1.length!=string2.length)return false;
	for (int i=0;i<string1.length;i++)if(string1.data[i]!=string2.data[i])return false;
	return true;
};

static void Str::copy(Str& string1, Str string2)
{
	delete [] string1.data;
    string1.data=new char [string2.getLength()];
    string1.length=string2.getLength();
    for(unsigned int i=0; i<string1.length; i++)
    string1.data[i]=string2.getChar(i);
};

static void Str::append(Str & string1, Str & string2)
{
		char *tmp=new char [string1.length+string2.length];
		unsigned int i;
        for(unsigned int i=0; i<string1.length; i++)
            tmp[i]=string1.data[i];

        for (i=0; i<string2.length; i++)
            tmp[i+string1.length]=string2.data[j];
        if(string1.data)
            delete [] string1.data;
        string1.data=tmp;
        string1.length+=string2.length;
};*/

//OPERÁTOROK::

Str Str::operator =(const Str &TO)
{
	delete[] this->data;
	this->length=TO.length;
	this->data=new char [this->length];
	for(unsigned int i=0;i<this->length;i++)
	this->data[i]=TO.data[i];
	return *this;

};
bool Str::operator ==(const Str &TO)const
{
	if(this->length==TO.length)
        {
            for(unsigned int i=0; i<this->length; i++)if(this->data[i]!=TO.data[i])return false;
            return true;
        }
        return false;
};
bool Str::operator !=(const Str &TO)const
{
	if(this==&TO)return false;
	else return true;
};
bool Str::operator<(const Str& TO)const					//Az ábcben kisebb szerint választ
{
	int kisebb=this->length<TO.length?this->length:TO.length;

	for(int i=0;i<kisebb;i++){
            if(this->data[i]!=TO.data[i]){
                if(this->data[i]<TO.data[i])
                    return true;
                else
                    return false;
            }
        }
        return(this->length<TO.length);
};
bool Str::operator >=(const Str &TO)const
{
	if(this<&TO)return false;
	else return true;
};
Str Str::operator +(const Str &TO)const
{
    char *tmp=new char [this->length+TO.length];
    for(unsigned int i=0; i<this->length; i++)
        tmp[i]=this->getChar(i);
    for(unsigned int j=0, i=this->length; j<TO.length; j++,i++)
        tmp[i]=TO.getChar(j);

    Str Tmp(tmp);
    return Tmp;
};
Str Str::operator +=(const Str &TO)
{
	 char *tmp=new char [this->length+TO.length];

     for(unsigned int i=0; i<this->length; i++)
            tmp[i]=this->data[i];

     for (unsigned int j=0; j<TO.length; j++)
            tmp[j+this->length]=TO.data[j];
	 if(this->data)
        delete [] this->data;
        this->data=tmp;
        this->length+=TO.length;
        return *this;
};
Str Str::operator +(const char a)const
{
	char *tmp=new char [this->length+1];
	for(unsigned int i=0; i<this->length; i++)
	tmp[i]=this->data[i];
	tmp[this->length]=a;
	Str Tmp(tmp);
    Tmp.length=this->length+1;
	return Tmp;
};
Str Str::operator +=(const char a)
{
	this->data=new char[this->length+1];
	this->data[this->length]=a;
	return *this;
};
Str Str::operator ~()const
{
	Str Tmp(*this);

	for(unsigned int i=0; i<Tmp.length; i++)
        {
			if (isupper(Tmp.data[i]))

                Tmp.data[i] = tolower(Tmp.data[i]);
            else

                Tmp.data[i] = toupper(Tmp.data[i]);
		}
        return Tmp;
};

std::ostream& operator<<(std::ostream& stream, const Str& s)
{
	for(unsigned int i=0; i<s.getLength(); i++)
	stream << s.getChar(i);
	return stream;
};

unsigned int operator /(const char b, const Str &s)
{
	for(unsigned int i=0; i<s.getLength(); i++)
        if(b==s.getChar(i))
            return i+1;
    return -1;

};}