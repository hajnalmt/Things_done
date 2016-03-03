"use strict";
 
var tomb = [1, 2, 3];
var osszeg = 0;
 
/*for (var i = 0; i < tomb.length; ++i) {
    osszeg = osszeg + tomb[i];
}
 
for (var elem of tomb) {
    osszeg = osszeg + elem;
}
 
console.log(osszeg);*/
 
function osszegzes(tomb) {
    var osszeg = 0;
   
    for (var elem of tomb) {
        osszeg = osszeg + elem;
    }
   
    return osszeg;
}
 
var osszeg = osszegzes(tomb);
 
console.log(osszeg);
 
var hallgatok = [
    {
        nev: "Sándor",
        neptunKod: "xxxxxx"
    },
    {
        nev: "István",
        neptunKod: "yyyyyy"
    }
];
 
for (var hallgato of hallgatok) {
    console.log(hallgato.nev + " (" + hallgato.neptunKod + ")");
    console.log(`${hallgato.nev} (${hallgato.neptunKod})`);
}
 
// többsoros karakterlánc
var szoveg1 = `
    <form>
        <label></label>
    </form>`;
 
function ismetel(mit, hanyszor) {
    var eredmeny = "";
   
    for (var i = 0; i < hanyszor; ++i) {
        eredmeny += mit;
    }
   
    return eredmeny;
}
 
function piramis(n) {
    for (var i = 1; i <= n; ++i) {
        console.log(ismetel('0', i));
    }
    for (var i = n - 1; i >= 1; --i) {
        console.log(ismetel('0', i));
    }
}
 
piramis(4);
 
// 0
// 00
// 000
// 0000
// 000
// 00
// 0
 
var szemely = {
    nev: "Sándor",
    koszon: function () {
        console.log(`Hello ${szemely.nev}!`);
    }
};
 
// Feltételes maximum kiválasztás
// smile : egész szám -> :)
 
// _______0____
// ________0___
// __0______0__
// _________0__
// __0_____0___
// _______0____