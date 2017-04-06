# Szoftverfejlesztés .NET platformon - Házi feladat #

  * Hallgató: Hajnal Máté
  * Konzulens: Simon Gábor
## Feladat ##

Sima Task karbantartó rendszer. Az egyes Taskokhoz lehet időt beállítani, hogy mikor hajtsuk végre, hogy mennyi ideig tart. A Taskoknak lehet leírást adni, és ki lehet választani, hogy milyen tipusú Taskról van szó. A taskokat XLS formátumban ki is lehet exportálni.

## A kisháziban elérhető funkciók ##
  * Task felvétele, archiválása, végleges törlése
  * Taskok időzítése, tipusának beállítása
  * Taskhoz leírás adása, utólagosan is akár
  * Taskok exportálás XML és XLS formátumban
  * XML fájlok betöltése, importálása

## Alkalmazott alaptechnológiák ##
  * Adatelérés: Entity Framwork Core 
  * Kommunikáció: ASP.NET Core
  * Felület: Windows Forms

## Továbbfejlesztési tervek ##
  * Többfajta be és kimeneti formátum alkalmazása (rtc, doc, pdf)
  * Taskok rendezése, idő és típus szerint
  * Statisztika megjelenítése (Hány task lett végrehajtva, hány van, milyen tipusból stb.)
