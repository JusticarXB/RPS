
if(keyboard_check_pressed(global.key_revert) && room != rm_fight){
	if(!instance_exists(obj_textbox)) global.pause = !global.pause;
		
}
if(global.pause) hasControl = false;


if(hasControl){

	if(keyboard_check(global.key_up)) scr_movement(directions.up);
	if(keyboard_check(global.key_right)) scr_movement(directions.right);
	if(keyboard_check(global.key_down)) scr_movement(directions.down);
	if(keyboard_check(global.key_left)) scr_movement(directions.left);

}else{

	state = states.idle;

}

if(room == rm_sandbox){

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
	
	
		if(tilemap_get(sand_map, xPos,yPos)){
	
			var sd = snd_sand;
		
			if(!audio_is_playing(sd)){
		
				audio_play_sound(sd,4,false);
			
			}
	
		}
	
	
		if(tilemap_get(grass_map, xPos,yPos)){
	
			var gd = snd_grass;
		
			if(!audio_is_playing(gd)){
		
				audio_play_sound(gd,4,false);
			
			}
	
		}
	
	
	}

}
	//stop character from moving and checks to see if there is a fight after the textbox is destroyed
	if(instance_exists(obj_textbox)) hasControl = false;
	else{ 
		hasControl = true;
		if(global.incomingFight){ 
		
			global.incomingFight = false;
			layer_sequence_create("sequenceLayer",camera_get_view_x(view_camera[0]) + 640,camera_get_view_y(view_camera[0])+320,sq_fightStart);
			hasControl = false; 
		}
	}

