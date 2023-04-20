global.pause  = false;
titleX =855;
titleY =130;
title_size = 2;
title_c1 = c_green;
title_c2 = c_white;
titleSpacing =50;

display_set_gui_size(global.view_width, global.view_height);


//creating menu pages
ds_menu_main = create_menu_page(

	["RESUME", menu_element_type.script_runner, resume_game ],
	["SETTINGS", menu_element_type.page_transfer, menu_page.settings],
	["BACK TO MENU", menu_element_type.script_runner, menu_game() ]

);

ds_settings = create_menu_page(

	["AUDIO", menu_element_type.page_transfer, menu_page.audio],
	["DIFFICULTY", menu_element_type.page_transfer, menu_page.difficulty],
	["GRAPHICS", menu_element_type.page_transfer, menu_page.graphics],
	["CONTROLS", menu_element_type.page_transfer, menu_page.controls],
	["BACK", menu_element_type.page_transfer, menu_page.main]

);

ds_menu_audio = create_menu_page(

	["MASTER", menu_element_type.slider, change_volume, 1, [0,1]],
	["SOUNDS", menu_element_type.slider, change_volume, 1, [0,1]],
	["MUSIC", menu_element_type.slider, change_volume, 1, [0,1]],
	["BACK", menu_element_type.page_transfer, menu_page.settings]

);

ds_menu_difficulty = create_menu_page(

	["DIFFICULTY", menu_element_type.shift, change_difficulty, 1, ["EASY","MEDIUM","HARD"] ],
	["PLAYER ASSIST", menu_element_type.shift, change_difficulty, 1, ["A LITTLE","SOME","A LOT"] ],
	["BACK", menu_element_type.page_transfer, menu_page.settings]

);

ds_menu_graphics = create_menu_page(

	["RESOLUTION", menu_element_type.shift, change_resolution, 3, ["640X340", "1024X576", "1366X768","1920X1080"] ],
	["WINDOW MODE", menu_element_type.toggle, change_window_mode, 1, ["FULLSCREEN", "WINDOWED"] ],
	["BACK", menu_element_type.page_transfer, menu_page.settings]
	

);

ds_menu_Controls = create_menu_page(

	["UP", menu_element_type.input, "KEY_UP", vk_up],
	["RIGHT", menu_element_type.input, "KEY_RIGHT",vk_right],
	["LEFT", menu_element_type.input, "KEY_LEFT",vk_left],
	["DOWN", menu_element_type.input, "KEY_DOWN",vk_down],
	["BACK", menu_element_type.page_transfer, menu_page.settings]
);


page = 0;
menu_pages = [ds_menu_main, ds_settings, ds_menu_audio, ds_menu_difficulty, ds_menu_graphics, ds_menu_Controls];

var i = 0, array_len = array_length(menu_pages);

repeat(array_len){
	menu_option[i] = 0;
	i++;
}

inputting = false;


//audio Groups
audio_group_load(AG_Sounds);
audio_group_load(Ag_Music);


