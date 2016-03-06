#include <stdio.h>
#include <stdlib.h>

int main()
{
    unsigned int x, *y = calloc(x, sizeof(unsigned int));  //Tömbbe tároljuk a dolgokat
    int i, j, k, l;                                        //Segédváltozók
    scanf("%u", &x);                                       // a számtani sorozat hossza
    for (i = 0; i !=x; i++){
        scanf("%u", &y[i]);                                // Beolvassuk a tömbbe a számtani sorozat elemeit
    }
    j = y[1]-y[0];
    k = y[2]-y[1];
    if(x > 3){
        if (j != k){                                       // Ha az első két elem különbsége se jó.
            l = y[3]-y[2];
            if (l == j){
                printf("%u", y[2]-l);
            }
            else {
                printf("%u", y[1]-l);
            }
        }
        else {
            for(i = 0; i != x-1; i++){                      // Ha jó akkor végigmegyünk az összes többi elemen.
                if (y[i+1] - y[i] != j){
                    printf ("%d", y[i]+j);                  // és kiírjuk a megfelelőt
                }
            }
        }
     }
     else if (x == 3) {                                     //A hármat kezeljük külön
            if (abs(j) > abs(k)){
                printf("%d", y[0]+k);
            }
            else {
                printf("%d", y[1]+j);
            }
     }
     else {
        printf("Tobb bemeneti parameterre van szuksegem!\n");
    }
    free(y);
    return 0;
}
