
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