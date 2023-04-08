
draw_set_font(fnt_EarlyGameBoy);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for(i = 0; i < optionLen; i++){
	var c = c_white;
	if (pos == i) c = c_yellow

	draw_text_color(x + op_x ,y + op_y + space * i, option[menuLevel, i], c,c,c,c,1);

}