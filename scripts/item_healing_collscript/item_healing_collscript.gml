// @description

var amnt = stats_healing_received(obj_player)
obj_player.health_points = min( obj_player.health_points + amnt, stats_max_health(obj_player));
spawn_damage_indicator(obj_player.x, obj_player.y, amnt, c_lime);
	
instance_destroy(id);