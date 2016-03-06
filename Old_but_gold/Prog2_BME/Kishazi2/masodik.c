#include <stdio.h>
#include <stdlib.h>

int hossz(char* a)
{
	int i;
	for(i=0;a[i]!='\0';i++);
	return i + 1;
}
void ford1(char* a)
{
    int i=0,j;
    char c;
    for(;a[i]!='\0';i++);
    for(j=0;j<=(int)i/2;j++)
    {
        c=a[j];
        a[j]=a[i-1-j];
        a[i-1-j]=c;
    }
}
char* ford2(char* a)
{
    char* b;
    int i,j;
    b=(char*)malloc(hossz(a));
    for(i=0;a[i]!='\0';i++);
    b[i]=a[i];
    for(j=0;j<i;j++)
    {
        b[j]=a[i-1-j];
    }
    return b;
}
void ford3(char* a,char* b)
{
	int i,j;
	for(i=0;b[i]!='\0';i++);
	a[i]=b[i];
	for(j=0;j<i;j++)
	{
		a[j]=b[i-1-j];
	}
}
int main()
{
    char a[]="egyik", b[]="es a masik", *c=NULL;

    ford1(a);
    printf("1:%s\n",a);        /*1:kiyge*/

    c=ford2(b);
    if(!c) return 1;
    printf("2:%s\n",c);        /*2:kisam a se*/
    free(c);
    c=NULL;

    c=(char*)malloc(hossz(b));
    if(!c) return 1;
    ford3(c,b);
    printf("3:%s\n",c);        /*3:kisam a se*/
    free(c);
    c=NULL;
    return 0;
}
