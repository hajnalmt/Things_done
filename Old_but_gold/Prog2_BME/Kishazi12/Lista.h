#ifndef LISTA_H
#define LISTA_H
#include <iostream>
#include <stdexcept>

namespace LinkedList {

	typedef void* POSITION;																	//Egy a pozícióra mutató pointer mely bármire mutathat
	template<class T> class SList;															//Előre deklaráljuk a friend miatt

	template<class T>																		//A Listaelement osztály
	class ListElement {
		friend class SList<T>;
		friend class SList<T> :: iterator;													//Hogy az iterátor is elérje a pNextet.
		T data;
		ListElement* pNext;
		void operator=(const ListElement&){}
		ListElement(const ListElement&){}
	public:
		ListElement(const T& data, ListElement* pNext) {
			this->data=data;
			this->pNext=pNext;
		}
		T& getData() {
			return this->data;
		}
		bool operator<(const ListElement& theOther) {
			return (data<theOther.data);
		}
	};


	template <class T>
	class SList {
	private:
		ListElement<T> * pStart;
		void clear(ListElement<T>* pCurrent);												// Segédfüggvény a rekurzív törléshez
		//SList(SList&);																	// kitöröltem a konsot mert arra em működik az iterátor használat
		void operator=(const SList&){};
		static ListElement<T>* endSymbol;
	public:
		class iterator;																		//Elődeklaráció
		SList(SList& theOther);	
		SList() {																			//Létrehoz egy üres listát
			pStart = endSymbol;
		}
		virtual ~SList() {																//A virtuális destruktor
			clear();
		}
		void clear() {
			clear(pStart);
			pStart = endSymbol;
		}
		POSITION start(){
			return reinterpret_cast<POSITION>(pStart);
		}
		T& getAt(POSITION posititon) {        
			ListElement<T>* pElement = reinterpret_cast<ListElement<T>*> (posititon);
			return pElement->data;
		}
		POSITION lend(){
			return endSymbol;
		}
		POSITION previous(const POSITION position) {
			ListElement<T>* tmp = pStart;
			while (tmp != endSymbol && reinterpret_cast<POSITION>(tmp->pNext) != position)
				tmp = tmp->pNext;
			return reinterpret_cast<POSITION>(tmp);	
		}
		POSITION next(POSITION position) {
			return reinterpret_cast<POSITION> ((reinterpret_cast<ListElement<T>*> (position))->pNext);
		}
		POSITION insert_after(POSITION position, const T& element) {
			ListElement<T>* pos = reinterpret_cast<ListElement<T>*> (position);
			ListElement<T>* uj = new ListElement<T> (element, pos->pNext);
			pos->pNext = uj;
			return reinterpret_cast<POSITION> (uj);
		};
		POSITION push_back(const T& element) {
			ListElement<T>** pCurrent;
			for (pCurrent = &pStart; *pCurrent != endSymbol; pCurrent = &((*pCurrent)->pNext));
			*pCurrent=new ListElement<T>(element, endSymbol);
			return reinterpret_cast<POSITION>(*pCurrent);
		}
		T remove(POSITION position) {
			if(!position) throw runtime_error("null ptr in remove");
			ListElement<T>* pPosition = reinterpret_cast<ListElement<T>*> (position);
			if(pPosition == pStart) {
				pStart=pPosition->pNext;
			}
			else
			{
				ListElement<T>* pPrevious = reinterpret_cast<ListElement<T>*> (previous(position));
				pPrevious->pNext=pPosition->pNext;
			}
			T element=pPosition->data;
			delete pPosition;
			return element;
		}
		iterator begin() {
            return iterator(*this);
        }
		iterator end() {
            return iterator();
        }
		SList<T> concatenate(SList<T> & theOther);
		SList<T> reverse();
		class iterator {
		private:
			ListElement<T> *p;																// pointer az akt elemre, és az utolsó utánira
		public:
			iterator() :p(0) {}																// default kontruktor
			iterator(SList& a) : p(a.pStart) {}												// konstruktor SList-rol
			iterator& operator++() {														// növeli az iterátort (pre) ++it
				if (p != 0) p=p->pNext;
				return *this;
			}
			iterator& operator++(int) {														// növeli az iterátort (post) it++ (mindig int kell!)
				iterator &tmp = *this;
				if (p != 0) p=p->pNext;
				return tmp;
			}
			bool operator!=(const iterator &i) {											// összehasonlít
				return(p != i.p);
			}
			T& operator*() {																// indirekció
				if (p != 0) return p->data;
				else throw std::runtime_error("Hibas indirekcio");
			}

			T* operator->() {																// indirekció
				if (p != 0) return p;
				else throw std::runtime_error("Hibas indirekcio");
			}
			bool operator==(const iterator &i) {											//Kellett ez az opearátor is a concatenate függvényhez
				if (this->p == i.p) return true;
				else return false;
			}
		};																					// iterator osztály vége
	};
template <class T> 
ListElement<T>* SList<T> :: endSymbol = 0;
template <class T>
void SList<T> :: clear(ListElement<T>* pCurrent) {
	ListElement<T>* pNext = pCurrent->pNext;
	delete[] pCurrent;
	if(pNext)
		clear(pNext);
}

template<class T>
SList<T> SList<T> :: concatenate(SList<T>& theOther) {										//összefűz két listát
	if (theOther.pStart == endSymbol) return *this;
	if (this->pStart == endSymbol) return theOther;
	SList<T> result;
	SList<T>::iterator it = this->begin();
	result.push_back(*(it));
	while (1) {
		++it;
		if(it == this->end()) break;
		result.push_back(*(it));
	}
	it = theOther.begin();
	result.push_back(*(it));
	while(1) {
		++it;
		if(it == this->end()) break;
		result.push_back(*(it));
	}
	return result;
};
template<class T>
SList<T> SList<T>::reverse() {																	//megfordít egy listát
	SList<T> result;
	SList<T>::iterator iactual= this->end(), iprev= this->begin();
	bool first = true;
	ListElement<T>* prev, *actual;
    while(iactual != begin()) {
        for(SList<T>::iterator it = begin(); it != iactual; ++it) iprev = it;
            actual = new ListElement<T> (*(iprev), 0);
        if (first) {
            result.pStart = actual;
            first = false;
        } 
		else prev->pNext = actual;
        prev = actual;
        iactual = iprev;
    }
	return result;
};
template<class T>
LinkedList::SList<T>::SList(SList<T>& theOther) {
		this->pStart = endSymbol;
		for (SList<T>::iterator it = theOther.begin(); it != theOther.end(); ++it)
			this->push_back(*(it));
};
}
#endif //LISTA_H