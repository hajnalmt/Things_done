/* Levendovszky Tiham�r 2007 */

#include <iostream>
#include <stdexcept>// Ebben van az exception ososzt�ly
using namespace std;

// FIGYELEM! Ebben az �llom�nyban tal�lhat� feladatok megold�sai �s k�vetkeztet�sei a z�rthelyi
// anyag�nak s�lyponti r�sze! Az egyes k�rd�sekre adott v�laszt �rdemes kijegyzetelni a f�zetbe!

// I. Tegy�nk egy t�r�spontot a main() f�ggv�ny elej�re! Debuggoljuk v�gig a k�dban tal�lhat� h�rom
// vari�ci�t (I.1., I.2., I.3) l�p�senk�nt! Figyelj�k meg, hogyan ad�dik �t a vez�rl�s a catch
// blokkokra! Hol folytat�dik a vez�rl�s egy kiv�tel elkap�sa eset�n, �s hol folytat�dik egy�bk�nt?
// Mikor melyik jelz�seken megy �t a vez�rl�s?

// II. Tegy�k megjegyz�ss� a k�dot �gy, hogy csak a coutot tartalmaz� sorok �s az elso throw-t
// tartalmaz� sor legyen �rv�nyes! Hova ker�lt a vez�rl�s a throw utas�t�sr�l a jelz�sek t�kr�ben?
// Hogyan reag�l az oper�ci�s rendszer a programon bel�l el nem kapott kiv�telre?
// Mi�rt szoktuk a main() f�ggv�nyt k�r�lvenni az al�bbihoz hasonl� try-catch
// blokkokkal, �s a main f�ggv�ny �sszes "hasznos" k�dj�t a try blokkon bel�l elhelyezni?
// Ha Visual C++-t haszn�lunk, pr�b�ljuk ki a jelens�get Release �zemm�dban is!
// (Ezt l�tja a felhaszn�l�).

int main()
{
	try
	{
		// I.1. Pr�b�ljuk ki mi t�rt�nik akkor, ha nem dob�dik kiv�tel egy try blokkban!
		// Ez azt jelenti, hogy minden rendben volt.

		// I.2. Elosz�r dobjunk egy oszt�ylk�nyvt�rbeli kiv�telt. Ez minden "tisztess�ges"
		// kiv�tel ososzt�lya, a k�d mutatja az alapveto muk�d�s�t: megadunk egy hiba�zenetet
		// a konstruktorban, amit majd a what() tagf�ggv�nnyel �ratunk ki. Ehhez t�vol�tsuk
		// el a k�vetkezom sor elol a megjegyz�s jelet!

		//throw runtime_error("Baj van");

		// I.3. Tegy�k �jra megjegyz�ss� az elozo sort. M�sodikk�nt pr�b�ljuk ki a "tisztess�gtelen"
		// kiv�teldob�st. Ez azt jelenti, hogy nem az exception oszt�lyb�l sz�rmaztatjuk, hanem
		// egy be�p�tett t�pust dobunk. Ehhez t�vol�tsuk el a k�vetkezom sor elol a megjegyz�s jelet!

		throw "Baj van!";

		// Ide tesz�nk egy jelz�st
		cout<< "Checkpoint 1 - no error"<<endl;
	}
	catch(const exception& e)
	{
		cerr<<"Application error: "<<e.what()<<endl;
	}
	catch(...)
	{
		// Itt nem tudunk semmit sem ki�rni, hiszen nem kapjuk meg a param�tert. Fogalmunk
		// sincs a t�nyleges hib�r�l. Az�rt �rtuk ide, hogy mi l�pj�nk ki az alkalmaz�sb�l,
		// ne az oper�ci�s rendszer k�z�lje a hib�t a felhaszn�l�val.

		// Az egyszeru t�pusok �ltal�ban itt landolnak, mert nem �runk mindegyikre
		// catch blokkot (pl. catch(const char* e), catch (int e), stb.), mert az sok k�d,
		// nem sz�p. Ez�rt sz�rmaztassunk mindig az exception oszt�lyb�l.

		cerr<<"Unexpected error. Please restart the program."<<endl;
	}


	// Ide tesz�nk egy jelz�st (Itt mindk�t esetben - ha volt hiba, ha nem �tmegy a vez�rl�s)
	cout<< "Checkpoint 2 - both cases"<<endl;
	getchar();
	return 0;
}

