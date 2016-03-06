/* Levendovszky Tihamér 2007 */

#include <iostream>
#include <stdexcept>// Ebben van az exception ososztály
using namespace std;

// FIGYELEM! Ebben az állományban található feladatok megoldásai és következtetései a zárthelyi
// anyagának súlyponti része! Az egyes kérdésekre adott választ érdemes kijegyzetelni a füzetbe!

// I. Tegyünk egy töréspontot a main() függvény elejére! Debuggoljuk végig a kódban található három
// variációt (I.1., I.2., I.3) lépésenként! Figyeljük meg, hogyan adódik át a vezérlés a catch
// blokkokra! Hol folytatódik a vezérlés egy kivétel elkapása esetén, és hol folytatódik egyébként?
// Mikor melyik jelzéseken megy át a vezérlés?

// II. Tegyük megjegyzéssé a kódot úgy, hogy csak a coutot tartalmazó sorok és az elso throw-t
// tartalmazó sor legyen érvényes! Hova került a vezérlés a throw utasításról a jelzések tükrében?
// Hogyan reagál az operációs rendszer a programon belül el nem kapott kivételre?
// Miért szoktuk a main() függvényt körülvenni az alábbihoz hasonló try-catch
// blokkokkal, és a main függvény összes "hasznos" kódját a try blokkon belül elhelyezni?
// Ha Visual C++-t használunk, próbáljuk ki a jelenséget Release üzemmódban is!
// (Ezt látja a felhasználó).

int main()
{
	try
	{
		// I.1. Próbáljuk ki mi történik akkor, ha nem dobódik kivétel egy try blokkban!
		// Ez azt jelenti, hogy minden rendben volt.

		// I.2. Eloször dobjunk egy osztáylkönyvtárbeli kivételt. Ez minden "tisztességes"
		// kivétel ososztálya, a kód mutatja az alapveto muködését: megadunk egy hibaüzenetet
		// a konstruktorban, amit majd a what() tagfüggvénnyel íratunk ki. Ehhez távolítsuk
		// el a következom sor elol a megjegyzés jelet!

		//throw runtime_error("Baj van");

		// I.3. Tegyük újra megjegyzéssé az elozo sort. Másodikként próbáljuk ki a "tisztességtelen"
		// kivételdobást. Ez azt jelenti, hogy nem az exception osztályból származtatjuk, hanem
		// egy beépített típust dobunk. Ehhez távolítsuk el a következom sor elol a megjegyzés jelet!

		throw "Baj van!";

		// Ide teszünk egy jelzést
		cout<< "Checkpoint 1 - no error"<<endl;
	}
	catch(const exception& e)
	{
		cerr<<"Application error: "<<e.what()<<endl;
	}
	catch(...)
	{
		// Itt nem tudunk semmit sem kiírni, hiszen nem kapjuk meg a paramétert. Fogalmunk
		// sincs a tényleges hibáról. Azért írtuk ide, hogy mi lépjünk ki az alkalmazásból,
		// ne az operációs rendszer közölje a hibát a felhasználóval.

		// Az egyszeru típusok általában itt landolnak, mert nem írunk mindegyikre
		// catch blokkot (pl. catch(const char* e), catch (int e), stb.), mert az sok kód,
		// nem szép. Ezért származtassunk mindig az exception osztályból.

		cerr<<"Unexpected error. Please restart the program."<<endl;
	}


	// Ide teszünk egy jelzést (Itt mindkét esetben - ha volt hiba, ha nem átmegy a vezérlés)
	cout<< "Checkpoint 2 - both cases"<<endl;
	getchar();
	return 0;
}

