#ifndef TOMB_HIBA_H
#define TOMB_HIBA_H

#include <exception>
#include <iostream>

class tomb_hiba : public std::exception {
private:
	int ErrCode;
	std::string Reason;
public:
	tomb_hiba(char* reason, int errCode = 0) {
		this->ErrCode = errCode;
		this->Reason += reason;
	}
	const char* what() const throw() {
		return this->Reason.c_str();
	}
	int getErrCode() const {
		return ErrCode;
	}
	virtual ~tomb_hiba() throw() {
	}
};

#endif