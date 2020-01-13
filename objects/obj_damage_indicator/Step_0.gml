// @description

var f = lifetime / DAMAGE_INDICATOR_LIFETIME;

y = initial_y - sin(pi * f) * DAMAGE_INDICATOR_BOUNCE_HEIGHT;


// lifetime
lifetime -= delta_time / 1000000;

if( lifetime <= 0 )
	instance_destroy(id);