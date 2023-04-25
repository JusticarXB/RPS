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

	["RESUME", menu_element_type.script_runner, unpause_game ],
	["CHARACTER",menu_element_type.page_transfer, menu_page.character],
	["SETTINGS", menu_element_type.page_transfer, menu_page.settings],
	["BACK TO MENU", menu_element_type.script_runner, menu_game ]

);

ds_character = create_menu_page(
	
	["STYLES", menu_element_type.page_transfer, menu_page.styles],
	["BACK", menu_element_type.page_transfer, menu_page.main]
	
);

ds_settings = create_menu_page(

	["AUDIO", menu_element_type.page_transfer, menu_page.audio],
	["DIFFICULTY", menu_element_type.page_transfer, menu_page.difficulty],
	["GRAPHICS", menu_element_type.page_transfer, menu_page.graphics],
	["BACK", menu_element_type.page_transfer, menu_page.main]

);


ds_styles = create_menu_page(

	["STYLE 1", menu_element_type.shift, change_style, global.styleLoadout[0], global.availableStyles],
	["STYLE 2", menu_element_type.shift, change_style, global.styleLoadout[1], global.availableStyles],
	["STYLE 3", menu_element_type.shift, change_style, global.styleLoadout[2], global.availableStyles],
	["BACK", menu_element_type.page_transfer, menu_page.character]
	
);

ds_menu_audio = create_menu_page(

	["MASTER", menu_element_type.slider, change_volume, audio_get_master_gain(0), [0,1]],
	["SOUNDS", menu_element_type.slider, change_volume, audio_group_get_gain(AG_Sounds), [0,1]],
	["MUSIC", menu_element_type.slider, change_volume, audio_group_get_gain(Ag_Music), [0,1]],
	["BACK", menu_element_type.page_transfer, menu_page.settings]

);

ds_menu_difficulty = create_menu_page(

	["DIFFICULTY", menu_element_type.shift, change_difficulty, global.difficultySelect, ["EASY","MEDIUM","HARD"] ],
	["PLAYER ASSIST", menu_element_type.shift, change_difficulty, global.difficultySelect, ["A LITTLE","SOME","A LOT"] ],
	["BACK", menu_element_type.page_transfer, menu_page.settings]

);

ds_menu_graphics = create_menu_page(

	["WINDOW MODE", menu_element_type.toggle, change_window_mode, 1, ["FULLSCREEN", "WINDOWED"] ],
	["BACK", menu_element_type.page_transfer, menu_page.settings]
	

);



page = 0;
menu_pages = [ds_menu_main, ds_settings, ds_menu_audio, ds_menu_difficulty, ds_menu_graphics, ds_character, ds_styles];

var i = 0, array_len = array_length(menu_pages);

repeat(array_len){
	menu_option[i] = 0;
	i++;
}

inputting = false;


//audio Groups
audio_group_load(AG_Sounds);
audio_group_load(Ag_Music);


