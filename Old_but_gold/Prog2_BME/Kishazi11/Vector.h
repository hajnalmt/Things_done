#ifndef VECTOR_H_INCLUDED
#define VECTOR_H_INCLUDED
#include <iostream>
#include <cmath>
#include <stdexcept>
#include "limits.h"
// Egy dinamikus t�mb oszt�ly
template<class T>

class Vector
{
	// A t�mb m�rete
	unsigned int elementNum;
	// Az adatokra mutat� pointer
	T *pData;

	// Diagnosztikai c�l� glob�lis kiirat�oper�tor
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

	// Visszat�r a t�mb m�ret�vel.
	T  size()const{return elementNum;}
	// T�rli a t�mb�t
	void clear()
	{
        delete[]pData;
        pData=NULL;
        elementNum=0;
    };
	// T�rli a megadott indexu elemet. A 0 �s size()-1 k�z�tti indexek �rv�nyesek.
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
	// Visszat�r a megadott indexu elemmel, amely m�dos�that� is egyben.
	// A 0 �s size()-1 k�z�tti indexek �rv�nyesek.
	T& at(unsigned int position)
	{
        if(position>=elementNum)throw std::out_of_range("NoNo");
        return pData[position];
    };
	// Visszat�r a megadott indexu elemmel, amely csak olvashat�.
	// A 0 �s size()-1 k�z�tti indexek �rv�nyesek. Az int t�pus eset�n nem kellene
	// const referencia, de saj�t t�pus eset�n igen, l�sd h�zi feladat.
	const T& at(unsigned int position)const
	{
        if(position>=elementNum)throw std::out_of_range("NoNo");
        return pData[position];
    };
	// Besz�r egy elemet a megadott indexu helyre.
	// Ha az index nagyobb, mint a t�mb m�rete, megn�veli a t�mb m�ret�t,
	// �s a sz�ks�ges �j helyeket null�kkal t�lti fel.
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
	Vector operator+ (const T & elem)const //Az �sszead� oper�tor
	{
		Vector <T> result=*this;
		result.insert(this->elementNum,elem);
		return result;
	}
	T & operator [](unsigned int position)// K�t operator[]. Az at() tagf�ggv�ny operator form�ban is.
	{
        return at(position);
    };
	const T & operator [](unsigned int position)const
	{
        return at(position);
    };
};


// Diagnosztikai c�l� kiirat�s
template <class X> std::ostream & operator << (std::ostream& os,const Vector<X> & v)
{
	for(unsigned int i=0;i<v.elementNum;i++)
	{
		os<<' '<<v.at(i);
	}
	return os;
};
#endif // VECTOR_H_INCLUDED
