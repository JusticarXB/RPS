
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
draw_healthbar(50,rH-(rH/5),(rW*3)/10,rH-(rH/6),PCHP,c_gray,c_red,c_green,0, true,true);

//enemy health
draw_healthbar(rW-(rW/4), 25, rW-(rW/10), 50, EMHP, c_gray, c_red,c_green,0, true,true);

scr_healthScaling();

#endregion

#region Fight menu

scr_drawFightOptions();
//debug 
draw_text(rW/2,rH/2, currentStyle);

//showing 
if(chosen) scr_drawEndTurn();
#endregion

#endregion

