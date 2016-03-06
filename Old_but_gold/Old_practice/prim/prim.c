#include <stdio.h>
#include <stdlib.h>

int prim_e(int a){              //Pr�m csekkol� f�ggv�ny
    int i;
    for(i = sqrt(a); ; i--){    //A sz�mnak a gy�k�t�l megy�nk lefel�
        if(i == 1){
        return 1;
        }
        if(a%i == 0){
            return 0;
        }
    }
}
int main()
{
    int x = 2, y = 1;
    for(; y <=10; x++){         // for ciklus 10-ig
        if(prim_e(x)){          //Megn�zz�k Pr�m-e
            printf("%d ", x);   //Ha pr�m ki�rjuk
            y++;
        }
    }
    return 0;
}
