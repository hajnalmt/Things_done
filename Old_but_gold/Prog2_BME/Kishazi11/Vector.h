#ifndef VECTOR_H_INCLUDED
#define VECTOR_H_INCLUDED
#include <iostream>
#include <cmath>
#include <stdexcept>
#include "limits.h"
// Egy dinamikus tömb osztály
template<class T>

class Vector
{
	// A tömb mérete
	unsigned int elementNum;
	// Az adatokra mutató pointer
	T *pData;

	// Diagnosztikai célú globális kiiratóoperátor
	template <class X> friend std::ostream & operator << (std::ostream& os,const Vector<X> & v);

public:
	// Konstruktorok, destruktor
	Vector() {elementNum=0;pData=NULL;}
	Vector(const Vector<T>& theOther)
	{
        pData=NULL;
        *this=theOther;
    };
	~Vector() {delete[]pData;}

	// Visszatér a tömb méretével.
	T  size()const{return elementNum;}
	// Törli a tömböt
	void clear()
	{
        delete[]pData;
        pData=NULL;
        elementNum=0;
    };
	// Törli a megadott indexu elemet. A 0 és size()-1 közötti indexek érvényesek.
	void erase(unsigned int position)
	{
        if(position>=elementNum)throw std::out_of_range("NAAA");

        if(elementNum==1)
        {
            delete []pData;
            pData=NULL;
            elementNum=0;
            return;
        }

        elementNum--;
        T* pTemp=new T[elementNum];

        for(unsigned int i=0, j=0;i<elementNum+1;i++,j++)
        {
            if(i==position)
            {
                j--;
            }
            else
            {
                pTemp[j]=pData[i];
            }
        }
        delete[] pData;
        pData=pTemp;
    };
	// Visszatér a megadott indexu elemmel, amely módosítható is egyben.
	// A 0 és size()-1 közötti indexek érvényesek.
	T& at(unsigned int position)
	{
        if(position>=elementNum)throw std::out_of_range("NoNo");
        return pData[position];
    };
	// Visszatér a megadott indexu elemmel, amely csak olvasható.
	// A 0 és size()-1 közötti indexek érvényesek. Az int típus esetén nem kellene
	// const referencia, de saját típus esetén igen, lásd házi feladat.
	const T& at(unsigned int position)const
	{
        if(position>=elementNum)throw std::out_of_range("NoNo");
        return pData[position];
    };
	// Beszúr egy elemet a megadott indexu helyre.
	// Ha az index nagyobb, mint a tömb mérete, megnöveli a tömb méretét,
	// és a szükséges új helyeket nullákkal tölti fel.
	bool insert(unsigned int position, T element)
	{
	    if(elementNum==UINT_MAX)
        {
            return false;
        }

        T* pTemp=NULL;
        if(position<elementNum)
        {
            pTemp=new T[elementNum+1];
            for(unsigned int i=0, j=0; i<elementNum;i++,j++)
            {
                if(j==position)
                {
                    pTemp[position]=element;
                    i--;
                }
                else
                {
                    pTemp[j]=pData[i];
                }
		}
		elementNum++;
        }
        else
        {
            pTemp=new T[position+1];
            for(unsigned int i=0;i<position;i++)
            {
                if(i<elementNum)
                {
                    pTemp[i]=pData[i];
                }
                else
                {
                    pTemp[i]=0;
                }
            }
            pTemp[position]=element;
            elementNum=position+1;
        }
        delete[]pData;
        pData=pTemp;
        return true;
    };

	// Operator=
	const Vector& operator= (const Vector<T>& theOther)
    {
        if(this==&theOther)throw std::out_of_range("Nana");
        delete[]pData;
        if(theOther.elementNum==0)
        {
            elementNum=0;
            pData=NULL;
        }
        else
        {
            elementNum=theOther.elementNum;
            pData=new T[elementNum];
            for(unsigned int i=0;i<elementNum;i++)
            {
                pData[i]=theOther.pData[i];
            }
        }
        return *this;
    }
	Vector operator+ (const T & elem)const //Az összeadó operátor
	{
		Vector <T> result=*this;
		result.insert(this->elementNum,elem);
		return result;
	}
	T & operator [](unsigned int position)// Két operator[]. Az at() tagfüggvény operator formában is.
	{
        return at(position);
    };
	const T & operator [](unsigned int position)const
	{
        return at(position);
    };
};


// Diagnosztikai célú kiiratás
template <class X> std::ostream & operator << (std::ostream& os,const Vector<X> & v)
{
	for(unsigned int i=0;i<v.elementNum;i++)
	{
		os<<' '<<v.at(i);
	}
	return os;
};
#endif // VECTOR_H_INCLUDED
