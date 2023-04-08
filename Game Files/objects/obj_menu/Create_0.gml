
global.key_up = vk_up;
global.key_right = vk_right;
global.key_down = vk_down;
global.key_left= vk_left;
global.enter = vk_enter;

width = 64;
height = 104;

op_x = 16;
op_y = 32;
space = 24;

pos = 0;
//main menu
option[0,0] = "Start Game";
option[0,1] = "Settings";
option[0,2] = "Quit Game";
//settings
option[1,0] = "Display";
option[1,1] = "Controls";
option[1,2] = "Audio";
option[1,3] = "Difficulty";
option[1,4] = "Back";
//display
option[2,0] = "Resolution";
option[2,1] = "Full Screen";
//Controls
option[3,0] = "Up Key";
option[3,1] = "Right Key";
option[3,2] = "Down Key";
option[3,3] = "Left Key";
option[3,4] = "Back";
//Audio
option[4,0] = "Master";
option[4,1] = "Sound Effects";
//Difficulty
option[5,0] = "Enemy Damage";
option[5,1] = "Enemy AI";
option[5,2] = "Player Damage";
option[5,3] = "Player Health";

optionLen = 0;
menuLevel = 0;