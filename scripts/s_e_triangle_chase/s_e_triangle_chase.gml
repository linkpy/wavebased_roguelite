//


if argument0 == ev_step and argument1 == ev_step_normal {
	var dir = point_direction(x, y, player.x, player.y);
	
	image_angle = dir;
	
	var dx = lengthdir_x(1, dir);
	var dy = lengthdir_y(1, dir);
	
	obj_move(dx, dy, stats_movement_speed(id));
	
	if( place_meeting(x, y, obj_player) )
		obj_hurt(obj_player, stats_damages(id), c_red);
}