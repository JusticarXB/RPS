
var _eventType = event_data[? "event_type"];
var _message = event_data[? "message"];


if(_eventType == "sequence event"){

	switch(_message){
	
		case "Reverse":
			layer_sequence_xscale(EMSq, -1);
		break;
		
		//Debugging
		case "Debug Chain":
			
			
			switch(i){
					
				case 1:
					EMSq = layer_sequence_create("enemySequence",x,y,sq_3pumpEM);
					i++;
				break;
				
				case 2:
					EMSq = layer_sequence_create("enemySequence",x,y,sq_reveal_paperEM);
					i++;
				break;
				
				case 3:
					EMSq= layer_sequence_create("enemySequence",x,y,sq_shake_paperEM);
					i++;
				break;
				
				case 4:
					EMSq = layer_sequence_create("enemySequence",x,y,sq_reveal_rockEM);
					i++;
				break;
				
				case 5:
					EMSq = layer_sequence_create("enemySequence",x,y,sq_shake_rockEM);
					i++;
				break;
				
				case 6:
					EMSq = layer_sequence_create("enemySequence",x,y,sq_reveal_scissorEm);
					i++;
				break;
				
				case 7:
					EMSq = layer_sequence_create("enemySequence",x,y,sq_shake_scissorEM);
					i++;
				break;
				
				default:
					
				break;
			
			}
			
			
		
		
		break;
		
		case "RevealEM":
		
			if(layer_sequence_exists("enemySequence", EMSq)){
			
				layer_sequence_destroy(EMSq);
				EMSq = layer_sequence_create("enemySequence", x,y, global.EMChosen);
			
			}
		
		break;
		
		case "Shaking_EM":
		
			if(layer_sequence_exists("enemySequence", EMSq)){
			
				layer_sequence_destroy(EMSq);
				EMSq = layer_sequence_create("enemySequence", x,y, global.EMChosenShake);
			
			}
		
		break;
		
		case "PlayReverse_EM":
		
			/*if(layer_sequence_exists("enemySequence", EMSq)){
				layer_sequence_destroy(EMSq);
				EMSq = layer_sequence_create("enemySequence", x,y, sq_IdleEM);
			
			}*/
		
			if(layer_sequence_exists("enemySequence", EMSq)){
			
				layer_sequence_destroy(EMSq);
				EMSq = layer_sequence_create("enemySequence", x,y, global.EMChosen);
				layer_sequence_headpos(EMSq, 13);
				layer_sequence_speedscale(EMSq, -1);
				PB = true;
				
			
			}
		
		break;
		
		case "StopReverse_IdleEM":
		
			if(layer_sequence_exists("enemySequence", EMSq) && PB){
				
				PB = false;
				global.EMChosenSelect = false;
				layer_sequence_destroy(EMSq);
				EMSq = layer_sequence_create("enemySequence", x,y,sq_IdleEM);

			
			}
		
		break;
		
		case "EMDealDMG":
		
			if(layer_sequence_exists("enemySequence", EMSq) && !PB){
			
				if(!DMG){
					
					global.health -= global.EMDmg
					global.damageTaken += global.EMDmg
					
					}
			
			}
		
		break;
		
		
		
	
	}
	
	

}
