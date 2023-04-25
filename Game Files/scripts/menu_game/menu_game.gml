// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function menu_game(){
	global.pause = false;
	instance_destroy(obj_Pause);
	instance_destroy(obj_OverworldPC);
	instance_destroy(obj_PC);
	room_goto(rm_mainMenu);
}
