/// @description move an object with collision
/// @param vx
/// @param vy
/// @param move_speed

var vx = argument0;
var vy = argument1;
var mspeed = argument2;

var dx = vx * mspeed * delta_time / 1000000.0;
var dy = vy * mspeed * delta_time / 1000000.0;

var collided = false;


// object collision x axis
if( place_meeting(x + dx, y, obj_collidable) ) 
{
	while( not place_meeting(x + sign(dx), y, obj_collidable) )
		x += sign(dx);
	
	dx = 0;
	collided = true;
}

x += dx;


// object collision y axis
if( place_meeting(x, y + dy, obj_collidable) )
{
	while( not place_meeting(x, y + sign(dy), obj_collidable) )
		y += sign(dy);
	
	dy = 0;
	collided = true;
}

y += dy;


return collided;