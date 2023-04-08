upData = keyboard_check_pressed(global.key_up);
downData = keyboard_check_pressed(global.key_down);
acceptKey = keyboard_check_pressed(global.enter);

optionLen = array_length(option[menuLevel]);

pos += downData - upData;

if(pos >= optionLen) pos = 0;
if(pos < 0 ) pos = optionLen;

if(acceptKey){

var sml = menuLevel

	switch(menuLevel){
		
		
		//start game 
		case 0:
			switch(pos){
			
				case 0: room_goto_next();
				break;
			
			case 1: 
				menuLevel = 1;
			
				break;
			
			case 2:
				game_end();	
				break;
			
			}
			
		break;
			
		case 1:
			
			switch(pos){
				//display
				case 0: 
				menuLevel = 2;
				break;
				//controls
				case 1:
				menuLevel = 3;
				break;
				//audio
				case 2:
				menuLevel = 4;
				break;
				//difficulty
				case 3:
				menuLevel = 5;
				break;
				//back to main menu
				case 4:
					menuLevel = 0;
				break;
				
			break;
							
			}
			
		case 2:
			
		break;
			
		case 3:
		
		break;
			
		case 4:
			
		break;
			
		case 5:
			
		break;
		//set position back
		if(sml != menuLevel) pos = 0;
		
		//correct option length
		optionLen = array_length(option[menuLevel]);
	
	}

}