// @description

if( global.paused )
	return;

///////////////////////////////////////////////////
// motion
if( motion_speed > 0 )
{
	var dx = lengthdir_x(1, motion_direction);
	var dy = lengthdir_y(1, motion_direction);
	
	if( obj_move(dx, dy, motion_speed) )
		motion_speed = 0;
}

motion_speed = lerp(motion_speed, 0, motion_reduction_factor);


///////////////////////////////////////////////////
// collisions
if( place_meeting(x, y, obj_player) )
	script_execute(collision_script);


////////////////////////////////////////////////////
// proximity magnet
if( distance_to_object(obj_player) < 64 )
{
	motion_direction = point_direction(x, y, obj_player.x, obj_player.y);
	motion_speed = 300;
}


///////////////////////////////////////////////////
// lifetime
lifetime -= delta_time / 1000000.0;

if( lifetime < max_lifetime / 4 )
	image_alpha = lerp(0, 1, lifetime / max_lifetime * 4);

if( lifetime < 0 )
	instance_destroy(id);