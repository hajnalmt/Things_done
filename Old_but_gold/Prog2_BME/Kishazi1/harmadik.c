#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
    int i,n,result=0;//Változók deklarálása
    printf("Adj meg egy egesz szamot:");
    scanf("%d",&n);//Beolvasás
    for(i=1;i<=n;i++)//A ciklus, ami az elõzõbõl kiszámolja az eredményt
    {
        result+=pow(5,i)+3*pow(i,3);//a hatvány használata pow függvény segítségével
    }
    printf("A szumma erteke: %d",result);//Eredmény kiírása
    return 0;
}
