#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
    int a,i, datcount=0;//V�ltoz�k deklar�ci�ja
    double *t,sum=0,closest,average;
    printf("Hany szamot szeretnel?:");
    scanf("%d",&a);
    t=malloc(sizeof(double)*a);//A t�mb amibe az elemeket fogjuk menteni
    for (i=0;i<a;i++)//Egy ciklussal be�rjuk a k�v�nt elemeket a t�mbbe
    {
        printf("Adj meg egyet:");
        scanf("%lf",t+i);
        sum+=t[i];
    }
    average=sum/a;//Az �tlag
    closest=t[0];//El�sz�r a legk�zelebbi elem legyen a legels�
    for (i=1;i<a;i++)//V�gigmegy�nk a t�mb�n �s megkeress�k a legk�zelebbit,( ha kett� ugyanolyan k�zel van akkor a hamarabb el�fordul�t fogja ki�rni.
    {
       if(fabs(average-t[i])<fabs(closest-average))closest=t[i];
    }

    for(i=0;i<a;i++)//�gyelve az esetleges negat�v �tlagra megn�zz�k az �tlag 5%-�kos k�rnyezet�t. (az elemeken v�gigmenve)
    {
        if (average>=0){
        if(t[i]<=1.05*average&&t[i]>=0.95*average){datcount++;}}//A datcount v�ltoz�ba sz�oljuk a k�rt elemeket.
        if(average<0){if(t[i]<=0.95*average&&t[i]>=1.05*average)datcount++;}
    }
    printf("A legkozelebbi elem az atlaghoz: %lf\nOsszesen %d elem van az atlag 5 szazalekos kornyezeteben\n",closest,datcount);//Az k�rt elemk ki�r�sa
    return 0;
}
