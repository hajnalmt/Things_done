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
    printf("%s-%s",str,str2);
}
