
function change_difficulty(gameChange){
	
	//adjust AI behavior this should just be a numerical value to be used in the fight object
	
	//adjust enemy health also to be used in the fight object
	
	//switch statement for changing either enemies or the player's characteristics
	
	//player should be able to increase health
	
	//player's damage should increase too
	
	//player's weakness damage should be lessened or should be increased
	
	var type = menu_option[page];
	
	if(type == 0){
	
		switch(gameChange){
		
			case 0:
				global.difficultySelect = 0;
				global.EmHealthModifier = 1;
			
			break;
			case 1:
				global.difficultySelect = 1;
				global.EmHealthModifier = 1.25;
			
			break;
			case 2:
				global.difficultySelect = 2;
				global.EmHealthModifier = 1.5;
			
			break;
		
		
		}
	
	
	}else{
	
		switch(gameChange){
		
		case 0:
			global.difficultySelect = 0;
			global.healthModifier = 1;
		
		break;
		
		case 1:
			global.difficultySelect = 1;
			global.healthModifier = 1.25;
		
		break;
		
		
		case 2:
			global.difficultySelect = 2;
			global.healthModifier = 1.5;
		
		break;
		
		
		}
	
	
	
	}
	
}