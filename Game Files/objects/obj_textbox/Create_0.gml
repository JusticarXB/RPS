depth = -9999;


//textbox parameters
textBoxW = 1000;
textBoxH = 192;
//vertical border
border = 20;
//horizontal border
line_sep = 36;
LineW = textBoxW - border*2;

textBox_spr = spr_menuBox;
textBox_img = 0;
textBox_spd = 0;




page = 0;
pageNum = 0;
text[0] = "";

textLength[0] = string_length(text[0]);

//left value is to identify character, the right value is to determine which page it is on
char[0,0] = "";
char_x[0,0] = 0;
char_y[0,0] = 0;

draw_char = 0;

//options
option[0] = "";
optionLink_id[0] = -1;
option_pos = 0;
optionNum = 0;

//speed for how fast the text is drawn
textSpeed = 1;

setup = false;



//effects
scr_set_defaults_for_text();
lastFreeSpace = 0;



