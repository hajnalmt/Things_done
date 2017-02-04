#include <stdio.h>
#define ABS(x) (x<0?-x:x)

void main(void)
{
    printf("%d %d",ABS(-1),ABS(3-6));
}
// Solution: 1 -9
// When you create a define directive the argument will be
// substituted literally. That means, that in the comparison it's evaluated,
// so the yes branch will run in the define, but in the end -3-6=-9 will be the result.
