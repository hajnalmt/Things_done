"use strict";

// Segédfüggvények
function $(s) {
    return document.querySelector(s);
}

function $$(s) {
    return document.querySelectorAll(s);
}

var items = $$("li");
var letters = ['a', 'b', 'c', 'd', 'e'];

function hello() {
    console.log("Hello");
}

for (var i = 0; i < items.length; ++i) {
    items[i].innerHTML = letters[i];
}

var bemenet = $("#bemenet");

console.log(bemenet.value);
console.log(bemenet.style);
console.log(bemenet.id);

var button1 = $("#button1");
var output = $("#output");

function repeat() {
    var n = parseInt(bemenet.value);
    var eredmeny = "";
    
    for (var i = 1; i <= n; ++i) {
        eredmeny += `<li style="font-size: ${10 * i}px">
            Helló Világ!
        </li>`;
    }
    
    output.innerHTML = eredmeny;
}

button1.addEventListener("click", repeat, false);

var button2 = $("#button2");
var bemenet2 = $("#bemenet2");
var bemenet3 = $("#bemenet3");

var honnan;
var hova;

bemenet2.addEventListener("input", function () {
    honnan = bemenet2;
    hova = bemenet3;
}, false);

bemenet3.addEventListener("input", function () {
    honnan = bemenet3;
    hova = bemenet2;
}, false);

button2.addEventListener("click", function () {
    hova.value = honnan.value;
}, false);

// var kerulet = 2 * r * Math.PI;

var addRowButton = $("#addRow");
var table = $("table > tbody");

var a = $("#a");
var b = $("#b");
var c = $("#c");

addRowButton.addEventListener("click", function () {
    var row = `<tr>
        <td>${a.value}</td>
        <td>${b.value}</td>
        <td>${c.value}</td>
    </tr>`;
    
    table.innerHTML += row;
}, false);
