
//Player states, one for moving, and one for when the player is idling
enum states {

	idle,
	moving

}

//base state is idle
state = states.idle;

//saving the values for the players current position on the grid
xPos = x div tile_width;
yPos = y div tile_height;

//saving the former position of the player on the grid initially it is the current position
xFrom = xPos;
yFrom = yPos;

//saving the next position for the player on the grid when they move intially current position
xTo = xPos;
yTo = yPos;

//walk speed serves also as how short the animations and for the how long the animation is
walk_anim_length = 0.2;
walk_anim_time = 0;

//saves the tile layer barrier to be used for collision in the movement script
var tile_layer = layer_get_id("tl_barrier");
tile_map = layer_tilemap_get_id(tile_layer);
var grass_layer = layer_get_id("tl_grass");
grass_map = layer_tilemap_get_id(grass_layer);
var concrete_layer = layer_get_id("tl_concrete");
concrete_map = layer_tilemap_get_id(concrete_layer);
var sand_layer = layer_get_id("tl_sand");
sand_map = layer_tilemap_get_id(sand_layer);



//determines whether the player is able to have control
hasControl = true;

//tells if there is an incoming fight
global.incomingFight = false;


