#include <stdio.h>
#include <stdlib.h>

int main()
{
    unsigned int *x, i = 1000, j;
    x = calloc(i, sizeof(unsigned int));
    x[0] = 1;
    x[1] = 1;
    for (j = 2; j <= i-1; j++){             //Feltöltjük a tömböt a Fibonacci sorozat elemeivel
        x[j]= x[j-1]+x[j-2];
    }
    while(j > 0){
        scanf("%d", &j);
        if(j <= 1000 ){
            printf("%d", x[j-1]);
        }
        else{
            printf("Más számot adj meg.");
        }
    }
    free(x);                                // A végén felszabadítjuk a tömböt.
    return 0;
}
