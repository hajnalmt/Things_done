#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

int main()
{
    while((c=getchar())!=EOF)
    {
        if(islower(c))putchar(toupper(c));
        else if(isupper(c))putchar(tolower(c));
        else putchar(c);
    }
    return 0;
}
