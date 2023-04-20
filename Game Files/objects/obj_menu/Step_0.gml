

upData = keyboard_check_pressed(global.key_up);
downData = keyboard_check_pressed(global.key_down);
acceptKey = keyboard_check_pressed(global.enter);

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);

if(inputting){

	switch(ds_grid[# 1, menu_option[page]]){

		case menu_element_type.shift:
			var hinput = keyboard_check_pressed(global.key_right) - keyboard_check_pressed(global.key_left);
			if(hinput != 0){
				//audio
				ds_grid[# 3, menu_option[page]] += hinput;
				ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0,array_length(ds_grid[# 4, menu_option[page]]) -1);
			}
			
		break;
		
		case menu_element_type.slider:
		
			switch(menu_option[page]){
				case 0: if(!audio_is_playing(snd_boyMid)) audio_play_sound(snd_boyMid, 7,false,); break;
				case 1: if(!audio_is_playing(snd_boyMid)) audio_play_sound(snd_boyMid, 5, false);break;
				case 2: if(!audio_is_playing(snd_)) audio_play_sound(snd_, 6, false); break;
				
			
			}
		
			var hinput = keyboard_check(global.key_right) - keyboard_check(global.key_left);
			if(hinput != 0){
				//audio
				ds_grid[# 3, menu_option[page]] += hinput*.01;
				ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0,1);
				script_execute(ds_grid[# 2, menu_option[page]], ds_grid[# 3, menu_option[page]]);
			}
		break;
		
		case menu_element_type.toggle:
			var hinput = keyboard_check_pressed(global.key_right) - keyboard_check_pressed(global.key_left);
			if(hinput != 0){
				//audio
				ds_grid[# 3, menu_option[page]] += hinput;
				ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0,1);
				
			}
		break;
		case menu_element_type.input:
			var kk = keyboard_lastkey;
			
			if(kk != vk_enter || kk != vk_escape || kk != vk_space){
				if(kk != ds_grid[# 3, menu_option[page]]) //audio here
				ds_grid[# 3, menu_option[page]] = kk;
				variable_global_set(ds_grid[# 2, menu_option[page]], kk);
			}
			
		break;
		
	}

}else{


	var ochange = downData - upData;
	if(ochange != 0){

		menu_option[page] += ochange;
	
		if(menu_option[page] > ds_height-1) menu_option[page] = 0;
		if(menu_option[page] < 0) menu_option[page] = ds_height -1;
		
		//audio here
	}
}
if(acceptKey){

	switch(ds_grid[# 1, menu_option[page]]){
		case menu_element_type.script_runner: 
		
			script_execute(ds_grid[# 2, menu_option[page]]);
		
		break;
		
		case menu_element_type.page_transfer:
			page = ds_grid[# 2, menu_option[page]];
		break;
		
		case menu_element_type.shift:
		case menu_element_type.slider:
		case menu_element_type.toggle: 
		if(inputting){
			script_execute(ds_grid[# 2, menu_option[page]], ds_grid[# 3, menu_option[page]]);
		}


		case menu_element_type.input:
			inputting = !inputting;
		break;
		
	}
	//audio here 
	
}