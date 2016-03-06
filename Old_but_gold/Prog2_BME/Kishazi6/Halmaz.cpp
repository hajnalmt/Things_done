#include "halmaz.h"
#define MAX_ELE 5

#include <iostream>

Halmaz::Halmaz()
{
    this->elementNum=0;					//Állítsuk az elemszámot nullára
    this->pData=new int[0];				//Foglaljunk le egy nulla nagyságú területet a dinamikus adattagnak
};

Halmaz::Halmaz(const Halmaz &theOther)
{
    this->elementNum=theOther.elementNum;				//Állítsuk be az elemszámot
    this->pData=new int [this->elementNum];				//Foglaljuk le a megfelelő területet
    for(int i=0; i<this->elementNum; i++)				//Egy for ciklussal másoljuk át az elemeket
    {
        this->pData[i]=theOther.pData[i];
    }
};

Halmaz::~Halmaz()
{
    delete[] this->pData;
};

Halmaz::Halmaz(int elem){
this->pData=new int [1];
this->pData[0]=elem;
this->elementNum=1;
};

Halmaz::Halmaz(const int *t, const int elemszam)
{
	this->elementNum = 0;
	this->pData = new int[0];
	for (int i = 0; i < elemszam; i++)
		this->beszur(t[i]);
};

bool Halmaz::beszur(int element)					// Az elembeszúró függvény
{
    if(isElement(element))							// Nézzük meg, hogy eleme-e már a halmaznak
        return true;

    if(this->elementNum==MAX_ELE)					// Nézzük meg elértük-e már a max elemszámot
        return false;

    int *tmp=new int[this->elementNum+1];			// Az ideiglenes pointer

    for(int i=0; i<this->elementNum; i++)			// Másoljuk át az elemeket
        tmp[i]=this->pData[i];

    tmp[this->elementNum]=element;					// Rakjuk bele az újat
    delete[] this->pData;							// Szabadítsuk fel a pDatát
    this->pData=tmp;
    this->elementNum++;								// Növeljük az elemszámot eggyel

    return true;
};

bool Halmaz::isElement(int element) const				//Az elemellenőrző segédfüggvény
{
    for(int i=0; i<this->elementNum; i++)
    {
        if(this->pData[i]==element)
            return true;
    }
    return false;

};

bool Halmaz::remove(int element)				// Az elemtörlő függvény
{
    if(!isElement(element))						// Hogyha nem elem akkor hamissal tér vissza
        return false;

    int *tmp=new int[this->elementNum-1];		//A segédtömb
    for(int i=0, j=0; i<this->elementNum; i++)	//Másoljuk át a for cikussal a kellő elemeket
        if(this->pData[i] !=element)
            tmp[j++]=this->pData[i];

    delete[] this->pData;						//szabadítsuk fel pDatát
    this->pData=tmp;							//állítsuk pDatát a segétömbre
	/*this->elementNum--;*/
    return true;

};

void Halmaz::empty()
{
    delete[] this->pData;		//Szabadítsuk fel a pDatát!
    this->elementNum=0;			//Állítsuk az elemszámot nullára
    this->pData=new int [0];	//Foglaljunk le egy nulla nagyságú terület pDatának

};

void Halmaz::print() const					// A halmaz elemeit kiíró függvéény
{
    for(int i=0; i<this->elementNum; i++)
        std::cout<<this->pData[i]<<',';
	std::cout<<'\n';
};

void DiagPrint(Halmaz * halmaz)
{
	halmaz->print();
};

void DiagPrint(const Halmaz & halmaz)
{
	halmaz.print();
};

Halmaz & Halmaz::operator=(const Halmaz & halmaz) // az egyenlőség operátor(átmásolja a másik halmaz összes elemét)
{
	if (halmaz != *this)
	{
		delete[] this->pData;						// A kitakartás
		this->elementNum=halmaz.elementNum;
	    this->pData=new int [this->elementNum];

	    for(int i=0; i<this->elementNum; i++)
		{
			this->pData[i]=halmaz.pData[i];
		}
	}
	return *this;
};

Halmaz Halmaz::operator+(int n)
{
	Halmaz result=*this;	
	result.beszur(n);
	return result;
};

Halmaz Halmaz::operator-(int n)
{
	Halmaz result=*this;
	result.remove(n);
	return result;
};

Halmaz Halmaz::operator+(const Halmaz & halmaz) const		//Az unió képző operátor
{
	Halmaz result=*this;
	for(int i=0;i<halmaz.elementNum;i++)					//Szúrjuk bele az eredmény halmazba az elemeket (A hibakezelés a beszur függvényben megtrörténik, így egyből be tudjuk szúrni)
	{
		result.beszur(halmaz.pData[i]);
	}
	return result;
};

Halmaz Halmaz::operator*(const Halmaz & halmaz) const		// A metszet képző operátor
{
	Halmaz result;
	for(int i=0;i<halmaz.elementNum;i++)						// Menjünk végig az egyik halmazon
		if(this->isElement(halmaz.pData[i]))				// Ha eleme a this halmaznak akkor beszúrhatjuk
			result.beszur(halmaz.pData[i]);	
	return result;
};

Halmaz Halmaz::operator-(const Halmaz & halmaz) const		// A különbség képző operátor
{
	Halmaz result=*this;
	for(int i=0;i<halmaz.elementNum;i++)
	{
		result.remove(halmaz.pData[i]);						// a remove fg-ben megtörténik a hibakezelés
	}
	return result;
}

bool Halmaz::operator==(const Halmaz & halmaz) const				// Az egyenlőség ellenőrző  operátor
{
	if (this->elementNum != halmaz.elementNum)							//Ha nem egyezik az elemszám biztos nem igaz az állítás
		return false;
	for(int i=0;i<this->elementNum;i++)								//végig megyünk az egyik halmazon, és megnézzük, hogy az adott elem eleme-e a másiknak
	{
		if(!halmaz.isElement(this->pData[i]))return false; 
	}
	return true;
};

bool Halmaz::operator!=(const Halmaz & halmaz)const					//Felhasználtuk, tehát kell != operátort is írni
{
	if (this->elementNum != halmaz.elementNum)						//Ha nem egyezik az elemszám biztos igaz az állítás
		return true;
	for(int i=0;i<this->elementNum;i++)								//végig megyünk az egyik halmazon, és megnézzük, hogy az adott elem eleme-e a másiknak
	{
		if(!halmaz.isElement(this->pData[i]))return true; 
	}
	return false;
};

std::ostream & operator<<(std::ostream & stream, const Halmaz & halmaz)		//A << operátor megvalósítása (a standard kiementre ír)
{
	for (int i = 0; i < halmaz.elementNum; i++)			// Végig megyünk a halmazon és ha nem az utolsó elem akkor kiírjuk és ,-t rakunk
		if (i == halmaz.elementNum - 1)
			stream << halmaz.pData[i] << std::endl;		// A végére egy \n :)
		else
			stream << halmaz.pData[i] << ',';
	return stream;
};
