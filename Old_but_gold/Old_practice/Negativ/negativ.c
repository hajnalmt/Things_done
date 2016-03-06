#include <stdio.h>
#include <stdlib.h>

int main(){
    int i = 1, j = 0;               //j-ben lesz a kapott eredmény
    double t[100];                  //100 elemû tömg a számoknaknak
    scanf ("%lf", &t[0]);
    if (t[0] < 0){
        j++;
    }
    while (scanf ("%lf", &t[i])){    //Amyg van szám addig olvasunk
         if (t[i] < 0){
            j++;
         }
         i++;
    }
    printf("%d", j);
    return 0;
}
