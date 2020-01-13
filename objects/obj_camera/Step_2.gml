// @description
#macro view view_camera[0]

camera_set_view_size(
	view,
	CAM_VIEW_WIDTH,
	CAM_VIEW_HEIGHT
);


if( instance_exists(obj_player) )
{
	var new_x =
		  lerp(obj_player.x, mouse_x, CAM_DIST_FACTOR)
		- CAM_VIEW_WIDTH / 2.0;
	var new_y =
		  lerp(obj_player.y, mouse_y, CAM_DIST_FACTOR)
		- CAM_VIEW_HEIGHT / 2.0;
	
	//var dir = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
	var recoil_dir = point_direction(mouse_x, mouse_y, obj_player.x, obj_player.y);
	var shake_dir = random_range(0,360);
	
	new_x += lengthdir_x(recoil_amount, recoil_dir);
	new_y += lengthdir_y(recoil_amount, recoil_dir);
	new_x += lengthdir_x(shake_amount, shake_dir);
	new_y += lengthdir_y(shake_amount, shake_dir);
	
	new_x = clamp(new_x, 0, room_width - CAM_VIEW_WIDTH);
	new_y = clamp(new_y, 0, room_height - CAM_VIEW_HEIGHT);
	
	camera_set_view_pos(view, new_x, new_y);
}