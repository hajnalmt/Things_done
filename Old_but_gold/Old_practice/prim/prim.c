#include <stdio.h>
#include <stdlib.h>

int prim_e(int a){              //Prím csekkoló függvény
    int i;
    for(i = sqrt(a); ; i--){    //A számnak a gyökétõl megyünk lefelé
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
        if(prim_e(x)){          //Megnézzük Prím-e
            printf("%d ", x);   //Ha prím kiírjuk
            y++;
        }
    }
    return 0;
}
