#ifndef HALMAZ_H
#define HALMAZ_H

#include <iostream>

template<class T>
class Halmaz {
private:
	T* data;
	unsigned length;
public:
	Halmaz() {
		this->data = new T[0];
		this->length = 0;
	}
	Halmaz(const T t) {
		this->data = new T[1];
		this->data[0] = t;
		this->length = 1;
	}
	bool Contains(const T& t) const {
		for (unsigned i = 0; i < this->length; i++)
			if (this->data[i] == t)
				return true;
		return false;
	}
	void Insert(const T& t) {
		if (!this->Contains(t)) {
			T* nData = new T[this->length + 1];
			for (unsigned i = 0; i < this->length; i++)
				nData[i] = this->data[i];
			nData[this->length] = t;
			delete[] this->data;
			this->data = nData;
			this->length++;
		}
	}
	void Remove(const T& t) {
		if (this->Contains(t)) {
			T* nData = new T[this->length - 1];
			unsigned i;
			for (i = 0; this->data[i] != t; i++)
				nData[i] = this->data[i];
			for (i = i; i < this->length - 1; i++)
				nData[i] = this->data[i + 1];
			delete[] this->data;
			this->data = nData;
			this->length--;
		}
	}
	Halmaz(const T* data, unsigned length) {
		this->data = new T[0];
		this->length = 0;
		for (unsigned i = 0; i < length; i++)
			this->Insert(data[i]);
	}
	Halmaz(const Halmaz& s) {
		this->data = new T[s.length];
		for (unsigned i = 0; i < s.length; i++)
			this->data[i] = s.data[i];
		this->length = s.length;
	}
	Halmaz& operator=(const Halmaz& s) {
		if (this != &s) {
			delete[] this->data;
			this->data = new T[s.length];
			for (unsigned i = 0; i < s.length; i++)
				this->data[i] = s.data[i];
			this->length = s.length;
		}
		return *this;
	}
	bool operator==(const Halmaz& s) const {
		if (this->length != s.length)
			return false;
		for (unsigned i = 0; i < this->length; i++)
			if (!s.Contains(this->data[i]))
				return false;
		return true;
	}
	Halmaz operator+(const T t) const {
		Halmaz result(*this);
		result.Insert(t);
		return result;
	}
	Halmaz operator*(const Halmaz& s) const {
		Halmaz result;
		for (unsigned i = 0; i < this->length && i < s.length; i++)
			if ((this->length < s.length ? *this : s).Contains((this->length < s.length ? s : *this).data[i]))
				result.Insert(this->data[i]);
		return result;
	}
	Halmaz operator+(const Halmaz& s) const {
		Halmaz result;
		for (unsigned i = 0; i < this->length; i++)
			result.Insert(this->data[i]);
		for (unsigned i = 0; i < s.length; i++)
			result.Insert(s.data[i]);
		return result;
	}
	Halmaz operator-(const T& t) const {
		Halmaz result(*this);
		result.Remove(t);
		return result;
	}
	Halmaz operator-(const Halmaz& s) const {
		Halmaz result(*this);
		for (unsigned i = 0; i < s.length; i++)
			result.Remove(s.data[i]);
		return result;
	}
	~Halmaz() {
		delete[] this->data;
	}
	template <class X>friend bool operator/(const T& t, const Halmaz<X>& s);
	template <class X> friend std::ostream& operator<<(std::ostream& os, const Halmaz<X>& s);
	template <class X> friend void DiagPrint(const Halmaz<X>& s);
	template <class X>friend void DiagPrint(const Halmaz<X>* s);
};
template <class X> std::ostream& operator<<(std::ostream& os, const Halmaz<X>& s) {
	os << '[';
	for (unsigned i = 0; i < s.length; i++)
	{
		os << s.data[i];
		if (i != s.length - 1)
			os << ", ";
	}
	os << ']';
	return os;
}

template <class X> bool operator/(const X& t, const Halmaz<X>& s) {
	return s.Contains(t);
}

template <class X> void DiagPrint(const Halmaz<X>& s) {
	std::cout << s << std::endl;
}

template <class X> void DiagPrint(const Halmaz<X>* s) {
	DiagPrint(*s);
}

#endif