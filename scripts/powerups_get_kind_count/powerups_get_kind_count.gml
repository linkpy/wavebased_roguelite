/// @description 
/// @param list
/// @param kind

var res = 0;

for( var i = 0; i < ds_list_size(argument0); i++ ) {
	var item = argument0[| i];
	if( powerup_get_kind(item[0]) == argument1 )
		res++;
}

return res;