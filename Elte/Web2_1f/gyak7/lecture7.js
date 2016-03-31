//Lecture 7 Canvas
"use strict";

function $(s) {
	return document.querySelector(s);
}

/*
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
p.fillStyle(); */

//Kell egy rock nevű kép
//var rock = document.createElement("img");

//rock.src = "rock.gif";
// Az utolsó argumentum alabból false, nem kell kiírni 
//rock.addEvenListener( "load", function () {
//	p.drawImage(rock, 400, 0);
//}, false);

//Játék!

var rock = document.createElement("img");
var ss = document.createElement("img");

var _state = {
	spaceship :{
		x = 270,
		v = 0,
		z = 1
	},
	rocks: []
};

for (var i = 0; i < 32; ++i) {
	var s = Math.floor(Math.random() * 50) + 50;

	_state.rocks[i] = {
		x: Math.random() * 640,
		y: Math.floor(Math.random() * 800) - 900;
		//y: -100,
		//y: 0,
		v: 0,
		w: s,
		h: s
	};
}

var x = 0;
var f;
function frame() {
	f = requestAnimationFrame(frame);

	//console.log(0);
	//először le kell törölni majd újraírni odébb
	p.clearRect(0, 0, 640, 480);
	//p.fillRect(x++, 0, 100, 100);
	//-------------------------------
	
	//Spaceship
	if (_state.spaceship.z )
		p.drawImage (ss, _state.spaceship.x, 380);
	
	//-------------------------------
	_state.spaceship.x += _state.spaceship.v _state.spaceship.z;

	//Rocks
	for (var i = 0; i < _state.rocks.length; ++i) {
		//var r = _state.rocks[i];
		_state[i].y += _state.rocks[i].v;
		if (_state,rocks[i].x + _state.rocks[i].w > _state.spaceship.x + 25
			&& _state.rocks[i].x < _state.spaceship.x + 75
			&& _state.rocks.y + _state.rocks.[i].h > 380
			&& _state.rocks[i].y < 480
		) {
			cancelAnimationFrame(f);

			p.font = "72px san-seriff"

			p.fillText("Game Over", 100, 140);
		}
	}

}

rock.src = "rock.gif";

rock.addEvenListener( "load", function () {
	ss.src = "spaceship.gif";
	ss.addEvenListener("load", function () {
		frame();
	}, false);
} false);

window.addEvenListener("keydown", function (event) {
	//console.log(event.keyCode);

	switch (event.keyCode) {
		case 37:
			_state.spaceship.v = -4;
			break;
		case 39:
			_state.spaceship.v = 4;
			break;
		case 38:
			_state.spaceship.z = 1.5;
	}
})


window.addEvenListener("keyup", function (event) {
	//console.log(event.keyCode);

	switch (event.keyCode) {
		case 37:
		case 39:
			_state.spaceship.v = 0;
	}
})