// @description

timer -= delta_time / 1000000;

if( timer <= 0 )
{
	instance_create_layer(x, y, "instances", obj_enemy_triangle);
	timer = SPAWNER_TIME;
}