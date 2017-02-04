#include <stdio.h>
#include <stdarg.h>

typedef unsigned int uint32;
typedef unsigned char uint8;
typedef unsigned long long uint64; /* Long long is only present since C99 */

void printItOut(uint32 count, ...)
{
    va_list ap;
    uint32 value;

    va_start(ap, count);
    for( ; count>0; --count)
    {
        value = va_arg(ap, uint32);
        printf("%X ", value);
    }
    va_end(ap);
}

void main(void)
{
    uint8 in8     = 0xF0u;
    uint32 in32   = 0xFFFFFFFFu;
    uint8 in8_2   = 0xAAu;
    uint64 in64   = 0xAAAAAAAA55555555uL;
    uint32 in32_2 = 0x11111111u;

    printItOut(5,in8,in32,in8_2,in64,in32_2);
}

//Solution: "F0 FFFFFFFF AA AAAAAAAAA55555555 11111111 "
//The va_arg will decrement the va_list with it's first value
