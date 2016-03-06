#ifndef STRING_H
#define STRING_H

#include <string>
#include <iostream>

class String {
private:
	char *data;
	unsigned int length;
public:
	String() {
		this->length = 0;
		this->data = new char[this->length + 1];
		this->data[0] = '\0';
	}
	String(char c) {
		this->length = 1;
		this->data = new char[this->length + 1];
		this->data[0] = c;
		this->data[1] = '\0';
	}
	String(const char *string) {
		this->length = strlen(string);
		this->data = new char[this->length + 1];
		strcpy(this->data, string);
	}
	String(const String& string) {
		this->length = string.length;
		this->data = new char[this->length + 1];
		strcpy(this->data, string.data);
	}
	~String() {
		delete[] this->data;
	}
	unsigned int GetLength() const {
		return this->length;
	}
	String& operator=(char c) {
		delete[] this->data;
		this->length = 1;
		this->data = new char[this->length + 1];
		this->data[0] = c;
		this->data[1] = '\0';
		return *this;
	}
	String& operator=(const char *string) {
		delete this->data;
		this->length = strlen(string);
		this->data = new char[this->length + 1];
		strcpy(this->data, string);
		return *this;
	}
	String& operator=(const String& string) {
		delete[] this->data;
		this->length = string.length;
		this->data = new char[this->length + 1];
		strcpy(this->data, string.data);
		return *this;
	}
	bool operator==(char c) const {
		return this->length == 1 && this->data[0] == c;
	}
	bool operator==(const char *string) const {
		return strcmp(this->data, string) == 0;
	}
	bool operator==(const String& string) const {
		return strcmp(this->data, string.data) == 0;
	}
	bool operator!=(char c) const {
		return !((*this)==c);
	}
	bool operator!=(const char *string) const {
		return !((*this)==string);
	}
	bool operator!=(const String& string) const {
		return !((*this)==string);
	}
	String& operator+=(char c) {
		char *tmp = new char[++this->length + 1];
		strcpy(tmp, this->data);
		delete[] this->data;
		this->data = tmp;
		this->data[this->length - 1] = c;
		this->data[this->length] = '\0';
		return *this;
	}
	String& operator+=(const char *string) {
		char *tmp = new char[this->length + strlen(string) + 1];
		strcpy(tmp, this->data);
		this->data = tmp;
		for (unsigned int i = 0; i < strlen(string) + 1; i++)
			this->data[i + this->length] = string[i];
		this->length += strlen(string);
		return *this;
	}
	String& operator+=(const String& string) {
		char *tmp = new char[this->length + string.length + 1];
		strcpy(tmp, this->data);
		this->data = tmp;
		for (unsigned int i = 0; i < string.length + 1; i++)
			this->data[i + this->length] = string.data[i];
		this->length += string.length;
		return *this;
	}
	String operator+(char c) const {
		String result = *this;
		result += c;
		return result;
	}
	String operator+(const char *string) const {
		String result = *this;
		result += string;
		return result;
	}
	String operator+(const String& string) const {
		String result = *this;
		result += string;
		return result;
	}
	char operator[](unsigned int index) const {
		return this->data[index];
	}
	char& operator[](unsigned index) {
		return this->data[index];
	}
	friend bool operator==(char c, const String& string) {
		return string == c;
	}
	friend bool operator==(const char *string1, const String& string2) {
		return string2 == string1;
	}
	friend bool operator!=(char c, const String& string) {
		return string != c;
	}
	friend bool operator!=(const char *string1, const String& string2) {
		return string2 != string1;
	}
	friend String operator+(char c, const String& string) {
		return string + c;
	}
	friend String operator+(char* string1, const String& string2) {
		return string2 + string1;
	}
	friend std::ostream& operator<<(std::ostream& stream, const String& string) {
		return stream << string.data;
	}
};

#endif