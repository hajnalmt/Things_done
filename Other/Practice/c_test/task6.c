#include <stdio.h>

void main(void)
{
    int i = 9;
    int j = 45;
    int k = 77;
    int a = 2;
    int x = a++, y = a++;
    k = (i++,(j=i),++j);
    printf("%d %d %d",i,j,k);
}

//Solution: "10 11 11"

//The question is how the pre and postdecrement operator works.
//It's good to understand, that it's finished before the squence points,
//and the last value of the expression will be the result, so k will be 11.
