///@param player_Selected_Attack
///@param enemy_Selected_Attack

global.PCChosen = 1;
global.EMChosen = 1;
global.PCChosenShake = 1;
global.EMChosenShake = 1;

function scr_createQueuedAttack(PCSelectedAttack, EMSelectedAttack){



	switch(PCSelectedAttack){
	
		case RPS.rock:
		
			global.PCChosen = sq_reveal_rock;
			global.PCChosenShake = sq_shake_rock;
			if(EMSelectedAttack == RPS.scissors || EMSelectedAttack == RPS.lizards || EMSelectedAttack == RPS.water || EMSelectedAttack == RPS.fire) global.playerDmg = 5;
			else global.playerDmg = 0;
			
		break;
		
		case RPS.boulder:
			global.PCChosen = sq_reveal_boulder;
			global.PCChosenShake = sq_shake_boulder;
			if(EMSelectedAttack == RPS.scissors || EMSelectedAttack == RPS.lizards || EMSelectedAttack == RPS.water || EMSelectedAttack == RPS.fire) global.playerDmg = 7;
			else global.playerDmg = 0;
		break;
		
		case RPS.paper:
		
			global.PCChosen = sq_reveal_paper;
			global.PCChosenShake = sq_shake_paper;
			if(EMSelectedAttack == RPS.rock || EMSelectedAttack == RPS.wind || EMSelectedAttack == RPS.godzilla || EMSelectedAttack == RPS.nuke) global.playerDmg = 5;
			else global.playerDmg = 0;
			
		break;
		
		case RPS.hedgeTrimmer:
			global.PCChosen = sq_reveal_trimmer;
			global.PCChosenShake = sq_shake_trimmer;
			if(EMSelectedAttack == RPS.paper || EMSelectedAttack == RPS.lizards || EMSelectedAttack == RPS.fire || EMSelectedAttack == RPS.wind) global.playerDmg = 7;
			else global.playerDmg = 0;
		break;
		
		case RPS.scissors:
		
			global.PCChosen = sq_reveal_scissor;
			global.PCChosenShake = sq_shake_scissor;
			if(EMSelectedAttack == RPS.paper || EMSelectedAttack == RPS.lizards || EMSelectedAttack == RPS.fire || EMSelectedAttack == RPS.wind) global.playerDmg = 5;
			else global.playerDmg = 0;
			
		break;
		
		case RPS.cardboard:
		
			global.PCChosen = sq_reveal_cardboard;
			global.PCChosenShake = sq_shake_cardboard;
			if(EMSelectedAttack == RPS.rock || EMSelectedAttack == RPS.wind || EMSelectedAttack == RPS.godzilla || EMSelectedAttack == RPS.nuke) global.playerDmg = 7;
			else global.playerDmg = 0;
		
		break;
		
		case RPS.lizards:
		
			global.PCChosen = sq_reveal_lizard;
			global.PCChosenShake = sq_shake_lizard;
			if(EMSelectedAttack == RPS.paper || EMSelectedAttack == RPS.water || EMSelectedAttack == RPS.nuke || EMSelectedAttack == RPS.fire) global.playerDmg = 5;
			else global.playerDmg = 0;
		
		break;
		
		case RPS.water:
			global.PCChosen = sq_reveal_water;
			global.PCChosenShake = sq_shake_water;
			if(EMSelectedAttack == RPS.fire || EMSelectedAttack == RPS.nuke || EMSelectedAttack == RPS.scissors || EMSelectedAttack == RPS.paper) global.playerDmg = 7;
			else global.playerDmg = 0;
		
		
		break;
		
		case RPS.fire:
		
			global.PCChosen = sq_reveal_fire;
			global.PCChosenShake = sq_shake_fire;
			if(EMSelectedAttack == RPS.nuke || EMSelectedAttack == RPS.scissors || EMSelectedAttack == RPS.paper || EMSelectedAttack == RPS.rock) global.playerDmg = 7;
			else global.playerDmg = 0;
		
		break;
		
		case RPS.wind:
		
			global.PCChosen = sq_reveal_wind;
			global.PCChosenShake = sq_shake_wind;
			if(EMSelectedAttack == RPS.rock || EMSelectedAttack == RPS.fire || EMSelectedAttack == RPS.water || EMSelectedAttack == RPS.scissors) global.playerDmg = 7;
			else global.playerDmg = 0;
		
		break;
		
		case RPS.godzilla:
		
			global.PCChosen = sq_reveal_kaiju;
			global.PCChosenShake = sq_shake_kaiju;
			if(EMSelectedAttack == RPS.nuke || EMSelectedAttack == RPS.lizards || EMSelectedAttack == RPS.paper || EMSelectedAttack == RPS.rock) global.playerDmg = 10;
			else global.playerDmg = 0;
		
		break;
		
		case RPS.nuke:
		
			global.PCChosen = sq_reveal_nuke;
			global.PCChosenShake = sq_shake_nuke;
			if(EMSelectedAttack == RPS.wind || EMSelectedAttack == RPS.scissors || EMSelectedAttack == RPS.rock) global.playerDmg = 15;
			else global.playerDmg = 0;
		
		break;

		


	
	}
	
	switch(EMSelectedAttack){
	
		case RPS.rock:
		
			global.EMChosen = sq_reveal_rockEM;
			global.EMChosenShake = sq_shake_rockEM;
			if(PCSelectedAttack == RPS.scissors || PCSelectedAttack == RPS.lizards || PCSelectedAttack == RPS.water || PCSelectedAttack == RPS.fire) global.EMDmg = 5;
			else global.EMDmg = 0;
			
		break;
		
		case RPS.boulder:
			global.EMChosen = sq_reveal_boulderEM;
			global.EMChosenShake = sq_shake_boulderEm;
			if(PCSelectedAttack == RPS.scissors || PCSelectedAttack == RPS.lizards || PCSelectedAttack == RPS.water || PCSelectedAttack == RPS.fire) global.EMDmg = 7;
			else global.EMDmg = 0;
		break;
		
		case RPS.paper:
		
			global.EMChosen = sq_reveal_paperEM;
			global.EMChosenShake = sq_shake_paperEM;
			if(PCSelectedAttack == RPS.rock || PCSelectedAttack == RPS.wind || PCSelectedAttack == RPS.godzilla || PCSelectedAttack == RPS.nuke) global.EMDmg = 5;
			else global.EMDmg = 0;
			
		break;
		
		case RPS.cardboard:
		
			global.EMChosen = sq_reveal_cardboardEM;
			global.EMChosenShake = sq_shake_cardBoardEM;
			if(PCSelectedAttack == RPS.rock || PCSelectedAttack == RPS.wind || PCSelectedAttack == RPS.godzilla || PCSelectedAttack == RPS.nuke) global.EMDmg = 7;
			else global.EMDmg = 0;
		
		break;
		
		case RPS.scissors:
		
			global.EMChosen = sq_reveal_scissorEm;
			global.EMChosenShake = sq_shake_scissorEM;
			if(PCSelectedAttack == RPS.paper || PCSelectedAttack == RPS.lizards || PCSelectedAttack == RPS.fire || PCSelectedAttack == RPS.wind) global.EMDmg = 5;
			else global.EMDmg = 0;
			
		break;
		
		case RPS.hedgeTrimmer:
			global.EMChosen = sq_reveal_trimmerEm;
			global.EMChosenShake = sq_shake_trimmerEM;
			if(PCSelectedAttack == RPS.paper || PCSelectedAttack == RPS.lizards || PCSelectedAttack == RPS.fire || PCSelectedAttack == RPS.wind) global.EMDmg = 7;
			else global.EMDmg = 0;
		break;
		
		case RPS.lizards:
		
			global.EMChosen = sq_reveal_lizardEM;
			global.EMChosenShake = sq_shake_lizardEM;
			if(PCSelectedAttack == RPS.paper || PCSelectedAttack == RPS.water || PCSelectedAttack == RPS.nuke || PCSelectedAttack == RPS.fire) global.EMDmg = 5;
			else global.EMDmg = 0;
		
		break;
		
		case RPS.water:
			global.EMChosen = sq_reveal_waterEm;
			global.EMChosenShake = sq_shake_waterEM;
			if(PCSelectedAttack == RPS.fire || PCSelectedAttack == RPS.nuke || PCSelectedAttack == RPS.scissors || PCSelectedAttack == RPS.paper) global.EMDmg = 7;
			else global.EMDmg = 0;
		
		
		break;
		
		case RPS.fire:
		
			global.EMChosen = sq_reveal_fireEM;
			global.EMChosenShake = sq_shake_fireEM;
			if(PCSelectedAttack == RPS.nuke || PCSelectedAttack == RPS.scissors || PCSelectedAttack == RPS.paper || PCSelectedAttack == RPS.rock) global.EMDmg = 7;
			else global.EMDmg = 0;
		
		break;
		
		case RPS.wind:
		
			global.EMChosen = sq_reveal_windEm;
			global.EMChosenShake = sq_shake_windEM;
			if(PCSelectedAttack == RPS.rock || PCSelectedAttack == RPS.fire || PCSelectedAttack == RPS.water || PCSelectedAttack == RPS.scissors) global.EMDmg = 7;
			else global.EMDmg = 0;
		
		break;
		
		case RPS.godzilla:
		
			global.EMChosen = sq_reveal_kaijuEM;
			global.EMChosenShake = sq_shake_kaijuEM;
			if(PCSelectedAttack == RPS.nuke || PCSelectedAttack == RPS.lizards || PCSelectedAttack == RPS.paper || PCSelectedAttack == RPS.rock) global.EMDmg = 10;
			else global.EMDmg = 0;
		
		break;
		
		case RPS.nuke:
		
			global.EMChosen = sq_reveal_nukeEM;
			global.EMChosenShake = sq_shake_nukeEM;
			if(PCSelectedAttack == RPS.wind || PCSelectedAttack == RPS.scissors || PCSelectedAttack == RPS.rock) global.EMDmg = 15;
			else global.EMDmg = 0;
		
		break;
		//fill out the rest when finished
	
	}
	


}