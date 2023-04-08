with(obj_fight){
	if(!dialogBlock){
		
		var chosenStyle = ds_grid_get(fightStyles, 1, currentStyle);
		var chosenStyleName = ds_grid_get(fightStyles, 0, currentStyle);
		//this causes the enemy to use the players load out change to include the specifc enemies loadout
		var EMChosenStyle = ds_grid_get(fightStyles, 1, EmScript);
		var EMChosenStyleName = ds_grid_get(fightStyles, 0, EmScript);
		
		playerDmg = 5;
		EMDmg = 5;
		

		switch(chosenStyle){
	
			case RPS.rock:
				//PC attack
				draw_sprite(spr_handrock,image_index, rW/4,rH/2);
			
				if(EMChosenStyle = RPS.scissors) playerDmg = 10;
				
			
			break;
		
			case RPS.paper:
				//PC attack
				draw_sprite(spr_handPaper,image_index, rW/4,rH/2);
			
				if(EMChosenStyle = RPS.rock) playerDmg = 10;
				
			
			
			break;
		
			case RPS.scissors:
				//PC attack
				draw_sprite(spr_handScissors,image_index, rW/4,rH/2);

				if(EMChosenStyle = RPS.paper) playerDmg = 10;
				
			
			
			break;
	
	
	
		}

		switch(EMChosenStyle){
	
			case RPS.rock:
				//EM attack
				draw_sprite_ext(spr_handrock,image_index, rW-rW/4, rH/2, -1, 1, 0, c_white,1);
			
				if(chosenStyle = RPS.scissors) EMDmg = 10;
				
			
			break;
		
			case RPS.paper:

				//EM attack
				draw_sprite_ext(spr_handPaper,image_index, rW-rW/4, rH/2, -1, 1, 0, c_white,1);
			
				if(chosenStyle = RPS.rock) EMDmg = 10;
				
			
			break;
		
			case RPS.scissors:

				//EM attack
				draw_sprite_ext(spr_handScissors,image_index, rW-rW/4, rH/2, -1, 1, 0, c_white,1);
			
				if(chosenStyle = RPS.paper) EMDmg = 10;
				
			
			break;
	
		}
	
	

		var textColor = c_white;
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		
		var textFinal = "You used: " + string(chosenStyleName)  + ", " + string(playerDmg);
		
		draw_text_color(50, 50, textFinal, textColor,textColor,textColor,textColor,1);
		
		textFinal = "They used: " + string(EMChosenStyleName) + ", " + string(EMDmg);
		
		draw_text_color(75, 75,textFinal , textColor, textColor,textColor,textColor,1);
		
		if(!damageDealt){
			EMHP -= playerDmg;
			PCHP -= EMDmg;
			damageDealt = true;
		}
		
		if( keyboard_check_pressed(vk_space) ){
	
			dialogBlock = true;
			damageDealt = false;
		}
	
	}

}