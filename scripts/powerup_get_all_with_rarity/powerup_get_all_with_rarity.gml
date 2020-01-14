/// @description 
/// @param rarity

var res = ds_list_create();
var l = global.powerups;

for( var i = 0; i < ds_grid_height(l); i++ )
	if( powerup_get_rarity(i) == argument0 )
		ds_list_add(res, i);

return res;