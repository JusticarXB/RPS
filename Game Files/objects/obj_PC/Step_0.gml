
if(!instance_exists(obj_textbox) && global.endGame){

	room_goto(rm_end);
	global.endGame = false;


}

	global.music = snd_mainMenu;

if(room == rm_sandbox){

	global.music = snd_overworld;
	
	if(!audio_is_playing(global.music)){
	
		audio_play_sound(global.music, 2, true);
	
	}

} else if(room == rm_mainMenu){
	
	global.music = snd_mainMenu;

	if(!audio_is_playing(global.music)){
	
		audio_play_sound(global.music, 2, true);
	
	}
} else if(room == rm_fight){
	
	global.music = snd_fightStart;
	
	if(audio_is_playing(global.music)){
	
		audio_play_sound(global.music, 2, true);
	
	}

}


