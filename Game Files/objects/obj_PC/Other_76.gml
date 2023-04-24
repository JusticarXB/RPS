var msg = event_data[? "message"];

if(msg == "Room_transfer"){ 
	
	if(instance_exists(obj_OverworldPC)){
		xsave =	obj_OverworldPC.x/tile_width;
		ysave = obj_OverworldPC.y/tile_height;
		initsaved = true;
	
	}
	room = rm_fight;
}