// @descrption


if( argument0 == ev_step and argument1 == ev_step_normal ) {
	/////////////////////////////////////////////////////////////////////
	// input gathering

	// movement vector gathering
	var input_vec_x = keyboard_check(key_right) - keyboard_check(key_left);
	var input_vec_y = keyboard_check(key_down) - keyboard_check(key_up);
	// movement vector length
	var input_vec_len = vec_length(input_vec_x, input_vec_y);

	// movement vector normalization
	if( input_vec_len > 1 ) 
	{
		input_vec_x /= input_vec_len;
		input_vec_y /= input_vec_len;
	}


	/////////////////////////////////////////////////////////////////////
	// sprite rotation

	image_angle = point_direction(x, y, mouse_x, mouse_y)


	/////////////////////////////////////////////////////////////////////
	/// shooting

	if( fire_time > 0 )
		fire_time = max(fire_time - delta_time / 1000000.0, 0.0);

	if( reload_time > 0 ) {
		reload_time = max(reload_time - delta_time / 1000000.0, 0.0);
		
		if( reload_time == 0 ) {
			var amnt = min(stats_magazine_size(id), ammo);
			magazine = amnt;
			ammo -= amnt;
		}
	}

	if( fire_time == 0 and reload_time == 0 and magazine > 0 and mouse_check_button(mb_left))
	{
		fire_time = 1 / stats_fire_rate(id);
		magazine -= 1;
		
		if( magazine == 0 ) 
			reload_time = stats_reload_time(id);	
	
		var fire_spread = stats_fire_spread(id);
		var amount = stats_bullet_count(id);
		
		for( var i = 0; i < amount; i++ ) {
			var spread = random_range(-fire_spread, fire_spread);
			var bullet = instance_create_layer(
				x + lengthdir_x(16, image_angle),
				y + lengthdir_y(16, image_angle),
				"instances",
				obj_player_bullet
			);
		
			bullet.damage_amount = stats_damages(id);
			bullet.direction_x = lengthdir_x(1, image_angle+spread);
			bullet.direction_y = lengthdir_y(1, image_angle+spread);
		}
	
		obj_camera.recoil_amount = fire_recoil;
	
		instance_create_depth(
			x + lengthdir_x(16, image_angle),
			y + lengthdir_y(16, image_angle),
			-100,
			obj_fire_light_effect
		);
	}


	/////////////////////////////////////////////////////////////////////
	// invulnerability
	invulnerability_time = max(invulnerability_time - delta_time / 1000000.0, 0);
	
	if( invulnerability_time == 0 ) {
		sprite_index = spr_player;
		can_be_hurt = true;
	}

	/////////////////////////////////////////////////////////////////////
	// movement

	obj_move(input_vec_x, input_vec_y, stats_movement_speed(id));
}