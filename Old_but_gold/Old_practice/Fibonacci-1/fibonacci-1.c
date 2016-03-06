#include <stdio.h>
#include <stdlib.h>

int main()
{
    unsigned int *x, i, j;                  //Egy dinamikus tömbben tároljuk, az elemeket.
    scanf("%u", &i);
    x = calloc(i, sizeof(unsigned int));
    if (i <= 1){
        printf("Nagyobb számot adj meg.");
    }
    x[0] = 1;
    x[1] = 1;
    for (j = 2; j <= i-1; j++){             //Feltöltjük a tömböt a Fibonacci sorozat elemeivel
        x[j]= x[j-1]+x[j-2];
    }
    for (j = 0; j <= i-1 ; j++){            //Majd egyesével kiírjuk õket.
        printf("%u ", x[j]);
    }
    free(x);                                // A végén felszabadítjuk a tömböt.
    return 0;
}
