///

if( argument0 == ev_create )
{
	sprite_index = spr_player_invulnerable;
	obj_camera.shake_amount += 32;
	
	can_be_hurt = false;
	invulnerability_time = stats_invulnerability_time(id);
	
	fsm_switch_state(p_s_normal);
}