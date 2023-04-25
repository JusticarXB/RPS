#region Selecting option


if(keyboard_check_pressed(global.key_up) && !global.chosen){
	
	if(currentStyle -1 < 0 ) currentStyle = styleLength;
	else currentStyle --;
	global.styleChange = true;
	
}

if(keyboard_check_pressed(global.key_down) && !global.chosen){
	


	if(currentStyle + 1 > styleLength) currentStyle = 0;
	else currentStyle ++;
	global.styleChange = true;
	
}

if(keyboard_check_pressed(global.enter)){ 
	global.chosen = true;
	global.EMChosenSelect =  true;
	}



#endregion

switch(global.combatPhase){

	case fightState.intro:
		
		layer_sequence_create("playerSequence",room_width/2,room_height/2,sq_fightIntro);
		if(!layer_sequence_exists("playerSequence",sq_fightIntro)){
			global.combatPhase = fightState.startTurn;
		}

	break;
	
	case fightState.startTurn:
	
		EmScript = global.EMStyles[irandom_range(0,2)];
		
		global.combatPhase = fightState.wait;	
		
	break;
	
	case fightState.wait:
	
		global.combatPhase = fightState.process;
	break;
	
	case fightState.process:
		global.combatPhase = fightState.checkFinish;
	break;

	case fightState.checkFinish:
		
		
		if(global.chosen){
			
		
			 PCchosenStyleName = ds_grid_get(fightStyles, 0, global.styleLoadout[currentStyle]);
			 EMchosenStyleName = ds_grid_get(fightStyles, 0, EmScript);
			PCStyle = ds_grid_get(fightStyles, 1, global.styleLoadout[currentStyle]);
			EMStyle = ds_grid_get(fightStyles, 1, EmScript);
			
			scr_createQueuedAttack(PCStyle,EMStyle);
				
		}
		
		
		
	break;
	
	case fightState.endTurn:
	
		
	
		if(global.EmHealth <= 0) global.combatPhase = fightState.win;
		else if(global.health <= 0) global.combatPhase = fightState.lose;
		else if(global.health <= 0 && global.EmHealth <= 0) global.combatPhase = fightState.lose;
		else global.combatPhase = fightState.startTurn;
		
	break;
	
	case fightState.win:
		room = rm_sandbox;
		global.exitFight = true;
	break;
	
	case fightState.lose:
		global.losses++;
		room = rm_sandbox;
	break;
}