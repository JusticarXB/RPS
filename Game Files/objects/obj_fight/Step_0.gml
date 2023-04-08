#region Selecting option

if(keyboard_check_pressed(global.key_up) && !chosen){
	
	if(currentStyle -1 < 0 ) currentStyle = styleLength;
	else currentStyle --;
	
}

if(keyboard_check_pressed(global.key_down) && !chosen){

	if(currentStyle + 1 > styleLength) currentStyle = 0;
	else currentStyle ++;

}

if(keyboard_check_pressed(global.enter)) chosen = true;



#endregion

switch(combatPhase){

	case fightState.intro:
		combatPhase = fightState.startTurn;
	break;
	
	case fightState.startTurn:
		EmScript = irandom_range(0,2);
		combatPhase = fightState.wait;	
	break;
	
	case fightState.wait:
		combatPhase = fightState.process;
	break;
	
	case fightState.process:
		combatPhase = fightState.checkFinish;
	break;

	case fightState.checkFinish:
		
		
		if(chosen){
			
			

			if(dialogBlock){ 
				
				dialogBlock = false;
				chosen = false;
				combatPhase = fightState.endTurn;
				}
		}
		
		
		
	break;
	
	case fightState.endTurn:
	
		if(EMHP <= 0) combatPhase = fightState.win;
		else if(PCHP <= 0) combatPhase = fightState.lose;
		else if(PCHP <= 0 && EMHP <= 0) combatPhase = fightState.lose;
		else combatPhase = fightState.startTurn;
		
	break;
	
	case fightState.win:
		room = rm_sandbox;
	break;
	
	case fightState.lose:
		game_restart();
	break;
}