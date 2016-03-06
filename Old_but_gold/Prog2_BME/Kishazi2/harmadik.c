#include <stdio.h>
#include <malloc.h>

/* Mivel a f�ggv�ny nem csak a pointer �ltal mutatott t�mb�t m�dos�tja, hanem mag�t a pointert is (malloc), c�m szerint kell �tadni. */
void fgv(char *alap, char **eredmeny)
{
	int alapHossz;
	int eredmenyHossz;
	int i, j, beirtKarakterek = 0;

	/* Az alap string hossz�nak m�r�se lez�r�nulla n�lk�l */
	for (alapHossz = 0; alap[alapHossz] != '\0'; alapHossz++) ;

	/* Az eredm�ny hossza lez�r�nulla n�lk�l: L + (L + 2) / 3 - 1 */
	eredmenyHossz = alapHossz + (alapHossz + 2) / 3 - 1;

	/* Mem�riafoglal�s (lez�r�nulla miatt +1) */
	(*eredmeny) = (char *)malloc((eredmenyHossz + 1) * sizeof(char));

	/* Lez�r�nulla �r�sa az eredm�ny v�g�re */
	(*eredmeny)[eredmenyHossz] = '\0';

	/* j v�ltoz� �rt�ke az eredm�nystring utols� t�nyleges karakter�nek indexe (nem a lez�r�null��) */
	/* a lenti ciklusban ezt cs�kkentgetj�k */
	j = eredmenyHossz - 1;

	/* Ciklus az alaphosszt�l lefel� */
	for (i = alapHossz - 1; i >= 0; i--)
	{
		/* Ha h�rom sz�mot m�r be�rtunk, be�runk egy sz�netet */
		if (beirtKarakterek == 3)
		{
			beirtKarakterek = 0;
			(*eredmeny)[j] = ' ';
			j--;
		}
		/* be�rjuk a t�nyleges karaktert az eredm�nystringbe */
		(*eredmeny)[j] = alap[i];
		j--;
		beirtKarakterek++;
	}
}

int main()
{
	char *szoveg = "123456789";
	char *eredmeny = NULL;
	fgv(szoveg, &eredmeny);
	printf("%s\n", eredmeny);
	free(eredmeny);
	eredmeny = NULL;
	return 0;
}
