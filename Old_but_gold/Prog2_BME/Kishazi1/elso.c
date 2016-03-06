#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int lkkt_szamok(int a, int b)//A legkisebb k�z�s t�bbsz�r�st kisz�mol� f�ggv�ny
{
	int k;//Seg�dv�ltoz�
    if(a>=b)//N�zz�k meg melyik a nagyobb!!
    {
        k=a;
        while (a%b!=0)a+=k;//Adjuk hozz� a nagyobbat a seg�dv�ltoz�nkhoz,addig am�g nem lesz megfelel� a m�sikkal a marad�k, �gy megkapjuk az lkkt-t.
        return a;
    }
    else
	{k=b;while (b%a!=0)b+=k;return b;}
}

int lnko_szamok(int a, int b)//LNKO kisz�m�t�sa euklideszi algoritmussal
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
int prim_e(int a)// Egy f�ggv�ny a pr�mek ellen�rz�s�re.(Nem t�l hat�kony de a c�loknak megfelel�
{
    int i;
    for(i=2;i<a;i++)
    {
        if(a%i==0)return 0;
    }
    return 1;
}
int main(int argc, char *argv[])//A parancssori argumentumok sz�ma �s �rt�keik
{
    int *szamok=malloc((argc-1)*sizeof(int));//a t�mb, amibe az argomentum �rt�keket t�roljuk
    int i,j,k=0,lkkt,lnko;
    for (i=1;i<argc;i++)//Az argomentum�rt�kekkel val� felt�lt�se a t�mbnek
    {
        szamok[i-1]=atoi(argv[i]);
    }
    lkkt=szamok[argc-2];//�ll�tsuk az Lkkt-t a t�mb�nk utols� elem�re!
    lnko=szamok[argc-2];//�ll�tsuk az Lnko-t a t�mb�nk utols� elem�re!
    for(i=3;i<=argc;i++)//Menj�nk v�gig a t�mb�n �s a megadott algoritmussal sz�m�tsuk az Lkkt-t!
    {
        lkkt=lkkt_szamok(szamok[argc-i], lkkt);
    }
    for(i=3;i<=argc;i++)//Menj�nk v�gig a t�mb�n �s a megadott algoritmussal sz�m�tsuk az LNKO-t!
    {
        lnko=lnko_szamok(szamok[argc-i], lnko);
    }
    printf("lkkt:\t%d\nlnko:\t%d\n",lkkt,lnko);//�rjuk ki �ket!
    for(i=0;i<argc-1;i++)//Sz�m�tsuk ki a pr�mt�nyez�s felbont�sokat!
    {
        printf("%d:\t",szamok[i]);//El�sz�r �rjuk ki a sz�mot!
		for(j=2;j<szamok[i];j++){if(prim_e(j)){k=szamok[i];while(k%j==0){printf("%d ",j);k=k/j;}}};//Majd futtasunk v�gig egy ciklust az adott sz�mn�l kisebb sz�mokon �s n�zz�k meg, hogy pr�m-e �s osztja-e a sz�munkat!
        printf("\n");//Egy enter a v�g�re sz�p�t�sk�nt ^_^
    }
    free(szamok);
    return 0;
}
