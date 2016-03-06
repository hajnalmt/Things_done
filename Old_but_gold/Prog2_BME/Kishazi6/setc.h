#ifndef SET_H
#define SET_H

#include <stdio.h>
#include <iostream>

class Set
{
	int elementNum;
	int* pData;
public:
	// �res halmazt inicializ�l.
	Set();

	// Egy m�sik halmaz adatai alapj�n inicializ�l. M�soljuk a dinamikus adattagokat is!
	Set(const Set &theOther);

	// Destruktor: felszabad�tja a dinamikus adattagokat.
	~Set();

	// Besz�r egy elemet a halmazba. Ha a halmaz megtelt hamissal t�r vissza.
	// Ha m�r bent van az elem a halmazba, akkor nem adja hozz� m�gegyszer,
	// de igazzal t�r vissza, hiszen hiba nem t�rt�nt, benne van az elem a halmazban.
	bool insert(int element);

	// Elt�vol�t egy adott elemet a halmazb�l. Pl. kiveszi az 5-�t a halmazb�l.
	// Ha nincs benne az elem a halmazban, hib�val t�r vissza.
	bool remove(int element);

	// Megn�zi, hogy egy elem benne van-e a halmazban. Ha igen, igazzal t�r vissza, am�gy hamissal.
	bool isElement(int element) const;

	// Ki�r�ti a halmazt.
	void empty();

	// Ki�rja a halmaz elemeit sz�k�zzel elv�lasztva. Az elso �s az utols� elem ut�n soremel�st rak.
	void print() const;


	// HF
	Set(int n);
	Set(const int *t, int elemszam);
	Set& operator=(const Set& set);
	Set& operator+(int n)
	{
		this->insert(n);
		return *this;
	};
	Set& operator-(int n)
	{
		this->remove(n);
		return *this;
	};
	Set operator+(const Set& set) const;
	Set operator*(const Set& set) const;
	Set operator-(const Set& set) const;
	bool operator==(const Set& set) const;
	friend std::ostream& operator<<(std::ostream& stream, const Set& set);
	friend void DiagPrint(Set *set);
	friend void DiagPrint(const Set& set);
	friend bool operator/(int n, const Set& set);
	bool operator!=(const Set& set) const
	{
		return !(*this == set);
	};
};
#endif /* SET_H */
	