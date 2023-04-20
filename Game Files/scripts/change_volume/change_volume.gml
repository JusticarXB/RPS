
function change_volume(audioChange){
var type = menu_option[page];

switch(type){

	case 0:
		audio_master_gain(audioChange);
	break;
	case 1:
		audio_group_set_gain(AG_Sounds, audioChange,0);
	break;
	case 2:
		audio_group_set_gain(Ag_Music, audioChange,0);
	break;

}

}