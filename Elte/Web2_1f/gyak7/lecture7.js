//Lecture 7 Canvas
"use strict";

function $(s) {
	return document.querySelector(s);
}

var canvas = $("canvas");
//ceruza
var p = canvas.getContext("2d");

p.save();
//kitölti a
p.fillStyle = "purple";
//négyzetet
p.fillRect(0, 0, 100, 100);

//Állítsam vissza mindig? --Nem használjuk a save, restoret!
//p.fillStyle = "black"
p.restore();
//keretezés
p.strokeStyle("red");
p.strokeRect(100, 0, 100, 100);

p.beginPath();
p.arc(250, 50, 50, 0, 2 * Math.PI);

p.fill(); // p.stroke();

p.beginPath();
p.moveTo(0, 480);
p.lineTo(640, 0);
//Ha vonalat akarsz rajzolni az mindig stroke lesz
p.stroke();

//nincs triangle, vonalakat kell használni!
p.beginPath();
p.moveTo(300, 100);
p.lineTo(400, 100);
p.lineTo(350, 0);
p.lineTo(300, 100);
p.fillStyle();