// @description

timer -= delta_time / 1000000.0;
image_alpha = (timer / max_timer) / 2.0;

if( timer <= 0 )
	instance_destroy(id);