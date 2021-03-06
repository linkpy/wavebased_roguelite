// @description

event_inherited();
is_player = true;
fsm_state = p_s_normal;
hurt_state = p_s_hurt;
death_script = p_s_death;

/////////////////////////////////////////////////////////////////////
/// money and items
money = 100;
powerups_list = ds_list_create();

/////////////////////////////////////////////////////////////////////
// input configuration
key_left = PLAYER_DEFAULT_KEY_LEFT;
key_right = PLAYER_DEFAULT_KEY_RIGHT;
key_up = PLAYER_DEFAULT_KEY_UP;
key_down = PLAYER_DEFAULT_KEY_DOWN;
key_interact = PLAYER_DEFAULT_KEY_INTERACT;

/////////////////////////////////////////////////////////////////////
// player invulnerability state
invulnerability_time = 0.0;

/////////////////////////////////////////////////////////////////////
// player attack state
fire_time = 0.0;
fire_recoil = PLAYER_FIRE_RECOIL_AMOUNT;

/////////////////////////////////////////////////////////////////////
// player states
max_health_base = PLAYER_BASE_MAX_HEALTH;
healing_received_base = PLAYER_BASE_HEALING_RECEIVED;
invulnerability_time_base = PLAYER_BASE_INVULNERABILITY_TIME;
movement_speed_base = PLAYER_BASE_MOVEMENT_SPEED;
fire_rate_base = PLAYER_BASE_FIRE_RATE;
fire_spread_base = PLAYER_BASE_FIRE_SPREAD;
damages_base = PLAYER_BASE_DAMAGES;
max_ammo_base = PLAYER_BASE_MAX_AMMO;
magazine_size_base = PLAYER_BASE_MAGAZINE_SIZE;
reload_time_base = PLAYER_BASE_RELOAD_TIME;

health_points = stats_max_health(id);
ammo = stats_max_ammo(id);
magazine = stats_magazine_size(id);