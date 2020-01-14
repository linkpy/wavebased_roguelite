/// @description
/// @param pl_id
/// @param id


var pl = argument0;
var pid = argument1;
var kind = powerup_get_kind(pid);
var stackable = powerup_is_stackable(pid);
var kindcount = powerups_get_kind_count(pl.powerups_list, kind);

if( not stackable and powerups_has(pl.powerups_list, pid) )
	return POWERUP_NOT_STACKABLE;

switch(kind) {
	case PowerupKinds.Class:
		if( kindcount >= 1 )
			return POWERUP_CHOICE_NEEDED;
		break;
	case PowerupKinds.Weapon:
		if( kindcount >= 2 ) 
			return POWERUP_CHOICE_NEEDED;
		break;
	case PowerupKinds.Equipement:
		if( kindcount >= 3 )
			return POWERUP_CHOICE_NEEDED;
		break;
}
	
var found = false;

for(var i = 0; i < ds_list_size(pl.powerups_list); i++ ) {
	var item = pl.powerups_list[| i];
	
	if( item[0] == pid ) {
		item[1] += 1;
		ds_list_set(pl.powerups_list, i, item);
		found = true;
	}
}

if( not found )
	ds_list_add(pl.powerups_list, [pid, 1]);

powerup_apply(pl, pid);

return POWERUP_ADDED;