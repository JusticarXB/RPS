//Needs to be implemented to easily add more styles

var arg, i = 0;

repeat(argument_count){
	arg[i] = argument[i];
	i++;

}

var ds_grid_id = ds_grid_create(3,argument_count);

i = 0; 

repeat(argument_count){

	var styles = arg[i];
	var styleLength = array_length(styles);
	
	var xx = 0;
	
	repeat(styleLength){
	
		ds_grid_id[# xx, i] = styles[xx];
		xx++;
	
	}
	
	i++;
}

return ds_grid_id;