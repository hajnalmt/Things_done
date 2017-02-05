/* Agent Undercover Javascript file */

// Main
function agentUndercover(){
	this.player;
	this.agent;
	this.game = 1;
	this.players = new Array();

	this.minplayers	= 3;
	this.maxplayers = 9;
	
	this.locations = new Array('Repülőgép','Vidámpark','Bank','Tengerpart','Farsangi buli','Kaszinó','Cirkusz','Céges buli','Keresztes hadsereg','Gyógyfürdő','Nagykövetség','Kórház','Szálloda','Katonai támaszpont','Filmforgatás','Night Club','Óceánjáró','Személyvonat','Kalózhajó','Sarkkutató állomás','Rendőrség','Étterem','Iskola','Színház','Műhely','Űrállomás','Tengeralattjáró','Supermarket','Színház','Egyetem','Állatkert');
	
	for(i=0;i<this.locations.length;i++){
		this.locations[i] = new Array(this.locations[i],0);
	}
	
	this.playersNumber = 0;
	this.identified = 0;
	this.location = 0;
	
	this.helped = false;
	
	this.time = 600;
	this.remaining = this.time;
	this.timer = 1000;
	
	this.newGame		= newGame;
	
	this.setPlayers 	= setPlayers;
	this.playersList	= playersList;
	this.newPlayer		= newPlayer;
	this.setName		= setName;
	this.setPassword 	= setPassword;
	
	this.startGame		= startGame;
	
	this.getIdentity	= getIdentity;
	this.startTimer		= startTimer;
	
	this.stopGame		= stopGame;
	this.endGame		= endGame;
	this.gameResult		= gameResult;

	this.setOutput 		= setOutput;
	this.input 			= input;
	this.data			= '';
	
	this.output 	= document.getElementById('textarea');
	this.counter	= document.getElementById('countdown');
	
	this.countdown;
	
	this.nextFunction;
	
	this.commands = new Array('help','exit','remove');
	
	this.help = help;
	this.exit = exit;
	this.remove = remove;
	
	var self = this;
	
	
	
	function input(key){
		var value = self.output.value.split('\n');

		if(key.keyCode == 16){}
		else if(key.key == 'Enter' || key.keyCode == 13){
			var next = true;
			for(i=0;i<self.commands.length;i++){
				if(self.data == self.commands[i]){
					next = false;
					self[self.data]();
					self.data = '';
				}
			}
			if(next && self.nextFunction != undefined){
				self.nextFunction(self.data);
				self.data = '';
			}
		}
		else{
			var letter = self.output.value;
			self.data = value[value.length-1];	
		}
	}
	
	function exit(){
		self.setOutput('',true);
		self.newGame();
	}
	
	function remove(data){
		if(data == undefined){
			self.playersList();
			self.setOutput('Add meg a törlendő játékos nevét!\n');
			self.nextFunction = self.remove;
		}
		else{
			for(i=0;i<self.players.length;i++){
				if(data == self.players[i].name){
					self.players.splice(i,1);
					self.playersList();
				}
			}
		}
	
	}
	
	function newGame(){
		self.remaining = self.time;
		var message = 'Agent Undercover\n\n'
		message += 'A folytatáshoz nyomj entert!\n';
		self.nextFunction = self.setPlayers;
		if(!self.helped){self.nextFunction = self.help;}
		self.setOutput(message,true);
		self.output.focus();
	}
	
	function help(){
		self.setOutput('Parancsok:\n(Ezeket nem használhatod névnek, vagy jelszónak)\n\n',true);
		for(i=0;i<self.commands.length;i++){
			self.setOutput(self.commands[i]+'\n',false);
		}
		self.setOutput('\n',false);
		if(!self.helped){
			self.helped = true;
			self.nextFunction = self.newGame;
		}
	}
	
	function setOutput(message,clear){
		if(clear){
			self.output.value = '';
		}
		self.output.value += message;
	}
	
	function setPlayers(data){
		document.getElementById('link').style.display =  'none';
		if(data > 2 && data <= self.maxplayers){
			if(data < self.playersNumber){
				self.playersNumber = data;
				self.remove();
			}
			else{
				self.playersNumber = data;
				self.newPlayer();
			}
		}
		else if(data > 0 && data < self.minplayers){
			self.setOutput('Legalább 3 játékos szükséges!\n',true);
		}
		else if(data > self.maxplayers){
			self.setOutput('Legfeljebb 8 játékos játszhat!\n',true);
		}
		else if(data == '' || data == undefined){
			self.setOutput('Játékosok száma?\n',true);
		}
	}
	
	function playersList(){
		var list = '';
		if(self.players.length > 0){
			
			for(i=0;i<self.players.length;i++){
				if(self.players[i].name == undefined){
					self.players[i].name = 'noname'+i;
					self.players[i].point = 0;
				}
				
				list += (i+1)+')';
				
				if(self.players.length > 9){
					var space = 1;
					if(i<9){list += '  ';}
					else{list += ' ';}
				}
				else{
					var space = 0;
					list += ' ';
				}
				list += self.players[i].name;
				
				for(j=20;j>self.players[i].name.length+space;j--){
					list += ' ';
				}
				if(self.players[i].point.length == 1){
					list += ' ';
				}
				list += self.players[i].point;
				list += '\n';
			}
			if(self.players.length == self.playersNumber){
				self.nextFunction = self.startGame;
			}
			else{
				self.nextFunction = self.setPlayers;
			}
		}
		else{
			list = '\n';
			self.nextFunction = self.setPlayers;
		}
		self.setOutput(list,true);
	}
	
	function newPlayer(){
		if(self.players.length < self.playersNumber){
			self.player = self.players.length;
			self.players[self.player] = new Object;
			self.setName();
		}
		else{
			self.playersList();
		}
	}
	
	function setName(data){

		self.nextFunction = self.setName;
		if(data == undefined){
			self.setOutput('Hogy hívnak?\n',true);	
		}
		else if(data == ''){
			self.setOutput('Azt kérdeztem, hogy hívnak!\n',true);
		}
		else{
			self.players[self.player].name = data;
			self.players[self.player].point = 0; 
			self.setPassword();
		}
		
	}
	
	function setPassword(data){
		self.nextFunction = self.setPassword;
		if(data == undefined){
			self.setOutput('Válassz egy jelszót!\n',true);
		}
		else if(data == ''){
			self.setOutput('Próbálj másik jelszót!\n',true);
		}
		else{
			var good = true;
			for(i=0;i<self.players.length;i++){
				if(data == self.players[i].password){
					good = false;
				}
			}
			if(good){
				self.players[self.player].password = data;
				self.newPlayer();
			}
			else{
				self.setOutput('Próbálj másik jelszót!\n',true);
			}
		}
	}

	function startGame(){
	
		var rand = new Array();

		while(self.players.length > 0){
			var choose = randomNumber(0,self.players.length-1);
			rand[rand.length] = self.players[choose];
			self.players.splice(choose,1);
		}
		
		self.players = rand;

		var max = 0;
		for(i=0;i<self.players.lenght;i++){
			if(self.players[i].point > 0 && self.players[i].point >= max){
				max = self.players[i].point;
			}
		}
		
		self.agent = randomNumber(0,self.playersNumber-1);
		if(self.players[self.agent].point == max){
			self.agent = randomNumber(0,self.playersNumber -1);
		}
		
		var rand = new Array();
		
		while(self.locations.length > 0){
			var choose = randomNumber(0,self.locations.length-1);
			rand[rand.length] = self.locations[choose];
			self.locations.splice(choose,1);
		}
		
		self.locations = rand;
		
		self.location = randomNumber(0,self.locations.length-1);
		if(self.locations[self.location][1] > 0){
			self.locations[self.location][1]--;
			self.location = randomNumber(0,self.locations.length-1);
		}
		self.locations[self.location][1] += 2;
		self.nextFunction = self.getIdentity;
		self.getIdentity();
	}
	
	function startTimer(){
		document.getElementById('countdown').style.display = 'inherit';
		self.countdown = setInterval(
			function(){
				if(self.remaining > -1){
					self.counter.innerHTML = self.remaining;
					self.remaining--;
				}
				else{
					clearInterval(self.countdown);
					self.counter.innerHTML = 'LEJÁRT AZ IDŐ!';
					self.endGame();
				}
			},self.timer
		);
	}
	
	function getIdentity(data){
		self.player = -1;
		if(self.identified < self.playersNumber){
			if(data == undefined){
				self.setOutput('Add meg a jelszavad!\n',true);
				self.nextFunction = self.getIdentity;
			}
			else{
				self.nextFunction = undefined;
				self.identified = 0;
				for(i=0;i<self.players.length;i++){
					if(data == self.players[i].password){
						self.player = i;
						self.players[i].identified = true;
					}
					if(self.players[i].identified){
						self.identified++;
					}
				}
				if(self.game == self.all || (self.player > -1 && self.agent == self.player)){
					self.setOutput('Te vagy az ügynök!',true);
				}
				else if(self.player > -1){
					self.setOutput('Helyszín: '+self.locations[self.location][0],true);
				}
				else{
					self.setOutput('Hibás jelszó!\n',true);
					self.nextFunction = self.getIdentity;
					return(false);
				}
				var clear = setTimeout(
					function(){
						self.setOutput('',true);
						self.nextFunction = self.getIdentity;
						self.getIdentity();
					},2500
				);
			}
		}
		else{
			self.nextFunction = undefined;
			self.player = -1;
			self.startTimer();
		}
	}
	
	function stopGame(){
		if(confirm('Leállítod a játékot?')){
			self.timer = self.timer/100;
			clearInterval(self.countdown);
			self.startTimer();
		}
	}
	
	function endGame(){
		
		for(i=0;i<self.players.length;i++){
			self.players[i].identified = false;
		}
		if(self.game == self.all){
			self.game++;
			alert('Bocsi, ez csak egy vicc volt. Mindenki ügynök volt!');
		}
		else if(confirm('Az ügynök nyert?')){
			self.game++;
			self.players[self.agent].point += 2;
				
			if(confirm('Az ügynök kitalálta a helyszínt?')){
				self.players[self.agent].point += 2;
			}
		}
		else if(confirm('A civilek nyertek?')){
			self.game++;
			for(i=0;i<self.players.length;i++){
				if(i != self.agent){
					self.players[i].point += 1;
				}
			}
		}
		
		self.identified = 0;
		self.timer = 1000;
		var end = setTimeout(
			function(){
				self.counter.innerHTML = '';
				self.counter.style.display = 'none';
				self.gameResult();
			},2000
		);
	}
	
	function gameResult(){
		self.setOutput('Helyszín: '+self.locations[self.location][0]+'\n'+'Ügynök: '+self.players[self.agent].name+'\n\n');
		self.nextFunction = newGame;
	}
	
	self.all = randomNumber(randomNumber(5,15),30);
	self.newGame();
	
}


var agentUndercover = new agentUndercover();

function randomNumber(min,max,dec){
	var args = arguments.length;
	if(args < 3)	{dec = 0;}
	if(args < 2)	{max = 2147483647;}
	if(args < 1)	{min = 0;}
	return(roundNumber((((max-min)*Math.random())+min),dec));
}
	
function roundNumber(num,dec){
	if (num == undefined)	{console.log('A kerekítendő szám nincs megadva');return(1);}
	if (dec == undefined)	{dec = 0;}
	if (dec == 0)		{return(Math.round(num));}
	else			{return(Math.round(Math.pow(10,dec)*num)/Math.pow(10,dec));}
}
