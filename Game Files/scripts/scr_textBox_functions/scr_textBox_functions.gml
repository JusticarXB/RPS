function scr_set_defaults_for_text(){

	line_break_pos[0,pageNum] = 999;
	line_break_num[pageNum] = 0;
	line_break_offset[pageNum] = 0;
	
	//variables for every letter/char
	for(var c = 0; c<500; c++){
	
		col_1[c,pageNum] = c_white;
		col_2[c,pageNum] = c_white;
		col_3[c,pageNum] = c_white;
		col_4[c,pageNum] = c_white;
		
		float_text[c,pageNum] = 0;
		float_dir[c,pageNum] = c*20;
		float_speed[c,pageNum] = 1;
		
		shake_text[c,pageNum] = 0;
		shake_dir[c,pageNum] = irandom(360);
		shake_timer[c,pageNum] = irandom(4);
	}
	
	
	speaker_sprite[pageNum] = noone;
	snd[pageNum] = snd_boyMid;
}


///text VFX
///@param 1st_char
///@param last_char
///@param col_1
///@param col_2
///@param col_3
///@param col_4
function scr_txtColor(_start, _end, _col1, _col2, _col3, _col4){

	for(var c = _start; c<=_end; c++){
	
		col_1[c,pageNum-1] = _col1;
		col_2[c,pageNum-1] = _col2;
		col_3[c,pageNum-1] = _col3;
		col_4[c,pageNum-1] = _col4;
	
	}

}

///@param 1st_char
///@param last_char
///@param Float_speed
function scr_textFloat(_start, _end, _floatSpeed){

		for(var c = _start; c<=_end; c++){
	
			float_text[c,pageNum-1] = true;
			float_speed[c,pageNum-1] = _floatSpeed;
		}

}

///@param 1st_char
///@param last_char
function scr_textShake(_start,_end){

	for(var c = _start; c<_end; c++){

		shake_text[c,pageNum-1] =true;

	}

}


///@param text
///@param [character]
function scr_text(_text){
	
	scr_set_defaults_for_text();
	
	text[pageNum] = _text;
	
	//get character info
	if(argument_count > 1){
	
		switch(argument[1]){
		
		case "Horus":
			speaker_sprite[pageNum] = spr_NPC;
			textBox_spr = spr_menuBox;
			snd[pageNum] = snd_boyMid;
		break;
		case "Guilleman":
			speaker_sprite[pageNum] = spr_ken;
			textBox_spr = spr_menuBox;
			snd[pageNum] = snd_boyMid
		break;
		case "Sanguinius":
			speaker_sprite[pageNum] = spr_NPC;
			textBox_spr = spr_menuBox;
			snd[pageNum] = snd_girlMid;
			
		break;
		case "Ken":
			speaker_sprite[pageNum] = spr_ken;
			textBox_spr = spr_menuBox;
			snd[pageNum] = snd_boyMid;
		break;
		case "TutorialTimmy":
			
			speaker_sprite[pageNum] = spr_tutorialTimmy;
			textBox_spr = spr_menuBox;
			snd[pageNum] = snd_boyMid;
			
		break;
		case "Lizard Man":
		
			speaker_sprite[pageNum] = spr_lizardMan;
			textBox_spr = spr_menuBox;
			snd[pageNum] = snd_boyMid;
		
		break;
		
		case "Trim":
		
			speaker_sprite[pageNum] = spr_TrimTanner;
			textBox_spr = spr_menuBox;
			snd[pageNum] = snd_boyMid;
		
		break;
		
		case "Boulder":
		
			speaker_sprite[pageNum] = spr_bruce;
			textBox_spr = spr_menuBox;
			snd[pageNum] = snd_boyMid;
		
		break;
		
		case "Welma":
		
			speaker_sprite[pageNum] = spr_welma;
			textBox_spr = spr_menuBox;
			snd[pageNum] = snd_girlMid;
		
		break;
		
		case "Carolyn":
		
			speaker_sprite[pageNum] = spr_carolyn;
			textBox_spr = spr_menuBox;
			snd[pageNum] = snd_girlMid;
		
		break;
		
		case "Fire Frank":
		
			speaker_sprite[pageNum] = spr_Franklin;
			textBox_spr = spr_menuBox;
			snd[pageNum] = snd_boyMid;
		
		break;
		
		case "Wind Wendy":
		
			speaker_sprite[pageNum] = spr_Wendy;
			textBox_spr = spr_menuBox;
			snd[pageNum] = snd_girlMid;
		
		break;
		
		case "Prince":
		
			speaker_sprite[pageNum] = spr_Prince;
			textBox_spr = spr_menuBox;
			snd[pageNum] = snd_boyMid;
		
		break;
		
		
		}
	
	}
	
	pageNum++;
}

///@param textID
function create_textBox(textID){
	
	with(instance_create_depth(0,0,-9999,obj_textbox)){
	
		scr_game_text(textID);
	
	}


}

///@param option
///@param linkID
function scr_option(_option,_linkID){

	option[optionNum] = _option;
	optionLink_id[optionNum] = _linkID;
	
	optionNum++;

}