
if(keyboard_check_pressed(global.key_revert)) global.pause = !global.pause;

if(hasControl){

	if(keyboard_check(global.key_up)) scr_movement(directions.up);
	if(keyboard_check(global.key_right)) scr_movement(directions.right);
	if(keyboard_check(global.key_down)) scr_movement(directions.down);
	if(keyboard_check(global.key_left)) scr_movement(directions.left);

}else{

	state = states.idle;

}


//player movement
if(state == states.moving){

	walk_anim_time += 1/game_get_speed(gamespeed_fps);
	
	var t = walk_anim_time / walk_anim_length
	
	if(t >= 1){
		walk_anim_time = 0;
		t = 1;
		state = states.idle;
	}
	
	var _x = lerp(xFrom, xTo, t);
	var _y = lerp(yFrom, yTo, t);
	
	x = _x* tile_width;
	y = _y * tile_height;
}

//stop character from moving and checks to see if there is a fight after the textbox is destroyed
if(instance_exists(obj_textbox)) hasControl = false;
else{ 
	hasControl = true;
	if(global.incomingFight){ 
		
		room = rm_fight
		hasControl = false;
		global.incomingFight = false;
		}
}

