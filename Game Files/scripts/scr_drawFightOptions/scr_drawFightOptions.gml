with(obj_fight){

	textX = 6*rW /15;
	textY = rH - (rH/5);
	loadLen = array_length(global.styleLoadout);
	
	
	
	
	for(i = 0; i < loadLen; i++){
	
		global.styleSelect = global.styleLoadout[i];
		var textc = c_white;	
		if(currentStyle == i){
			
			if(chosen) textc = c_orange;
			else textc = c_yellow;
			
			
			}
		
		
		for(j = 0; j < 3; j++){
			if(j != 1){
				
				var text = ds_grid_get(fightStyles,j,global.styleSelect);
				draw_text_transformed_color(textX + 90 * j, textY, text,1,1,0,textc, textc,textc,textc,1);
			
			}
			
			
	}
		
	textY += 65;
	
	}
	
	

}