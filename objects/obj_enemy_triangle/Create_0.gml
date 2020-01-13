// @description


event_inherited();

max_health_base = 26;
healing_received_base = 0;
movement_speed_base = 200;
fire_rate_base = 0;
fire_spread_base = 0;
damages_base = 3;

health_points = max_health_base;

player = noone;
chase_distance = 256;

fsm_state = s_e_triangle_normal;
hurt_state = s_e_triangle_hurt;
death_script = s_e_triangle_death;