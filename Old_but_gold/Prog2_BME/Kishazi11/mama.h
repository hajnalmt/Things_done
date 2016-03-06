#ifndef MAMA_H
#define MAMA_H

#include <iostream>

template <class T>

class Halmaz {
	T* pData;
	unsigned length;
public:
	Halmaz() {
		this->pData = new T[0];
		this->length = 0;
	}
	Halmaz(const T& t) {
		this->pData = new T[1];
		this->pData[0] = t
		this->length = 1;
	}
	Halmaz(const Halmaz& TO) {
		this->pData = new T[TO.length]
		for (unsigned i; i < TO.length; i++)
			this->pData[i] = TO.pData[i];
		this->length = TO.length;
	}
	Halmaz(const T* t; unsigned length) {
		this->pData = new T[0];
		this->length = 0;
		for(unsigned i = 0; i < length; i++)
			this->Insert(t[i]);
	}
	~Halmaz() {
		delete[] this->pData;
	}
	bool Contains(const T& t) const {
		for (unsigned i; i < this->length; i++)
			if (pData[i]==t) return true;
		return false;
	}
	void Insert(const T& t) {
		if (!this->Contains(t)){
			 T* result;
			result = new T[this->length+1];
			for (unsigned i = 0; i < this->length; i++)
			result[i] = this->pData[i];
			result.pData[this->length] = t;
			delete[] this->pData;
			this->pData = result;
			this->length++;
		};
	}
	void Remove(const T& t) {
		if(if (!this->Contains(t)){
			T* result;
			result = new T[this->length-1];
			for (unsigned i=0,j=0; i < this->length; i++)
				if(pData[i] != t){
					result[j] = pData[i];
					j++;
				}
			delete[] this->pdata;
			this->pData = result;
			this->length--;
		};
	}
	Halmaz& operator=(const Halmaz& TO) {
		if (this != &TO) {
			delete[] this->pData;
			this->pData = new T[TO.length];
			for (unsigned i = 0; i < TO.length; i++)
				this->pData[i] = TO.pData[i];
			this->length = TO.length;
		};
		return *this;
	}
	Halmaz operator+(const T t) const {
		Halmaz result(*this);
		result.Insert(t);
		return result;
	}
	Halmaz operator+(const Halmaz& TO) const {
		Halmaz result(*this);
		for (unsigned i = 0; i < TO.length; i++)
			result.Insert(TO.pData[i]);
		return result;
	}
	Halmaz operator-(const T t) const {
		Halmaz result(*this);
		result.Remove(t);
		return result;
	}
	Halmaz operator-(const Halmaz& TO) const {
		Halmaz result(*this);
		for (unsigned i = 0; i < TO.length; i++)
			this->Remove(TO.pData[i]);
		return result;
	}
	bool operator==(const Halmaz& TO) const {
		if( this->length != TO.length)
			return false;
		for (unsigned i = 0; i < this->length; i++)
			if (!TO.Contains(this->pData[i]))
				return false;
		return true;
	}
	Halmaz operator*(const Halmaz& TO) const {
		Halmaz result();
		for (unsigned i = 0; i < TO.length; i++) 
			if (this->Contains(TO.pData[i]))
				result.Insert(TO.pData[i]);
		return result;
	}
	friend bool operator/(T& t, Halmaz& TO) const {
		return T0.Contains(t);
	}
	friend std::ostream& operator<<(std::ostream& os; const Halmaz& h){
		os << '[';
		for (unsigned i = 0; i < h.length; i++) {
			os << h.pData[i];
			if (i != h.length-1)
				os << ',';
		}
		os << ']';
		return os;
	}
	friend void DiagPrint(const Halmaz &h) {
		std::cout << h << std::endl;
	}
	friend void DiagPrint(const Halmaz* h) {
		Diagprint(&h); 
	}
};


#endif //MAMA_H