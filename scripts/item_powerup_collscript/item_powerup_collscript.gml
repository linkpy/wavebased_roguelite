//

var res = powerup_add_to_player(obj_player, powerup_id);

switch(res) {
	case POWERUP_ADDED:
		spawn_damage_indicator(x, y, powerup_get_name(powerup_id), make_color_rgb(0, 255, 255));
		break;
	case POWERUP_NOT_STACKABLE:
		spawn_damage_indicator(x, y, "Already have it!", make_color_rgb(0, 255, 255));
		break;
	case POWERUP_CHOICE_NEEDED:
		var i = instance_create_layer(0, 0, "gui", obj_powerup_select);
		i.powerup_kind = powerup_get_kind(powerup_id);
		i.powerup_new = powerup_id;
		break;
}

instance_destroy(id);