acceptKey = keyboard_check_pressed(vk_space);

textboxX = camera_get_view_x(view_camera[0]) + 190;
textboxy = camera_get_view_y(view_camera[0]) + 420;


//disabling movement on player
obj_PC.hasControl = false;

if(!setup){


	setup = true;
	draw_set_font(fnt_EarlyGameBoy);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//loop through the pages
	
	for(var p = 0; p<pageNum; p++){
	
		//find how many characters are on each page and store that number in the text length array
		textLength[p] = string_length(text[p]);
		
		//get the x position of the textbox
			//character on the left
		textXOffset[p] = 80;
		portraitXoffset[p] = 8;
	
		//get the x position of the textbox
		if(speaker_sprite[p] == noone) textXOffset[p] = 44;
		
		//setting individual characters and finding where the lines of text should break
		for(var c = 0; c < textLength[p]; c++){
		
			var char_pos = c+1;
			
			//store individual character in the char array
			
			char[c,p] = string_char_at(text[p], char_pos);
			
			//get current width of the line
			var txt_up_to_char = string_copy(text[p], 1,char_pos);
			var currentTxtW = string_width(txt_up_to_char) - string_width(char[c,p]);
			
			//get the last free space
			if(char[c,p] == " ") lastFreeSpace = char_pos+1;
			
			//get the line breaks
			
			if(currentTxtW - line_break_offset[p] > LineW){
			
				line_break_pos[line_break_num[p], p] = lastFreeSpace;
				line_break_num[p]++;
				var txtUpToLastSpace = string_copy(text[p], 1, lastFreeSpace);
				var lastFreeSpaceString = string_char_at(text[p], lastFreeSpace);
				line_break_offset[p] = string_width(txtUpToLastSpace) - string_width(lastFreeSpaceString);
			
			
			}
		
		}
		
		
		for(var c = 0; c< textLength[p]; c++){
		
			var char_pos = c+1;
			var txtX = textboxX  + textXOffset[page] + border;
			var txtY = textboxy + border;
			
			var txt_up_to_char = string_copy(text[p], 1,char_pos);
			var currentTxtW = string_width(txt_up_to_char) - string_width(char[c,p]);
			var txtLine = 0;
			
			for(var lb = 0; lb < line_break_num[p]; lb++){
				//if the current looping character is after a line break
				if(char_pos >= line_break_pos[lb, p]){
				
					var strCopy = string_copy(text[p], line_break_pos[lb, p], char_pos-line_break_pos[lb,p]);
					currentTxtW = string_width(strCopy);
					
					//record the line this character should be on
					txtLine = lb+1; // +1 since lb starts at 0
				
				}
			
			}
			
			
			//add to the x and y coordinates base on the new info
			char_x[c,p] = txtX + currentTxtW;
			char_y[c,p] = txtY + txtLine*line_sep;
		}
	
	}

}
	
	
//typing the text
if(draw_char < textLength[page]){

	draw_char += textSpeed;
	draw_char = clamp(draw_char,0, textLength[page]);
	
	
}


//flip through pages
if(acceptKey){


	//if the typing is done
	if(draw_char == textLength[page]){
	
		//next page
		if(page < pageNum -1){
			
			page++;
			draw_char = 0;
			
		}
		else{
			//link text for options
			if(optionNum > 0){
			
				create_textBox(optionLink_id[option_pos]);
			
			}
			instance_destroy();
		
		}
	
	} 
	//if not done typing
	else{
	
		draw_char = textLength[page];
	
	}
	

}
	
	
//draw textBox
var textB_x = textboxX + textXOffset[page];
var textB_y = textboxy;
textBox_img += textBox_spd;
textBox_sprW = sprite_get_width(textBox_spr);
textBox_sprH = sprite_get_height(textBox_spr);

//draw the speaker
if(speaker_sprite[page] != noone){

	sprite_index = speaker_sprite[page];
	
	//drawing speaker
	draw_sprite_ext(textBox_spr, textBox_img, portraitXoffset[page], textB_y,4, 3, 0, c_white,1);
	draw_sprite_ext(sprite_index, image_index, portraitXoffset[page] + border*3, textB_y + border*2, 4,4,0,c_white,1);
	
	

}
//back of the textbox
draw_sprite_ext(spr_menuBox,textBox_img,textB_x, textB_y, textBoxW/textBox_sprW,textBoxH/textBox_sprH,0,c_white,1 );


//displaying the options
if(draw_char == textLength[page] && page == pageNum -1){

//@note change this
 option_pos += keyboard_check(vk_down) - keyboard_check(vk_up);
 option_pos = clamp(option_pos, 0, optionNum -1);
	
	//draw the options
	var _op_space = 75;
	var _op_brd = 20;
	for(var op = 0; op < optionNum; op++){
	
		//option box
		var oW = string_width(option[op]) + _op_brd*2 + 25
			draw_sprite_ext(textBox_spr, textBox_img,textB_x + 16, textB_y - _op_space* optionNum + _op_space * op, oW/textBox_sprW, (_op_space-1)/textBox_sprH ,0,c_white,1);
	
	
		var selectText = option[op];
	
		if(option_pos == op){
		
			 selectText = string_insert("~", option[op], 0);
		
		}
		
	
		//draw text
		draw_text(textB_x +16 +_op_brd,  textB_y - _op_space* optionNum + _op_space * op + 25, selectText);
		

		}


}


//drawing text
for(var c = 0; c < draw_char; c++){

	draw_text(char_x[c,page], char_y[c,page], char[c,page]);

}

