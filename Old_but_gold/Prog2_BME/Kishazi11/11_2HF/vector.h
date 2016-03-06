#ifndef VECTOR_H
#define VECTOR_H

#include <iostream>

template<class T>
class Vector {
private:
	T* data;
	unsigned length;
public:
	Vector() {
		this->data = new T[0];
		this->length = 0;
	}
	Vector(const Vector& v) {
		this->data = new T[v.length];
		for (unsigned i = 0; i < v.length; i++)
			this->data[i] = v.data[i];
		this->length = v.length;
	}
	Vector& operator=(const Vector& v) {
		delete[] this->data;
		this->data = new T[v.length];
		for (unsigned i = 0; i < v.length; i++)
			this->data[i] = v.data[i];
		this->length = v.length;
	}
	~Vector() {
		delete[] this->data;
	}
	unsigned Length() const {
		return this->length;
	}
	void Remove(unsigned i) {
		if (i < 0 || i >= this->length)
			throw std::out_of_range("Index was outside the bounds of the array");
		T* nData = new T[this->length - 1];
		for (unsigned j = 0; j < i; j++)
			nData[j] = this->data[j];
		for (unsigned j = i; j < this->length - 1; j++)
			nData[j] = this->data[j + 1];
		delete[] this->data;
		this->data = nData;
		this->length--;
	}
	T& at(unsigned i) {
		if (i < 0 || i >= this->length)
			throw std::out_of_range("Index was outside the bounds of the array");
		return this->data[i];
	}
	const T& at(unsigned i) const {
		if (i < 0 || i >= this->length)
			throw std::out_of_range("Index was outside the bounds of the array");
		return this->data[i];
	}
	void Insert(unsigned i, const T& t) {
		if (i < 0 || i > this->length)
			throw std::out_of_range("Index was outside the bounds of the array");
		T* nData = new T[this->length + 1];
		for (unsigned j = 0; j < i; j++)
			nData[j] = this->data[j];
		nData[i] = t;
		for (unsigned j = i + 1; j < this->length + 1; j++)
			nData[j] = this->data[j - 1];
		delete[] this->data;
		this->data = nData;
		this->length++;
	}
	Vector operator+(const T& t) const {
		Vector result(*this);
		result.Insert(t, result.length);
		return result;
	}
	T& operator[](unsigned i) {
		return this->at(i);
	}
	const T& operator[](unsigned i) const {
		return this->at(i);
	}
	template <class X> friend std::ostream& operator<<(std::ostream& os, const Vector<X>& v);
};

template<class X> std::ostream& operator<<(std::ostream& os, const Vector<X>& v) {
	for (unsigned i = 0; i < v.length; i++)
		os << v[i] << std::endl;
	return os;
};

#endif