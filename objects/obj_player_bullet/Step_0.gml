// @description

if( global.paused )
	return;

// trail
ds_list_add(trail_x, x);
ds_list_add(trail_y, y);

if( ds_list_size(trail_x) > trail_limit )
{
	ds_list_delete(trail_x, 0);
	ds_list_delete(trail_y, 0);
}


// collision
var inst = collision_rectangle(
	bbox_left, bbox_top,
	bbox_right, bbox_bottom,
	obj_hurtable, 
	false, true
);

if( inst != noone and not inst.is_player )
{
	obj_hurt(inst, damage_amount, c_white);
	instance_create_depth(x, y, -100, obj_player_bullet_hit_effect);
	instance_destroy(id);
}


// motion
if( obj_move(direction_x, direction_y, movement_speed) )
{
	instance_create_depth(x, y, -100, obj_player_bullet_hit_effect);
	instance_destroy(id);
}