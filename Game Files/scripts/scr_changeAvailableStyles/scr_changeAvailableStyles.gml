///@param #numOfStyleValueToChange 
///@desc activates the style, for the player to be able to use
function scr_changeAvailableStyles(SC){
	
	if(instance_exists(obj_PC)){
		
		with(obj_PC){
		
		//go through the boolean array and add in available styles to select from
		var AVarrayLen = array_length(global.unlockedStyles);
	
			if(SC > 2){
				
				global.unlockedStyles[SC] = true;

				var current = 0;
	
				for(i = 0; i< AVarrayLen-1; i++){
					
					if(global.unlockedStyles[i] == true){
					
						global.availableStyles[current] = possibleStyles[i];
						
						current++;
					
					}
		
		
				}
		
			}
		}
	}
}