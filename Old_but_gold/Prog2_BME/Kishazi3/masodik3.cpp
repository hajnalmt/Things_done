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
/* Általános megállapodások.
1. Ha a stack üres, a pData NULL, az elements 0.
2. Az pData mutat az elemek tömbjére, dinamikus memóriafoglalással.
3. Az elements jelzi az stackben lévo aktuális elemek számát.
4. A függvények karbantartják a dinamikus memóriaterületet
5. A stack használata elott a meg kell hívni a void stack_init(struct stack* s)-et.
6. A stack használata után meg kell hívni a void stack_cleanUp(struct stack* s)-t.
7. A függvények visszatérése hiba esetén nem nulla
*/

void stack_init(struct stack &s, int alapmeret)
{
    /* Mivel alapértelmezésben a stack két változójának értékei véletlenszámok,
       inicializálni kell oket. Üres stackkel indulunk.
    */

    // 1. Az s.elements beállítása
    s.elements=0;
    //A kapacitas és az alapméret beállítása
    s.kapacitas=alapmeret;
    s.alapmeret=alapmeret;
    // 2. Az s.pData beállítása
    s.pData=new char[alapmeret];
}

void stack_cleanUp(struct stack &s)
{
    /* Mivel dinamikus adatterülete foglalunk le, a stack használata után
       fel kell szabadítani ezeket*/

    // 1. Az s.elements beállítása
    s.elements=0;
    //a kapacitás eállítása
    s.kapacitas=0;

    // 2. Az s.pData felszabadítása, ha nem NULL
    if(s.pData)delete s.pData;

    // 3. Az s.pData értékének beállítása
    s.pData=NULL;
}

int stack_push(struct stack &s, char newElement)
{
    /* Itt új elemet fuzünk az s.pData végére. Ehhez lefoglalunk
       eggyel nagyobb méretu helyet egy ideiglenes mutatóval, majd
       átmásoljuk bele a s.pData eddigi tartalmát, hozzáfuzzük az
       új elemet, és felszabadítjuk az eredeti s.pData területét.
       Utána s.pDatat átirányítjuk az ideiglenes pointer által
       mutatott területre.
   */

    // Az ideiglenes mutató
    char *ptrTemp;

    // Ciklusváltozó a másoláshoz
    int i;

    // 1. Ha az s.elements értéke INT_MAX, a stack betelt (különben túlcsordulás lenne)
    // Ilyenkor -1 hibával térünk vissza

    if (s.elements==INT_MAX)return -1;

    //Ha még fér elem a stackbe rakjuk bele és térjünk vissza
    if(s.elements<s.kapacitas)
    {
        s.pData[s.elements]=newElement;
        s.elements++;
        return 0;
    }
    //Ha elértük a stack kapacitását növeljük egy alapmáretnyivel
    s.kapacitas+=s.elements;
    // 2. lefoglaljuk a helyet az ideiglenes pointer segítségével
    ptrTemp=new char[s.kapacitas];

    // 3. Egy for ciklussal átmásoljuk az s.pData tartalmát a ptrTemp által mutatott
    // területre.
    for(i=0;i<s.elements;++i)
    ptrTemp[i]=s.pData[i];

    // 4. Az újonan foglalt terület végére rakjuk az új elemet (newElement)
    ptrTemp[i]=newElement;

    // 5. Ha mutatott valahova elozoleg a pData, felszabadítjuk
    if(s.pData)delete[] s.pData;

    // 6. Átállítjuk az s.pData pointert az újonnan lefoglalt területre (ptrTemp)
    s.pData=ptrTemp;

    // 7. Beállítjuk az elemszám (s.elements) új értékét
    ++s.elements;
    return 0;
}

int stack_pop(struct stack &s)
{
    /* Ha nem üres a stack, kivesszük az utolsóként berakott elemet
       a tömb végérol. Lefoglalunk eggyel kisebb tárhelyet, átmásoljuk
       az adatokat, felszabadítjuk az eredetit. Ha kiürül a stack,
       a megállapodásnak megfeleloen állítjuk be az s truktúra adattagjait.*/

    // Az ideiglenes mutató és a visszatérési érték
    char *ptrTemp, value;
    // Ciklusváltozó a másoláshoz
    int i;

    // 1. Ha a stack üres -1-gyel visszatérünk
    if(!s.elements)return -1;
    // 2. A value értéke az utolsóként betett elem, a tömb vége
    value=s.pData[s.elements-1];
    // 3. Az s.elements értékét beállítjuk az új szituációnak megfeleloen
    s.elements--;


    //Ha alapméretni lett a kapacitás és az elemszám különbsége, lecsökkentjük alapméretnyivel a kapacitást
    if(s.elements==s.kapacitas-s.alapmeret)
    {
        s.kapacitas-=s.alapmeret;

        //Ideiglenes tömb segítségével foglaljuk le a megfelelõ nagyságú területet
        ptrTemp= new char [s.kapacitas];

        //és másoljuk át az elemeket
        for(int i=0; i<s.elements; i++)
            ptrTemp[i]=s.pData[i];

        //Ha mutatott valahova elozoleg a pData, felszabadítjuk
        if(s.pData)
            delete [] s.pData;

        //Átállítjuk az s.pData pointert az újonnan lefoglalt területre (ptrTemp)
        s.pData=ptrTemp;

    }

// 4b. Ha a tömb ezzel üres lett hívjuk meg a kitakarító függvényt
     if(s.elements==0)stack_cleanUp(s);

    // 5. Visszatérünk a kivett elemmel (value)
    return value;

}

int stack_isEmpty(struct stack &s)
{
    /* Ha üres a stack, nem nullával térünk vissza, egyébként igen. */
    if(s.elements)return 0;
    else return 1;

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
        // Itt nézzük a s.pData változót debuggerbol, lépjünk bele a függvénybe
        stack_push(s,i);
    }

    while(!stack_isEmpty(s))
    {
        // Itt nézzük a s.pData változót debuggerbol, lépjünk bele a függvénybe
        //és esetleg ellenõrizzük az elemszámot és a kapacitást
        printf("pop: %c\t%d\t%d\n",(char)stack_pop(s),s.elements,s.kapacitas);
    }

    // Üres stackbol kivétel: hiba (-1)
    printf("pop: %d\n",stack_pop(s));

    printf("Cleaning up stack...\n");
    stack_cleanUp(s);
    return 0;
}
