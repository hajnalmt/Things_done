#include <stdio.h>
#define INDEX(id) var##_##id

int var_1 = 3;
int var_2 = 2;
int var_3 = 1;

void main(void)
{
    printf("%d",INDEX(3));
}

// Output is 1.
// The ## by itself is the concatenating preprocessor directive, at this time could be omitted
// If after it there is a variable (id this case) then it's a token pasting, whatever is inside in the id variable will be placed after the ##
