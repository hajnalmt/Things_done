"use strict"

function $(s) {
	return document.querySelector(s);
}

var canvas = $("canvas");
//ceruza
var p = canvas.getContext("2d");

//kitölti a
p.fillStyle = "purple";
//négyzetet
p.fillRect(0, 0, 100, 100);
//keretezés
p.strokeStyle("red");
p.strokeRect(100, 0, 100, 100);

p.arc(200, 0, 50, 0, 2 * Math.PI);