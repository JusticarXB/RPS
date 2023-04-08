//allows the macros, enums, and components to be used everywhere
gml_pragma("global", "Macros()")


//Sets the tile width and height for the basis of the grid 
#macro tile_width 32
#macro tile_height 32

//allows the use of directions for movement
enum directions	{

	right,
	up,
	left, 
	down

}

//Stores the values for the movement directions, to be used by the movement script
global.components = [];
global.components[directions.right] = [1,0];
global.components[directions.up] = [0,-1];
global.components[directions.left] = [-1,0];
global.components[directions.down] = [0,1];

//fight styles

enum RPS {

	rock,
	paper,
	scissors,
	height


}




