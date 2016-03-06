#ifndef RAC_H
#define RAC_H

#include <iostream>

class Rac {
private:
	int szamlalo, nevezo;
	void egyszerusit() {
		int a = this->szamlalo;
		int b = this->nevezo;
		int r = a % b;
		while (r != 0) {
			a = b;
			b = r;
			r = a % b;
		}
		int lnko = b;
		this->szamlalo /= lnko;
		this->nevezo /= lnko;
	}
public:
	Rac(int szamlalo = 0, int nevezo = 1) {
		this->szamlalo = szamlalo;
		this->nevezo = nevezo;
		this->egyszerusit();
	}
	Rac operator+(const Rac& rac) const {
		Rac result(this->szamlalo * rac.nevezo + rac.szamlalo * this->nevezo, this->nevezo * rac.nevezo);
		result.egyszerusit();
		return result;
	}
	Rac operator+(int n) const {
		Rac result(this->szamlalo + this->nevezo * n, this->nevezo);
		result.egyszerusit();
		return result;
	}
	Rac operator-(const Rac& rac) const {
		Rac result(this->szamlalo * rac.nevezo - rac.szamlalo * this->nevezo, this->nevezo * rac.nevezo);
		result.egyszerusit();
		return result;
	}
	Rac operator-(int n) const {
		Rac result(this->szamlalo - this->nevezo * n, this->nevezo);
		result.egyszerusit();
		return result;
	}
	Rac operator*(const Rac& rac) const {
		Rac result(this->szamlalo * rac.szamlalo, this->nevezo * rac.nevezo);
		result.egyszerusit();
		return result;
	}
	Rac operator*(int n) const {
		Rac result(this->szamlalo * n, this->nevezo);
		result.egyszerusit();
		return result;
	}
	Rac operator/(const Rac& rac) const {
		Rac result(this->szamlalo * rac.nevezo, this->nevezo * rac.szamlalo);
		result.egyszerusit();
		return result;
	}
	Rac operator/(int n) const {
		Rac result(this->szamlalo, this->nevezo * n);
		result.egyszerusit();
		return result;
	}
	Rac& operator+=(const Rac& rac) {
		this->szamlalo = this->szamlalo * rac.nevezo + rac.szamlalo * this->nevezo;
		this->nevezo = this->nevezo * rac.nevezo;
		this->egyszerusit();
		return *this;
	}
	Rac& operator+=(int n) {
		this->szamlalo += this->nevezo * n;
		return *this;
	}
	Rac& operator-=(const Rac& rac) {
		this->szamlalo = this->szamlalo * rac.nevezo - rac.szamlalo * this->nevezo;
		this->nevezo = this->nevezo * rac.nevezo;
		this->egyszerusit();
		return *this;
	}
	Rac& operator-=(int n) {
		this->szamlalo -= this->nevezo * n;
		return *this;
	}
	Rac& operator*=(const Rac& rac) {
		this->szamlalo = this->szamlalo * rac.szamlalo;
		this->nevezo = this->nevezo * rac.nevezo;
		this->egyszerusit();
		return *this;
	}
	Rac& operator*=(int n) {
		this->szamlalo *= n;
		return *this;
	}
	Rac& operator/=(const Rac& rac) {
		this->szamlalo = this->szamlalo * rac.nevezo;
		this->nevezo = this->nevezo * rac.szamlalo;
		this->egyszerusit();
		return *this;
	}
	Rac& operator/=(int n) {
		this->szamlalo /= n;
		return *this;
	}
	Rac operator~() const {
		Rac result(this->nevezo, this->szamlalo);
		return result;
	}
	void Print() const {
		std::cout<<this->szamlalo<<" / "<<this->nevezo<<std::endl;
	}
	friend void DiagPrint(const Rac& rac) {
		rac.Print();
	}
	double Rac2dbl() const {
		return this->szamlalo / this->nevezo;
	}
	bool operator==(const Rac& rac) const {
		return this->szamlalo == rac.szamlalo && this->nevezo == rac.nevezo;
	}
	Rac& operator=(const Rac& rac) {
		this->szamlalo = rac.szamlalo;
		this->nevezo = rac.nevezo;
		return *this;
	}
	Rac(const Rac& rac) {
		this->szamlalo = rac.szamlalo;
		this->nevezo = rac.nevezo;
	}
};

#endif