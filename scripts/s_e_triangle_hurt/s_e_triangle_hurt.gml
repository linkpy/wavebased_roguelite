
if( argument0 == ev_create ) {
	sprite_index = spr_enemy_triangle_white;
	alarm[0] = 5;	
}

if( argument0 == ev_destroy ) 
	sprite_index = spr_enemy_triangle;

if( argument0 == ev_alarm and argument1 == 0 )
	fsm_switch_state(s_e_triangle_chase)