

//title
draw_set_font(fnt_KidGames);
draw_set_valign(fa_top);
draw_set_halign(fa_center);

draw_text_ext_transformed_color(room_width/2, room_height/4, "RULE THE PLAYGROUND SCHOOLYARD", 50, 500, 2,2, 0, c_white,c_white,c_white,c_white,1);

//credits
credits = ["ALYSSA GUGNEJA: PRODUCER", "RONALD VANG: DESIGNER", "STARR RATHBONE: ARTIST", "XANDER BRUCE: PROGRAMMER"];
creditColors = [c_white, c_blue, c_green, c_red];
creditLen = array_length(credits);


for(i = 0; i < creditLen ; i++){

	draw_text_ext_transformed_color(room_width/2, (room_height/2) + 25 * i,credits[i], 10,500,1,1,0,creditColors[i],creditColors[i],creditColors[i],creditColors[i],1);

}

//Press spacenbar
draw_text_transformed(room_width/2, room_height - (room_height/3), "PRESS SPACEBAR TO RETURN TO START", 1,1,0);

//statistics
for(i = 0; i<=2; i++){
	switch(i){
		case 0:
			draw_text_color(room_width/2,room_height-room_height/4, "LOSSES: " + string(global.losses), c_white,c_white,c_white,c_white, 1);
		break;
		case 1:
			draw_text_color(room_width/2,(room_height-room_height/4) + 25 *i, "TOTAL DAMAGE TAKEN: " + string(global.damageTaken), c_white,c_white,c_white,c_white, 1);
		break;
		case 2:
			draw_text_color(room_width/2,(room_height-room_height/4) + 25 *i, "TOTAL DAMAGE DEALT: " + string(global.damageGiven), c_white,c_white,c_white,c_white, 1);
		break;
	}
}