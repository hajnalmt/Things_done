#include <stdio.h>

typedef unsigned char uint8;
uint8 array[6] = { 6, 9, 4, 6, 2 };

void main(void)
{
    uint8 (*ptr)[6] = &array;
    uint8 (*ptr2)[3] = &array;

    printf( "%d ", *(   (uint8*) ptr       ) );
    printf( "%d ", *( ( (uint8*) ptr +1) -1) );
    printf( "%d ", *( ( (uint8*) ptr2+1) -1) );
}

//Solution: "6 6 6 "
//Derefering comes at the end, so all te values will be the arrays first element
