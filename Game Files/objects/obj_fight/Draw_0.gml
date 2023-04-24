
#region UI Set up
//set-up

#region UI Boxes
	//lower left
	draw_sprite_ext(spr_menuBox,image_index,0,rH-(rH/4), 10,4.21,0,c_white,1);
	//top
	draw_sprite_ext(spr_menuBox, image_index,0,0, 30,2,0,c_white, 1);
	//lower Right
	draw_sprite_ext(spr_menuBox, image_index,640,rH-(rH/4), 20,4.21,0,c_white,1);

#endregion

#region health bars

//player health
var PCHealthBar = (global.health/PCMAX) * 100;
draw_healthbar(50,rH-(rH/5),(rW*3)/10,rH-(rH/6),PCHealthBar,c_gray,c_red,c_green,0, true,true);

//enemy health
var EMHealthBar = (global.EmHealth/EMMAX) * 100;
draw_healthbar(rW-(rW/4), 25, rW-(rW/10), 50, EMHealthBar, c_gray, c_red,c_green,0, true,true);

scr_healthScaling();

#endregion

#region Fight menu

scr_drawFightOptions();

//debug 
//draw_text(rW/2,rH/2, currentStyle);

///////////showing attack///////////////
var textColor = c_white;
draw_set_halign(fa_left);
draw_set_valign(fa_top);
		
var textFinal = "You used: " + PCchosenStyleName;
		
if(global.playerDmg != 0) string_insert(", " + string(global.playerDmg), textFinal, string_length(textFinal) -1);
		
draw_text_color(50, 50, textFinal, textColor,textColor,textColor,textColor,1);
		
textFinal = "They used: " + EMchosenStyleName;
		
if(global.EMDmg != 0) string_insert(", " + string(global.EMDmg), textFinal, string_length(textFinal) -1);
		
draw_text_color(50, 75,textFinal , textColor, textColor,textColor,textColor,1);
#endregion

#endregion

