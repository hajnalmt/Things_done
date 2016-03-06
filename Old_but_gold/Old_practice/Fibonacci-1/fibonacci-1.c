#include <stdio.h>
#include <stdlib.h>

int main()
{
    unsigned int *x, i, j;                  //Egy dinamikus t�mbben t�roljuk, az elemeket.
    scanf("%u", &i);
    x = calloc(i, sizeof(unsigned int));
    if (i <= 1){
        printf("Nagyobb sz�mot adj meg.");
    }
    x[0] = 1;
    x[1] = 1;
    for (j = 2; j <= i-1; j++){             //Felt�ltj�k a t�mb�t a Fibonacci sorozat elemeivel
        x[j]= x[j-1]+x[j-2];
    }
    for (j = 0; j <= i-1 ; j++){            //Majd egyes�vel ki�rjuk �ket.
        printf("%u ", x[j]);
    }
    free(x);                                // A v�g�n felszabad�tjuk a t�mb�t.
    return 0;
}
