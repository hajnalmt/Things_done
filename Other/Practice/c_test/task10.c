#include <stdio.h>
#define MASK 0x55
unsigned char reg;

void setBits(unsigned char bits)   { reg |= (bits & MASK); }
void clearBits(unsigned char bits) { reg &= (bits & MASK); }

void main(void)
{
    setBits(0x73);
    printf("%X ",reg);
    clearBits(0x61);
    printf("%X ",reg);
}

//Solution: "51 41 "
//Based on bit operators.
