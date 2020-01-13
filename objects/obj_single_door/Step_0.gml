// @description

// Inherit the parent event
event_inherited();


if( bought and open_time > 0 )
{
	open_time -= delta_time / 1000000;
	
	var _displ = (1 - open_time / DOOR_OPEN_TIME) * displacement;
	var dx = lengthdir_x(_displ, image_angle);
	var dy = lengthdir_y(_displ, image_angle);
	
	x = initial_x + dx * _displ;
	y = initial_y + dy * _displ;
}