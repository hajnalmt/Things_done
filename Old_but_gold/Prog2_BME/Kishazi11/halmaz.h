#include <iostream>
#ifndef HALMAZ_H
#define HALMAZ_H
#define MAX_ELE 5

template<class T>

class Halmaz{
private:
	int elementNum;
	T *pData;
	template <class X> friend std::ostream & operator << (std::ostream& stream,const Halmaz<X> & halmaz);
public:
	Halmaz()						//Üres halmazt inicializál	
	{
		this->elementNum=0;					//Állítsuk az elemszámot nullára
		this->pData=new T [0];				//Foglaljunk le egy nulla nagyságú területet a dinamikus adattagnak
	};										 //Üres halmazt inicializál	
	Halmaz (const Halmaz <T> &theOther)  //Másik halmaz alapján inicializál a dinamikus adattagokat is másoljuk!
	{
		this->elementNum=theOther.elementNum;				//Állítsuk be az elemszámot
		this->pData=new T [this->elementNum];				//Foglaljuk le a megfelelő területet
		for(int i=0; i<this->elementNum; i++)				//Egy for ciklussal másoljuk át az elemeket
		{
			this->pData[i]=theOther.pData[i];
		}
	};
	~Halmaz()						  //Destruktor felszabadítja a dinamikus adattagokat		
	{
		delete[] this->pData;
	};
	Halmaz<T>(T a)
	{
		this->pData=new T [1];
		this->pData[0]=a;
		this->elementNum=1;
	};
	Halmaz<T>(const T *t, int elemszam)
	{
		this->elementNum = 0;
		this->pData = new T [0];
		for (int i = 0; i < elemszam; i++)
			this->insert(t[i]);
	};
	bool insert(T element)
	{
		if(isElement(element))							// Nézzük meg, hogy eleme-e már a halmaznak
			return true;

		if(this->elementNum==MAX_ELE)					// Nézzük meg elértük-e már a max elemszámot
			return false;

		T *tmp=new T[this->elementNum+1];			// Az ideiglenes pointer

		for(int i=0; i<this->elementNum; i++)			// Másoljuk át az elemeket
			tmp[i]=this->pData[i];

		tmp[this->elementNum]=element;					// Rakjuk bele az újat
		delete[] this->pData;							// Szabadítsuk fel a pDatát
		this->pData=tmp;
		this->elementNum++;								// Növeljük az elemszámot eggyel

		return true;
	};
	bool remove(T element)
	{
		if(!isElement(element))						// Hogyha nem elem akkor hamissal tér vissza
			return false;

		T *tmp=new T[this->elementNum-1];		//A segédtömb
		for(int i=0, j=0; i<this->elementNum; i++)	//Másoljuk át a for cikussal a kellő elemeket
			if(this->pData[i] !=element)
				tmp[j++]=this->pData[i];

		delete[] this->pData;						//szabadítsuk fel pDatát
		this->pData=tmp;							//állítsuk pDatát a segétömbre
		/*this->elementNum--;*/
		return true;
	};
	bool isElement(T element) const
	{
		for(int i=0; i<this->elementNum; i++)
		{
			if(this->pData[i]==element)
				return true;
		}
		return false;
	};
	//Operátorok
	Halmaz<T> & operator=(const Halmaz<T> & halmaz)//az egyenlőség operátor(átmásolja a másik halmaz összes elemét)
	{
		if (halmaz != *this)
		{
			delete[] this->pData;						// A kitakartás
			this->elementNum=halmaz.elementNum;
			this->pData=new T [this->elementNum];

			for(int i=0; i<this->elementNum; i++)
			{
				this->pData[i]=halmaz.pData[i];
			}
		}
	return *this;
	};
	Halmaz<T> operator+(int n)const
	{
		Halmaz result=*this;
		result.insert(n);
		return result;
	}
	Halmaz<T> operator-(int n)const
	{
		Halmaz result=*this;
		result.remove(n);
		return result;
	};
	Halmaz<T> operator+(const Halmaz <T>& halmaz) const		//Az unió képző operátor
	{
		Halmaz result=*this;
			for(int i=0;i<halmaz.elementNum;i++)					//Szúrjuk bele az eredmény halmazba az elemeket (A hibakezelés a insert függvényben megtrörténik, így egyből be tudjuk szúrni)
			{
				result.insert(halmaz.pData[i]);
			}
		return result;
	};
	Halmaz <T>operator*(const Halmaz <T>& halmaz) const		// A metszet képző operátor
	{
		Halmaz result;
		for(int i=0;i<halmaz.elementNum;i++)						// Menjünk végig az egyik halmazon
			if(this->isElement(halmaz.pData[i]))				// Ha eleme a this halmaznak akkor beszúrhatjuk
				result.insert(halmaz.pData[i]);	
		return result;
	};
	Halmaz <T>operator-(const Halmaz <T>& halmaz) const		// A különbség képző operátor
	{
		Halmaz result=*this;
		for(int i=0;i<halmaz.elementNum;i++)
		{
			result.remove(halmaz.pData[i]);						// a remove fg-ben megtörténik a hibakezelés
		}
		return result;
	};
	bool operator==(const Halmaz <T>& halmaz) const				// Az egyenlőség ellenőrző  operátor
	{
		if (this->elementNum != halmaz.elementNum)							//Ha nem egyezik az elemszám biztos nem igaz az állítás
			return false;
		for(int i=0;i<this->elementNum;i++)								//végig megyünk az egyik halmazon, és megnézzük, hogy az adott elem eleme-e a másiknak
		{
			if(!halmaz.isElement(this->pData[i]))return false; 
		}
		return true;
	};
	bool operator!=(const Halmaz <T>& halmaz) const			// Felhasználtuk tehát kell a nem egyenlőség ellenörző
	{
		if (this->elementNum != halmaz.elementNum)						//Ha nem egyezik az elemszám biztos igaz az állítás
			return true;
		for(int i=0;i<this->elementNum;i++)								//végig megyünk az egyik halmazon, és megnézzük, hogy az adott elem eleme-e a másiknak
		{
			if(!halmaz.isElement(this->pData[i]))return true; 
		}
		return false;
	};
	int GetElnum()const{return this->elementNum;};			//elemszámot visszaadó getter
	T GetData(int idx)const{if(idx>=this->elementNum||idx<0)return -1;return this->pData[idx];};//A megfelelő elemet visszaadó getter
	void empty()
	{
		delete[] this->pData;		//Szabadítsuk fel a pDatát!
		this->elementNum=0;			//Állítsuk az elemszámot nullára
		this->pData=new T [0];	//Foglaljunk le egy nulla nagyságú terület pDatának
	};
	void print() const
	{
		for(int i=0; i<this->elementNum; i++)
			std::cout<<this->pData[i]<<',';
		std::cout<<'\n';
	};
	//friend void DiagPrint(Halmaz <T> * halmaz){halmaz->print();};
	//friend void DiagPrint(const Halmaz <T> & halmaz){halmaz.print();};
};
template <class X>  std::ostream & operator << (std::ostream& stream, const Halmaz<X> & halmaz)			// A halmaz kiíró <<  operátor 
	{
		for (int i = 0; i < halmaz.elementNum; i++)			// Végig megyünk a halmazon és ha nem az utolsó elem akkor kiírjuk és ,-t rakunk
			if (i == halmaz.elementNum - 1)
				stream << halmaz.pData[i] << std::endl;		// A végére egy \n :)
			else
				stream << halmaz.pData[i] << ',';
		return stream;
	};
#endif //HALMAZ_H