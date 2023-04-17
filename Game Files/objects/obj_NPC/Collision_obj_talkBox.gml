if(instance_exists(obj_PC)){

	if(distance_to_object(obj_PC) > tile_width * 2){
	
				if(!place_empty(x-15,y,obj_talkBox)){
			
					instance_destroy(other);
					
				}	
	
		}
	
	

}