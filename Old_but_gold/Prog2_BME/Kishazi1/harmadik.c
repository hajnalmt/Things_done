#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
    int i,n,result=0;//V�ltoz�k deklar�l�sa
    printf("Adj meg egy egesz szamot:");
    scanf("%d",&n);//Beolvas�s
    for(i=1;i<=n;i++)//A ciklus, ami az el�z�b�l kisz�molja az eredm�nyt
    {
        result+=pow(5,i)+3*pow(i,3);//a hatv�ny haszn�lata pow f�ggv�ny seg�ts�g�vel
    }
    printf("A szumma erteke: %d",result);//Eredm�ny ki�r�sa
    return 0;
}
