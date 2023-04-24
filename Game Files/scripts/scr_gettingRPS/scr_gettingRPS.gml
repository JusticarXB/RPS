// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_gettingRPS(val){

	var str = global.availableStyles[val];

	switch(str){
	
		case "ROCK":
		
			return RPS.rock
		
		break;
		
		case "PAPER":
		
			return RPS.paper
		
		break;
		
		
		case "SCISSOR":
		
		return RPS.scissors
		
		break;
		
		
		case "BOULDER":
		
		return RPS.boulder
		
		break;
		
		
		case "CARDBOARD":
		
		return RPS.cardboard;
		
		break;
		
		
		case "TRIMMER":
		
		return RPS.hedgeTrimmer;
		break;
		
		
		case "LIZARD":
		
		return RPS.lizards
		break;
		
		
		case"WATER":
		
		return RPS.water;
		break;
		
		
		case "FIRE":
		
		return RPS.fire;
		break;
		
		
		case "WIND":
		
		return RPS.wind;
		
		break;
		
		
		case "KAIJU":
		
		return RPS.godzilla;
		break;
		
		
		case"NUKE":
		
		return RPS.nuke;
		
		break;
	
	
	}

}