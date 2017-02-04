#include <stdio.h>

int firstRun;
int callCounter;
int doProcessing(void)
{
    callCounter++;
    /* Do some processing here */
    return 1; /* Signal that everything was ok */
}

void main(void)
{
    if( firstRun && doProcessing() )
    {
        /* Do firstRun stuff here */
        firstRun = 0;
    }

    printf("%d",callCounter);
}

//Solution: 0;
//Every global declaration will be 0, if not given explicitly, so the if part won't run
