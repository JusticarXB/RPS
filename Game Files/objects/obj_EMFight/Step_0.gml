

if(global.EMChosenSelect){

	if(layer_sequence_exists("enemySequence", EMSq)){
		
		if(layer_sequence_get_sequence(EMSq).name != "sq_3pumpEM" && (layer_sequence_get_sequence(EMSq).name == "sq_1pumpEM" || layer_sequence_get_sequence(EMSq).name == "sq_IdleEM")){
			layer_sequence_destroy(EMSq);
			EMSq = layer_sequence_create("enemySequence", x,y, sq_3pumpEM)
		}
		
	}

}




