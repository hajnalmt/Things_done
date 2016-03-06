#include <stdio.h>
#include <stdlib.h>

int main2()
{
    unsigned int x[100], i;
    x[0] = 1; x[1] = 1;             //Az elsõ két elem kmegadása
    for (i = 2; i != 100; i++){
        x[i] = x[i-1]+x[i-2];       //A definíció szerinti iteráció
    }
    for( i = 0; i != 100; i++){
        printf("%u ", x[i]);
    }
    return 0;
}
