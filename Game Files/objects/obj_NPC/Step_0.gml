
if(instance_exists(obj_OverworldPC)){

	if(distance_to_object(obj_OverworldPC) < tile_width*2){
		if(place_empty(x,y,obj_talkBox)) instance_create_layer(x,y,"Instances", obj_talkBox);
		
		if(distance_to_object(obj_OverworldPC) < tile_width){
			
			if(keyboard_check_pressed(ord("E"))){
				if(!instance_exists(obj_textbox)){ 
					create_textBox(textID);
				}
			
			}

		}
	
	}

}
