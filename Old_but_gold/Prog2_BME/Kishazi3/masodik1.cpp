#include <stdio.h>  /* printf-nek */
#include <stdlib.h> /* Memóriakezelésnek */
#include <limits.h> /* Az INT_MAX-nak */

struct stack
{
    int alapmeret;
    int kapacitas;
    int elements;
    char* pData;
};

void stack_init(struct stack &s, int alapmeret)
{
	s.elements=0;
	s.kapacitas=alapmeret;
    s.alapmeret=alapmeret;
	s.pData=new char[alapmeret];
}

void stack_cleanUp(struct stack &s)
{
	s.elements=0;
	s.kapacitas=s.alapmeret;			//itt is volt egy javítás, hogy mindig tartson fent a stack a kapacitásnak egy alapmáretnyi helyet
	if(s.pData)delete[] s.pData;
	s.pData=NULL;
}

int stack_push(struct stack &s, char newElement)
{
	if (s.elements==INT_MAX)return -1;
	if(s.elements<s.kapacitas)
    {
		s.pData=new char [s.elements+1];
        s.pData[s.elements]=newElement;
        s.elements++;
        return 0;
    }
	
	char *ptrTemp=new char[s.elements+1];;						//csak itt deklaráljuk ptrTempet és foglalunk neki helyet
	s.kapacitas+=s.alapmeret;			//itt volt egy javítás, hogy ne duplázza a kapcitást, hanem mindig egy alapméretnyivel nagyobb legyen a kapacitás
	int i=0;
	for(i;i<s.elements;i++)
    ptrTemp[i]=s.pData[i];
	ptrTemp[i]=newElement;
	if(s.pData)delete[] s.pData;
	s.pData=ptrTemp;
	++s.elements;
    return 0;
}

int stack_pop(struct stack &s)
{
	char value;							//itt is javítottam, egyet, hogyha esetleg, nem menne bele az if elágazásba, akkor ne deklaráljunk fölöslegesen
	if(!s.elements)return -1;
	value=s.pData[s.elements-1];
	s.elements--;
	if(s.elements==s.kapacitas-s.alapmeret && s.kapacitas!=s.alapmeret) // ide került egy && feltétel arra a esetre, ha a kapacitás pont alapméretnyi lenne, hogy ne 0-zuk le a kapacitást
    {
        s.kapacitas-=s.alapmeret;
		char* ptrTemp=new char [s.kapacitas]; //itt deklaráljuk ptrTempet
		for(int i=0; i<s.elements; i++)
            ptrTemp[i]=s.pData[i];
		if(s.pData)
            delete [] s.pData;
		 s.pData=ptrTemp;
	}
	if(s.elements==0)stack_cleanUp(s);
	return value;
}

int stack_isEmpty(struct stack &s)
{
    if(s.elements)return 0;
    else return 1;
}

//Szorgalmi feladat: (ezt pluszba csináltam)

void stack_init(struct stack& s, const struct stack& theOther)
{
	if(!s.alapmeret)			//ha még, sehogy nem volt inicializálva a stack, azzaz nem volt neki alapméret megadva vagy nulla volt, akkor a theOther stack másolata legyen s
	{
		s.alapmeret=theOther.alapmeret;
		s.kapacitas=theOther.kapacitas;
		s.elements=theOther.elements;
		s.pData=new char [s.elements];
		for(int i=0;i<s.elements;i++){s.pData[i]=theOther.pData[i];}
	}
	else{						// Ha volt már inicializálva, azaz alapmérettel megadva, akkor másoljuk át az elemeket 
	s.elements=theOther.elements;
	delete [] s.pData;
	s.pData=new char [s.elements];
	for(int i=0;i<s.elements;i++){s.pData[i]=theOther.pData[i];}
	if(s.elements % s.alapmeret!=0)			//Majd állítsuk mefelelőre a kapacitást
		{s.kapacitas=(int)s.elements/s.alapmeret+s.alapmeret;
	}
	else {
		s.kapacitas=s.alapmeret;
	}
	}
}

int main(void)
{
    struct stack s;
    char i;

    printf("Initializing stack...\n");
    stack_init( s, 4);

    for(i='A';i<='Z';i++)
    {
        printf("push: %c\t%d\t%d\n",i,s.elements,s.kapacitas);
        stack_push(s,i);
    }

    while(!stack_isEmpty(s))
    {
        printf("pop: %c\t%d\t%d\n",(char)stack_pop(s),s.elements,s.kapacitas);
    }
    printf("pop: %d\n",stack_pop(s));

	printf("Cleaning up stack...\n");
    stack_cleanUp(s);
    return 0;
}