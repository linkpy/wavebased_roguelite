/// @description
/// @param pl_id
/// @param id

if( not powerups_has(argument0.powerups_list, argument1) )
	return;

for( var i = 0; i < ds_list_size(argument0.powerups_list); i++ ) {
	var item = argument0.powerups_list[| i];
	
	if( item[0] == argument1 ) {
		item[1] -= 1;
		
		powerup_unapply(argument0, argument1);
		
		if( item[1] == 0 )
			ds_list_delete(argument0.powerups_list, i);
		
		return;
	}
}