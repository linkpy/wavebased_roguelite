
effect_create_above(ef_ring, x, y, 48, c_yellow);
obj_camera.shake_amount += 12;


if( rnd_chance(5) )
	instance_create_layer(x, y, "instances", obj_healing);

if( rnd_chance(85) )
	spawn_coins(x, y, irandom(29)+1);


instance_destroy(id);
