#include "ractomb.h"

void Ractomb::berak(const Rac mit, int hova) {
	if (hova < 0)
		throw tomb_hiba("Negativ index");
	// Az új hossz kiszámítása attól függöen, hogy hova akarunk beszúrni: ha a tömb belsejébe, vagy pontosan a tömb végére szúrunk be, akkor egyel nagyobb mint az akt. méret, egyébként pedig az indexnek megfelelő (index + 1)
	int nLength = hova + 1 > this->length + 1 ? hova + 1 : this->length + 1;
	Rac* nData = new Rac[nLength];
	// Elemek másolása az ideiglenes tömbbe (az eredeti méretig, vagy a beszúrandó indexig: attól függően, hogy melyik a kisebb)
	for (int i = 0; i < (hova + 1 < this->length ? hova + 1 : this->length); i++)
		nData[i] = this->data[i];
	nData[hova] = mit;
	// A beszúrandó index utáni elemek másolása (ha van)
	for (int i = hova + 1; i < this->length + 1; i++)
		nData[i] = this->data[i - 1];
	delete[] this->data;
	this->data = nData;
	this->length = nLength;
}
Rac Ractomb::kivesz(int honnan) {
	if (honnan < 0 || honnan >= this->length)
		throw tomb_hiba("Index nem megfelelo");
	int nLength = this->length - 1;
	Rac* nData = new Rac[nLength];
	Rac result = this->data[honnan];
	// Elemek másolása az ideiglenes tömbbe (a kivevendő indexig)
	for (int i = 0; i < honnan; i++)
		nData[i] = this->data[i];
	// A kivevendő index utáni elemek másolása (ha van)
	for (int i = honnan; i < this->length - 1; i++)
		nData[i] = this->data[i + 1];
	delete[] this->data;
	this->data = nData;
	this->length = nLength;
	return result;
}