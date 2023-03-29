

enum states {

	idle,
	moving

}


state = states.idle;

xPos = x div tile_width;
yPos = y div tile_height;

xFrom = xPos;
yFrom = yPos;

xTo = xPos;
yTo = yPos;

walk_anim_length = 0.2;
walk_anim_time = 0;

var tile_layer = layer_get_id("tl_barrier");
tile_map = layer_tilemap_get_id(tile_layer);