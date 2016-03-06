#include <iostream>
#ifndef STRING_H
#define STRING_H

namespace MyStr
{
	class Str
	{
	private:
		unsigned int length;					// A karakterek aktualis szama
		char *data;								// A dinamikus memoriaterulet cime
	public:

		Str();									// Default ctor
		Str(const Str & TheOther);				// Copy ctor
		Str(char c);							// így egy karakterű  sringet is megtudunk adni
		Str(const char *a);						// Egy hagyomanyos '\0' vegu stringet varo ctor
		Str(char c, unsigned int db);			// pl. 'x',5 => xxxxx
		~Str();									// dtor
		char* cStr()const;
		
		unsigned int getLength()const{return this->length;};
		char getChar(unsigned int pos)const{if (pos>=0)return this->data[pos];else return '0';};			//Ervenytelen pozicional 0-t ad! 
		
		void print(std::ostream& os);

		// --- Statikus fuggvenyek. Ezek ket stringen vegeznek muveletet. ---
		/*static Str concatenate(Str string1, Str string2);				//masolva veszi at
		static bool compare(Str &string1, Str &string2);				//ref-kent
		static void copy(Str& string1, Str string2);					//masolva veszi at
		static void Str::append(Str & string1, Str & string2);*/			//ref-kent

		//Operátorok
		Str operator =(const Str &TO);
		bool operator ==(const Str &TO)const;
		bool operator !=(const Str &TO)const;
		bool operator<(const Str& TO)const;
		bool operator >=(const Str &TO)const;
		Str operator +(const Str &TO)const;
		Str operator +=(const Str &TO);
		Str operator +(const char a)const;
		Str operator +=(const char a);
		Str operator ~()const;

		friend std::ostream& operator<<(std::ostream& stream, const Str& s);
		friend unsigned int operator /(const char b, const Str &s);
	};
}
#endif /* STRING_H */
