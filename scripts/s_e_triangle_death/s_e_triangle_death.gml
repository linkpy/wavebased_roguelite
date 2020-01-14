
effect_create_above(ef_ring, x, y, 48, c_yellow);
obj_camera.shake_amount += 12;


if( rnd_chance(5) )
	instance_create_layer(x, y, "instances", obj_healing);

if( rnd_chance(85) )
	spawn_coins(x, y, irandom(29)+1);

if( rnd_chance(50) ) {
	var pid = powerup_get_random(
		PowerupRarities.Garbage, PowerupRarities.Rare
	);
	show_debug_message("PID: " + string(pid));
	var i = instance_create_layer(x, y,	"instances", obj_powerup);
	i.powerup_kind = powerup_get_kind(pid);
	i.powerup_id = pid;
}


instance_destroy(id);
