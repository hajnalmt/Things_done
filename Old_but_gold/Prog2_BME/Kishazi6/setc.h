#ifndef SET_H
#define SET_H

#include <stdio.h>
#include <iostream>

class Set
{
	int elementNum;
	int* pData;
public:
	// Üres halmazt inicializál.
	Set();

	// Egy másik halmaz adatai alapján inicializál. Másoljuk a dinamikus adattagokat is!
	Set(const Set &theOther);

	// Destruktor: felszabadítja a dinamikus adattagokat.
	~Set();

	// Beszúr egy elemet a halmazba. Ha a halmaz megtelt hamissal tér vissza.
	// Ha már bent van az elem a halmazba, akkor nem adja hozzá mégegyszer,
	// de igazzal tér vissza, hiszen hiba nem történt, benne van az elem a halmazban.
	bool insert(int element);

	// Eltávolít egy adott elemet a halmazból. Pl. kiveszi az 5-öt a halmazból.
	// Ha nincs benne az elem a halmazban, hibával tér vissza.
	bool remove(int element);

	// Megnézi, hogy egy elem benne van-e a halmazban. Ha igen, igazzal tér vissza, amúgy hamissal.
	bool isElement(int element) const;

	// Kiüríti a halmazt.
	void empty();

	// Kiírja a halmaz elemeit szóközzel elválasztva. Az elso és az utolsó elem után soremelést rak.
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
	