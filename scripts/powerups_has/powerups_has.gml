/// @description
/// @param list
/// @param id

for(var i = 0; i < ds_list_size(argument0); i++ ) {
	var item = argument0[| i];
	if( item[0] == argument1 )
		return true;
}

return false;