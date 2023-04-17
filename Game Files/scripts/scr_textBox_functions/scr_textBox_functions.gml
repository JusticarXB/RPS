function scr_set_defaults_for_text(){

	line_break_pos[0,pageNum] = 999;
	line_break_num[pageNum] = 0;
	line_break_offset[pageNum] = 0;

	speaker_sprite[pageNum] = noone;
}

//@param text
//@param [character]
//
function scr_text(_text){
	
	scr_set_defaults_for_text();
	
	text[pageNum] = _text;
	
	//get character info
	if(argument_count > 1){
	
		switch(argument[1]){
		
		case "Horus":
			speaker_sprite[pageNum] = spr_NPC;
			textBox_spr = spr_menuBox;
		break;
		
		}
	
	}
	
	pageNum++;
}

//@param textID
function create_textBox(textID){
	
	with(instance_create_depth(0,0,-9999,obj_textbox)){
	
		scr_game_text(textID);
	
	}


}

//@param option
//@param linkID
function scr_option(_option,_linkID){

	option[optionNum] = _option;
	optionLink_id[optionNum] = _linkID;
	
	optionNum++;

}