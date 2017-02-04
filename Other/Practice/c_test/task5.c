#include <stdio.h>

void main(void)
{
    printf("%u ",(unsigned char)3 |   5  );
    printf("%u ",(unsigned char)3 ||  5  );
    printf("%u ",(unsigned char)3 &   5  );
    printf("%u ",(unsigned char)3 &&  5  );
    printf("%u ",(unsigned char)17 >> 2  );
    printf("%u ",(unsigned char)9 <<  1  );
    printf("%u ",(unsigned char)~ 8      );
    printf("%u ",(unsigned char)255 ^ 128);
    printf("%u ",(unsigned char)7 / 9 * 9);
}

//Solution: "7 1 1 1 4 18 247 127 0 "
//Bitoperators on unsigned char (8 bit)
