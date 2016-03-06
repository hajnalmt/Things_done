#include <stdio.h>
#include <malloc.h>

/* Mivel a függvény nem csak a pointer által mutatott tömböt módosítja, hanem magát a pointert is (malloc), cím szerint kell átadni. */
void fgv(char *alap, char **eredmeny)
{
	int alapHossz;
	int eredmenyHossz;
	int i, j, beirtKarakterek = 0;

	/* Az alap string hosszának mérése lezárónulla nélkül */
	for (alapHossz = 0; alap[alapHossz] != '\0'; alapHossz++) ;

	/* Az eredmény hossza lezárónulla nélkül: L + (L + 2) / 3 - 1 */
	eredmenyHossz = alapHossz + (alapHossz + 2) / 3 - 1;

	/* Memóriafoglalás (lezárónulla miatt +1) */
	(*eredmeny) = (char *)malloc((eredmenyHossz + 1) * sizeof(char));

	/* Lezárónulla írása az eredmény végére */
	(*eredmeny)[eredmenyHossz] = '\0';

	/* j változó értéke az eredménystring utolsó tényleges karakterének indexe (nem a lezárónulláé) */
	/* a lenti ciklusban ezt csökkentgetjük */
	j = eredmenyHossz - 1;

	/* Ciklus az alaphossztól lefelé */
	for (i = alapHossz - 1; i >= 0; i--)
	{
		/* Ha három számot már beírtunk, beírunk egy szünetet */
		if (beirtKarakterek == 3)
		{
			beirtKarakterek = 0;
			(*eredmeny)[j] = ' ';
			j--;
		}
		/* beírjuk a tényleges karaktert az eredménystringbe */
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
