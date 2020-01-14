// @description

if( keyboard_check_pressed(player_id.key_down) )
	selected = -1;

if( keyboard_check_pressed(player_id.key_up) and selected == -1)
	selected = 0;

if( keyboard_check_pressed(player_id.key_left) ) {
	if( selected == -1 )
		selected = 0;
	else
		selected = max(selected - 1, 0);
}

if( keyboard_check_pressed(player_id.key_right) ) {
	var max_idx = 0;
	
	switch( powerup_kind ) {
		case PowerupKinds.Class:		max_idx = 0; break;
		case PowerupKinds.Weapon:		max_idx = 1; break;
		case PowerupKinds.Equipement:	max_idx = 2; break;
	}
	
	if( selected == -1 )
		selected = max_idx;
	else
		selected = min(selected + 1, max_idx);
}

if( keyboard_check_pressed(player_id.key_interact) ) {
	if( selected == -1 ) {
		instance_destroy(id);
		return;
	}
	
	var list = powerups_get_kind_list(player_id.powerups_list, powerup_kind);
	var pid = list[| selected ];
	ds_list_destroy(list);
	
	powerup_remove_from_player(player_id, pid);
	powerup_add_to_player(player_id, powerup_new);
	
	spawn_damage_indicator(
		player_id.x, player_id.y, 
		powerup_get_name(powerup_new), make_color_rgb(0, 255, 255)
	);
	
	instance_destroy(id);
}