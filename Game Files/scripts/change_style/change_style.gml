///@param style that is chaning
function change_style(newStyle){
	var type = menu_option[page];
	
	switch(type){
	
		case 0:
		
			global.styleLoadout[0] = scr_gettingRPS(newStyle);
		
		break;
		
		case 1:
		
			global.styleLoadout[1] = scr_gettingRPS(newStyle);
		
		break;
		
		case 2:
		
			global.styleLoadout[2] = scr_gettingRPS(newStyle);
		
		break;
	
	}
}