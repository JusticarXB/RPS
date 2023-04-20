if(instance_exists(obj_OverworldPC)){

	if(!place_empty(x,y,obj_talkBox)){

		if(distance_to_object(obj_OverworldPC) > tile_width * 2){
			
			instance_destroy(other);
				
		}	
	
	}
	
	

}