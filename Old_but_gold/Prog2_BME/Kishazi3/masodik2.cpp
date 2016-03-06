#include <stdio.h>  /* printf-nek */
#include <stdlib.h> /* Mem�riakezel�snek */
#include <limits.h> /* Az INT_MAX-nak */


struct stack
{
    int elements;
    char* pData;
};
/* �ltal�nos meg�llapod�sok.
1. Ha a stack �res, a pData NULL, az elements 0.
2. Az pData mutat az elemek t�mbj�re, dinamikus mem�riafoglal�ssal.
3. Az elements jelzi az stackben l�vo aktu�lis elemek sz�m�t.
4. A f�ggv�nyek karbantartj�k a dinamikus mem�riater�letet
5. A stack haszn�lata elott a meg kell h�vni a void stack_init(struct stack* s)-et.
6. A stack haszn�lata ut�n meg kell h�vni a void stack_cleanUp(struct stack* s)-t.
7. A f�ggv�nyek visszat�r�se hiba eset�n nem nulla
*/

void stack_init(struct stack &s)
{
    /* Mivel alap�rtelmez�sben a stack k�t v�ltoz�j�nak �rt�kei v�letlensz�mok,
       inicializ�lni kell oket. �res stackkel indulunk.
    */



    // 1. Az s.elements be�ll�t�sa
    s.elements=0;
    // 2. Az s.pData be�ll�t�sa
    s.pData=NULL;
}

void stack_cleanUp(struct stack &s)
{
    /* Mivel dinamikus adatter�lete foglalunk le, a stack haszn�lata ut�n
       fel kell szabad�tani ezeket*/

    // 1. Az s.elements be�ll�t�sa

    s.elements=0;

    // 2. Az s.pData felszabad�t�sa, ha nem NULL
    if(s.pData)free(s.pData);

    // 3. Az s.pData �rt�k�nek be�ll�t�sa
    s.pData=NULL;
}

int stack_push(struct stack &s, char newElement)
{
    /* Itt �j elemet fuz�nk az s.pData v�g�re. Ehhez lefoglalunk
       eggyel nagyobb m�retu helyet egy ideiglenes mutat�val, majd
       �tm�soljuk bele a s.pData eddigi tartalm�t, hozz�fuzz�k az
       �j elemet, �s felszabad�tjuk az eredeti s.pData ter�let�t.
       Ut�na s.pDatat �tir�ny�tjuk az ideiglenes pointer �ltal
       mutatott ter�letre.
   */

    // Az ideiglenes mutat�
    char *ptrTemp;

    // Ciklusv�ltoz� a m�sol�shoz
    int i;

    // 1. Ha az s.elements �rt�ke INT_MAX, a stack betelt (k�l�nben t�lcsordul�s lenne)
    // Ilyenkor -1 hib�val t�r�nk vissza

    if (s.elements==INT_MAX)return -1;

    // 2. Eggyel nagyobb helyet foglalunk az ideiglenes pointer (ptrTemp) seg�ts�g�vel
    ptrTemp=(char*)malloc(sizeof(char)*s.elements+1);

    // 3. Egy for ciklussal �tm�soljuk az s.pData tartalm�t a ptrTemp �ltal mutatott
    // ter�letre.
    for(i=0;i<s.elements;++i)
    ptrTemp[i]=s.pData[i];

    // 4. Az �jonan foglalt ter�let v�g�re rakjuk az �j elemet (newElement)
    ptrTemp[i]=newElement;

    // 5. Ha mutatott valahova elozoleg a pData, felszabad�tjuk
    if(s.pData)free(s.pData);

    // 6. �t�ll�tjuk az s.pData pointert az �jonnan lefoglalt ter�letre (ptrTemp)
    s.pData=ptrTemp;

    // 7. Be�ll�tjuk az elemsz�m (s.elements) �j �rt�k�t
    ++s.elements;
    return 0;
}

int stack_pop(struct stack &s)
{
    /* Ha nem �res a stack, kivessz�k az utols�k�nt berakott elemet
       a t�mb v�g�rol. Lefoglalunk eggyel kisebb t�rhelyet, �tm�soljuk
       az adatokat, felszabad�tjuk az eredetit. Ha ki�r�l a stack,
       a meg�llapod�snak megfeleloen �ll�tjuk be az s trukt�ra adattagjait.*/

    // Az ideiglenes mutat� �s a visszat�r�si �rt�k
    char *ptrTemp, value;
    // Ciklusv�ltoz� a m�sol�shoz
    int i;

    // 1. Ha a stack �res -1-gyel visszat�r�nk
    if(!s.elements)return -1;
    // 2. A value �rt�ke az utols�k�nt betett elem, a t�mb v�ge
    value=s.pData[s.elements-1];
    // 3. Az s.elements �rt�k�t be�ll�tjuk az �j szitu�ci�nak megfeleloen
    s.elements--;

    if(s.elements) // 4a. Ha a t�mb ezzel nem lesz �res
    {
        // 4a1. Az ideiglenes pointer seg�ts�g�vel az �j m�retnek megfelelo
        // helyet foglalunk
        ptrTemp=(char*)malloc(sizeof(char)*s.elements);

        // 4a2. �tm�soljuk az ideiglenes ter�letre a stackben maradt adatokat
        for (i=0;i<s.elements;i++)
        ptrTemp[i]=s.pData[i];




        // 4a3. Felszabad�tjuk a r�gi mem�riater�letet (s.pData)
        free(s.pData);
        // 4a4. �t�ll�tjuk az s.pData pointert az �jonnan lefoglalt ter�letre (ptrTemp)
        s.pData=ptrTemp;
    }
    else // 4b. Ha a t�mb ezzel �res lett
    {
        // 4b1. Felszabad�tjuk az eddigi elemet
        free(s.pData);
        // 4b2. Be�ll�tjuk az s.pData �rt�k�t (az elements m�r be lett �ll�tva)
        s.pData=NULL;

    }

    // 5. Visszat�r�nk a kivett elemmel (value)
    return value;

}

int stack_isEmpty(struct stack &s)
{
    /* Ha �res a stack, nem null�val t�r�nk vissza, egy�bk�nt igen. */
    if(s.elements)return 0;
    else return 1;

}

int main(void)
{
    struct stack s;
    char i;

    printf("Initializing stack...\n");
    stack_init( s);

    for(i='A';i<='Z';i++)
    {
        printf("push: %c\n",i);
        // Itt n�zz�k a s.pData v�ltoz�t debuggerbol, l�pj�nk bele a f�ggv�nybe
        stack_push(s,i);
    }

    while(!stack_isEmpty(s))
    {
        // Itt n�zz�k a s.pData v�ltoz�t debuggerbol, l�pj�nk bele a f�ggv�nybe
        printf("pop: %c\n",(char)stack_pop(s));
    }

    // �res stackbol kiv�tel: hiba (-1)
    printf("pop: %d\n",stack_pop(s));

    printf("Cleaning up stack...\n");
    stack_cleanUp(s);
    return 0;
}
