/// @description hurt an object
/// @param obj
/// @param amnt
/// @param col

if( not argument0.can_be_hurt )
	return;

argument0.health_points -= argument1

spawn_damage_indicator(argument0.x, argument0.y, string(round(argument1)), argument2);

if( argument0.health_points <= 0 )
{
	if( argument0.death_script != noone )
		with(argument0) 
			script_execute(argument0.death_script);
}
else
	if( argument0.hurt_state != noone )
		with(argument0)
			fsm_switch_state(argument0.hurt_state)