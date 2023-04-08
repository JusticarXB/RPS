with(obj_fight){
	
	colorArray = [c_white,c_red,c_orange,c_yellow,c_green];
	colorArrayLen = array_length(colorArray);
	
	#region Player health

	
	HPSplit = PCMAX/colorArrayLen;
	
	var PCHP_C;
	
	var HPTEXT = string(PCHP) + "/" + string(PCMAX);
	
	for(i = 1; i < colorArrayLen+1; i++){
	
		if(PCHP <= HPSplit*i){
		
			PCHP_C = colorArray[i-1];
			break;
		}
	
	}
	
	draw_text_transformed_color(rW/7, rH - (rH/7), HPTEXT,2,2,0, PCHP_C,PCHP_C,PCHP_C,PCHP_C,1);

	#endregion
	
	#region enemy health
	
	EMSplit = EMMAX/colorArrayLen;
	
	var EMHP_C;
	
	var EMHPTEXT = string(EMHP) + "/" + string(EMMAX);
	
	for(i = 1; i < colorArrayLen+1; i++){
	
		if(EMHP <= EMSplit*i){
		
			EMHP_C = colorArray[i-1];
			break;
		}
	
	}
	
	draw_text_transformed_color(rW - rW/5, rH/16, EMHPTEXT,2,2,0, EMHP_C,EMHP_C,EMHP_C,EMHP_C,1);
	
	#endregion
}