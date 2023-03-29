with(obj_PC){
	
	var dir = argument0;
	var components = global.components[dir];
	var dx = components[0];
	var dy = components[1];
	
	actualX = (xPos + dx) * tile_width;
	actualY = (yPos + dy) * tile_height;

	if(state == states.idle){
		
		if(!tilemap_get(tile_map, xPos + dx, yPos + dy) && !place_meeting(actualX,actualY,obj_NPC)){

			xFrom = xPos;
			yFrom = yPos;
	
			xTo = xPos + dx;
			yTo = yPos + dy;
	
			xPos = xTo;
			yPos = yTo;

			state = states.moving;
		}
	}
}