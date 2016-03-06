#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
    int a,i, datcount=0;//Változók deklarációja
    double *t,sum=0,closest,average;
    printf("Hany szamot szeretnel?:");
    scanf("%d",&a);
    t=malloc(sizeof(double)*a);//A tömb amibe az elemeket fogjuk menteni
    for (i=0;i<a;i++)//Egy ciklussal beírjuk a kívánt elemeket a tömbbe
    {
        printf("Adj meg egyet:");
        scanf("%lf",t+i);
        sum+=t[i];
    }
    average=sum/a;//Az átlag
    closest=t[0];//Elõször a legközelebbi elem legyen a legelsõ
    for (i=1;i<a;i++)//Végigmegyünk a tömbön és megkeressük a legközelebbit,( ha kettõ ugyanolyan közel van akkor a hamarabb elõfordulót fogja kiírni.
    {
       if(fabs(average-t[i])<fabs(closest-average))closest=t[i];
    }

    for(i=0;i<a;i++)//Ügyelve az esetleges negatív átlagra megnézzük az átlag 5%-ékos környezetét. (az elemeken végigmenve)
    {
        if (average>=0){
        if(t[i]<=1.05*average&&t[i]>=0.95*average){datcount++;}}//A datcount változóba száoljuk a kért elemeket.
        if(average<0){if(t[i]<=0.95*average&&t[i]>=1.05*average)datcount++;}
    }
    printf("A legkozelebbi elem az atlaghoz: %lf\nOsszesen %d elem van az atlag 5 szazalekos kornyezeteben\n",closest,datcount);//Az kért elemk kiírása
    return 0;
}
