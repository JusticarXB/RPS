

if(global.styleChange){

	global.styleChange = false;
	if(layer_sequence_exists("playerSequence", PCsq)){
		layer_sequence_destroy(PCsq);
		PCsq = layer_sequence_create("playerSequence", x,y,sq_1pump);
		
	}
	

}

if(global.chosen){

	if(layer_sequence_exists("playerSequence", PCsq)){
		
		if((layer_sequence_get_sequence(PCsq).name != "sq_3pump") && (layer_sequence_get_sequence(PCsq).name == "sq_1pump" || layer_sequence_get_sequence(PCsq).name == "sq_Idle")){
			layer_sequence_destroy(PCsq);
			PCsq = layer_sequence_create("playerSequence", x,y, sq_3pump)
		}
	}

}

