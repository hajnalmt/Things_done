#include <stdio.h>
#define DATA(number)     #number 
#define VALUE(number)    #number"-74"

void main(void)
{
    printf("%d=",*DATA(123));
    printf("%s",VALUE(123));
}

// Output: 49=123-74
// In the define the #token is a function-like macro and called stringifying. The returned value will be a string.
// The string is handled as an array in which the characters are placed with the \0 at end. DATA(123) will be substituted as "123"='1'+'2'+'3'+'\0'.
// If we handle the array as a pointer and derefer it with * (*"123") we will get the array's first elements value, in our case '1'-s ASCII value is 49.
// In the VALUE MACRO the string substitution comes up again. In this case "123""-74" will be the returned value.
// The compiler will just concatenate it when the %s substitution comes in place. so "123-74" will be the output.
