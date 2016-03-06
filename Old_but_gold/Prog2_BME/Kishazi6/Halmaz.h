#include <iostream>
#ifndef HALMAZ_H
#define HALMAZ_H

class Halmaz{
private:
	int elementNum;
	int *pData;
public:
	Halmaz();						  //Üres halmazt inicializál	
	Halmaz (const Halmaz &theOther);  //Másik halmaz alapján inicializál a dinamikus adattagokat is másoljuk!
	~Halmaz();						  //Destruktor felszabadítja a dinamikus adattagokat		
	Halmaz(int a);
	Halmaz(const int*t, int elemszam);
	bool beszur(int element);
	bool remove(int element);
	bool isElement(int element) const;

	Halmaz & operator=(const Halmaz & halmaz);			//Operátorok
	Halmaz operator+(int n);
	Halmaz operator-(int n);
	Halmaz operator+(const Halmaz & halmaz) const;
	Halmaz operator*(const Halmaz & halmaz) const;
	Halmaz operator-(const Halmaz & halmaz) const;
	bool operator==(const Halmaz & halmaz) const;
	bool operator!=(const Halmaz & halmaz) const;
	int GetElnum()const{return this->elementNum;};			//elemszámot visszaadó getter
	int GetData(int idx)const{if(idx>=this->elementNum)return -1;return this->pData[idx];};//A megfelelő elemet visszaadó getter
	void empty();
	void print() const;
	friend void DiagPrint(Halmaz * halmaz);
	friend void DiagPrint(const Halmaz & halmaz);
	friend std::ostream & operator<<(std::ostream & stream, const Halmaz & halmaz);			// A halmaz kiíró <<  operátor 
};
#endif //HALMAZ_H