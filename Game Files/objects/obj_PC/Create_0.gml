
/*This directly corresponds to the fighting style array in the fight object, 
the numbers in this array correspond to a row in the fight style ds_grid
*/
global.styleLoadout = [RPS.rock,RPS.paper,RPS.scissors];

//basic inventory should also be set in here

//any of the story progress should also be set in here for when the game is saved

//basic character info is also in here such as
//name
//money
//time
//health
global.endGame = false;

global.health = 25;

global.damageTaken = 0;
global.damageGiven = 0;

#region progress
global.unlockedStyles = [true,true,true, false,false,false, true, false, false, false,true, true];
	
possibleStyles = ["ROCK", "PAPER", "SCISSOR", "BOULDER", "CARDBOARD", "TRIMMER", "LIZARD", "WATER", "FIRE", "WIND", "KAIJU", "NUKE"];



var current = 0;
var styleLen = array_length(possibleStyles);

global.availableStyles = ["", "", "", "", "", "","","","","","", ""];

for(i = 0; i <styleLen; i++){

	if(global.unlockedStyles[i] == true){
	
		global.availableStyles[current] = possibleStyles[i];
		current++;
	
	}

}
#endregion

xsave = 0;
ysave = 0;
initsaved = false;