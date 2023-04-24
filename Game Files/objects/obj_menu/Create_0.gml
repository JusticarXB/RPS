
global.view_width = camera_get_view_width(view_camera[0]);
global.view_height = camera_get_view_height(view_camera[0]);

global.key_revert = vk_escape;
global.key_up = vk_up;
global.key_right = vk_right;
global.key_down = vk_down;
global.key_left= vk_left;
global.enter = vk_enter;

titleX =855;
titleY =130;
title_size = 2;
title_c1 = c_green;
title_c2 = c_white;
titleSpacing =50;

display_set_gui_size(global.view_width, global.view_height);

enum menu_page{

	main,
	settings,
	audio,
	difficulty,
	graphics,
	character,
	styles,
	height


}

enum menu_element_type{

	script_runner,
	page_transfer,
	slider,
	shift,
	toggle,
	input

}

//creating menu pages
ds_menu_main = create_menu_page(

	["NEW GAME", menu_element_type.script_runner, resume_game ],
	["SETTINGS", menu_element_type.page_transfer, menu_page.settings],
	["EXIT", menu_element_type.script_runner, exit_game ]

);



ds_settings = create_menu_page(

	["AUDIO", menu_element_type.page_transfer, menu_page.audio],
	["DIFFICULTY", menu_element_type.page_transfer, menu_page.difficulty],
	["GRAPHICS", menu_element_type.page_transfer, menu_page.graphics],
	["BACK", menu_element_type.page_transfer, menu_page.main]

);

ds_menu_audio = create_menu_page(

	["MASTER", menu_element_type.slider, change_volume, audio_get_master_gain(0), [0,1]],
	["SOUNDS", menu_element_type.slider, change_volume, audio_group_get_gain(AG_Sounds), [0,1]],
	["MUSIC", menu_element_type.slider, change_volume, audio_group_get_gain(Ag_Music), [0,1]],
	["BACK", menu_element_type.page_transfer, menu_page.settings]

);

ds_menu_difficulty = create_menu_page(

	["DIFFICULTY", menu_element_type.shift, change_difficulty, 1, ["EASY","MEDIUM","HARD"] ],
	["PLAYER ASSIST", menu_element_type.shift, change_difficulty, 1, ["A LITTLE","SOME","A LOT"] ],
	["BACK", menu_element_type.page_transfer, menu_page.settings]

);

ds_menu_graphics = create_menu_page(

	["WINDOW MODE", menu_element_type.toggle, change_window_mode, 1, ["FULLSCREEN", "WINDOWED"] ],
	["BACK", menu_element_type.page_transfer, menu_page.settings]
	

);




page = 0;
menu_pages = [ds_menu_main, ds_settings, ds_menu_audio, ds_menu_difficulty, ds_menu_graphics];

var i = 0, array_len = array_length(menu_pages);

repeat(array_len){
	menu_option[i] = 0;
	i++;
}

inputting = false;


//audio Groups
audio_group_load(AG_Sounds);
audio_group_load(Ag_Music);


