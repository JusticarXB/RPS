
if(instance_exists(obj_PC)){

	if(distance_to_object(obj_PC) < tile_width*2){
		
		instance_create_layer(x,y,"Instances", obj_talkBox);
		
		if(distance_to_object(obj_PC) < tile_width){
			
			if(keyboard_check_pressed(ord("E"))){
			
				create_textBox(textID);
			
			
			}

		}
	
	}

}
