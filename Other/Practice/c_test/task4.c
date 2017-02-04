#include <stdio.h>
#define STRING 1
#undef STRING

#if ( STRING == 1 )
char str[] = "true";
#else
char str[] = "false";
#endif

#if ( STRING == 0 )
char str2[] = "true";
#else
char str2[] = "false";
#endif

void main(void)
{
    printf("%s-%s-%s",str,str2,str3);
}
//Solution: false-true
//if you undefine something with the #undef directive it's value will be 0.
//if you not define a macro it's value will be 0 automaically 
