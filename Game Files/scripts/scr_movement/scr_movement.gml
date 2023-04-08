with(obj_PC){
	//setting up values for directions
	var dir = argument0;
	//collects the values for the movement directions
	var components = global.components[dir];
	//the change in x based on the components array
	var dx = components[0];
	//the change in y based on the components array
	var dy = components[1];
	//Since the entire movement system is based on grid movement, we have to reinstate the actual values of x and y to use in functions
	actualX = (xPos + dx) * tile_width;
	actualY = (yPos + dy) * tile_height;
	
	//if the player characters state is idle then we are allowed to move and takes away control from player
	if(state == states.idle){
		//gets the barrier tile map and and checks if it is in the next square, and checks to if the next square has an NPC and doesn't move into that square
		if(!tilemap_get(tile_map, xPos + dx, yPos + dy) && !place_meeting(actualX,actualY,obj_NPC)){
			//actual movement
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