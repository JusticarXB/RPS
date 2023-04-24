
var _eventType = event_data[? "event_type"];
var _message = event_data[? "message"];

if(_eventType == "sequence event"){

	switch(_message){
		
		case "playIdle":
		
			if(layer_sequence_exists("playerSequence", PCsq)){
			
			layer_sequence_destroy(PCsq);
			PCsq = layer_sequence_create("playerSequence", x,y, sq_Idle);
			
			}
		
		break;
		
	
		case "Reveal":
		
			if(layer_sequence_exists("playerSequence", PCsq)){
				
				layer_sequence_destroy(PCsq);
				PCsq = layer_sequence_create("playerSequence",x,y, global.PCChosen);
				
			}
		
		break;
		
		case "Shaking_PC":
		
			if(layer_sequence_exists("playerSequence", PCsq)){
			
				layer_sequence_destroy(PCsq);
				PCsq = layer_sequence_create("playerSequence", x,y, global.PCChosenShake);
			
			}
		
		break;
		
		case "PlayReverse":
	
			if(layer_sequence_exists("playerSequence", PCsq)){
			
				layer_sequence_destroy(PCsq);
				PCsq = layer_sequence_create("playerSequence", x,y, global.PCChosen);
				layer_sequence_headpos(PCsq, 13)
				layer_sequence_speedscale(PCsq, -1);
				PB = true;
			
			
			}
		
		break;
		
		case "StopReverse_Idle":
		
			if(layer_sequence_exists("playerSequence", PCsq) && PB){
				
				PB = false;
				global.chosen = false;
				layer_sequence_destroy(PCsq);
				PCsq = layer_sequence_create("playerSequence", x,y,sq_Idle);
				global.combatPhase = fightState.endTurn;
			
			}
		
		break;
		
		case "PCDealDMG":
		
			if(layer_sequence_exists("playerSequence", PCsq) && !PB){
			
				if(!DMG){ 
					
					global.EmHealth -= global.playerDmg;
					global.damageGiven += global.playerDmg
					
				}
			
			}
		
		break;
	
	}


}