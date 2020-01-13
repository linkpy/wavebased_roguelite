
if argument0 == ev_step and argument1 == ev_step_normal {
	if player == noone {
		if instance_exists(obj_player)
			player = instance_find(obj_player, 0);
		else
			return;
	}
	
	if distance_to_object(player) < chase_distance
		fsm_switch_state(s_e_triangle_chase);
}