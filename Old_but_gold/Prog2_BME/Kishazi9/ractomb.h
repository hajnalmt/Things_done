#ifndef RACTOMB_H
#define RACTOMB_H

#include <exception>

#include "rac.h"
#include "tomb_hiba.h"

class Ractomb {
private:
	Rac* data;
	int length;
public:
	Ractomb() {
		this->data = new Rac[0];
		this->length = 0;
	}
	Ractomb(const Ractomb& ractomb) {
		this->data = new Rac[ractomb.length];
		for (int i = 0; i < ractomb.length; i++)
			this->data[i] = ractomb.data[i];
		this->length = ractomb.length;
	}
	void Print() const {
		for (int i = 0; i < this->length; i++)
			this->data[i].Print();
	}
	void berak(const Rac mit, int hova);
	void berak(const Rac mit) {
		this->berak(mit, this->length);
	}
	Rac kivesz(int honnan);
	Rac kivesz() {
		return this->kivesz(this->length - 1);
	}
	bool operator==(const Ractomb& ractomb) const {
		if (this->length != ractomb.length)
			return false;
		for (int i = 0; i < this->length; i++)
			if (!(this->data[i] == ractomb.data[i]))
				return false;
		return true;
	}
	bool operator!=(const Ractomb& ractomb) const {
		return !(*this == ractomb);
	}
	Rac& operator[](int idx) {
		if (idx < 0 || idx > this->length)
			throw std::out_of_range("Index nem megfelelo");
		if (idx == this->length)
			this->berak(Rac());
		return this->data[idx];
	}
	const Rac& operator[](int idx) const {
		if (idx < 0 || idx >= this->length)
			throw std::out_of_range("Index nem megfelelo");
		return this->data[idx];
	}
	Rac osszeg() const {
		Rac result;
		for (int i = 0; i < this->length; i++)
			result += this->data[i];
		return result;
	}
	~Ractomb() {
		delete[] this->data;
	}
	Ractomb& operator=(const Ractomb& ractomb) {
		if (this != &ractomb) {
			delete[] this->data;
			this->data = new Rac[ractomb.length];
			for (int i = 0; i < ractomb.length; i++)
				this->data[i] = ractomb.data[i];
			this->length = ractomb.length;
		}
		return *this;
	}
};

#endif