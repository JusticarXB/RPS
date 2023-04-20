///@arg0 this determiens whether or not the game is fullscreen
function change_window_mode(_current_Window){
		switch(_current_Window){
		
			case 0: window_set_fullscreen(true); break;
			case 1: window_set_fullscreen(false); break;
			
		}
}