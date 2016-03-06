#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int lkkt_szamok(int a, int b)//A legkisebb közös többszöröst kiszámoló függvény
{
	int k;//Segédváltozó
    if(a>=b)//Nézzük meg melyik a nagyobb!!
    {
        k=a;
        while (a%b!=0)a+=k;//Adjuk hozzá a nagyobbat a segédváltozónkhoz,addig amíg nem lesz megfelelõ a másikkal a maradék, így megkapjuk az lkkt-t.
        return a;
    }
    else
	{k=b;while (b%a!=0)b+=k;return b;}
}

int lnko_szamok(int a, int b)//LNKO kiszámítása euklideszi algoritmussal
{
    int m,k,l=0;
    if(a>=b)
    {
        m=a%b;
        k=b;
        while (m!=0){l=m;m=k%m;k=l;}
        return k;
    }
    else{m=b%a;k=a;while (m!=0){l=m;m=k%m;k=l;};return k;}
}
int prim_e(int a)// Egy függvény a prímek ellenõrzésére.(Nem túl hatékony de a céloknak megfelelõ
{
    int i;
    for(i=2;i<a;i++)
    {
        if(a%i==0)return 0;
    }
    return 1;
}
int main(int argc, char *argv[])//A parancssori argumentumok száma és értékeik
{
    int *szamok=malloc((argc-1)*sizeof(int));//a tömb, amibe az argomentum értékeket tároljuk
    int i,j,k=0,lkkt,lnko;
    for (i=1;i<argc;i++)//Az argomentumértékekkel való feltöltése a tömbnek
    {
        szamok[i-1]=atoi(argv[i]);
    }
    lkkt=szamok[argc-2];//Állítsuk az Lkkt-t a tömbünk utolsó elemére!
    lnko=szamok[argc-2];//Állítsuk az Lnko-t a tömbünk utolsó elemére!
    for(i=3;i<=argc;i++)//Menjünk végig a tömbön és a megadott algoritmussal számítsuk az Lkkt-t!
    {
        lkkt=lkkt_szamok(szamok[argc-i], lkkt);
    }
    for(i=3;i<=argc;i++)//Menjünk végig a tömbön és a megadott algoritmussal számítsuk az LNKO-t!
    {
        lnko=lnko_szamok(szamok[argc-i], lnko);
    }
    printf("lkkt:\t%d\nlnko:\t%d\n",lkkt,lnko);//Írjuk ki õket!
    for(i=0;i<argc-1;i++)//Számítsuk ki a prímtényezõs felbontásokat!
    {
        printf("%d:\t",szamok[i]);//Elõször írjuk ki a számot!
		for(j=2;j<szamok[i];j++){if(prim_e(j)){k=szamok[i];while(k%j==0){printf("%d ",j);k=k/j;}}};//Majd futtasunk végig egy ciklust az adott számnál kisebb számokon és nézzük meg, hogy prím-e és osztja-e a számunkat!
        printf("\n");//Egy enter a végére szépítésként ^_^
    }
    free(szamok);
    return 0;
}
