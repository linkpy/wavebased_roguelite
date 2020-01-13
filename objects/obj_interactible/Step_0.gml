// @description

player_near = distance_to_object(obj_player) < 64;


if( player_near and keyboard_check_pressed(obj_player.key_interact) ) {
	if( obj_player.money >= price_cost ) {
		obj_player.money -= price_cost;
		bought = true;
		
		if( buy_script != noone )
			script_execute(buy_script);
	}
}