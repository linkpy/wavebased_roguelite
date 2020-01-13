/// @description 
/// @param x
/// @param y
/// @param amount

while( argument2 >= COIN_GOLD )
{
	var i = instance_create_layer(argument0, argument1, "instances", obj_money);	
	
	i.sprite_index = spr_gold_coin;
	i.amount = COIN_GOLD;
	
	argument2 -= COIN_GOLD;
}

while( argument2 >= COIN_SILVER )
{
	var i = instance_create_layer(argument0, argument1, "instances", obj_money);	
	
	i.sprite_index = spr_silver_coin;
	i.amount = COIN_SILVER;
	
	argument2 -= COIN_SILVER;
}

while( argument2 >= COIN_COPPER )
{
	var i = instance_create_layer(argument0, argument1, "instances", obj_money);	
	
	i.sprite_index = spr_copper_coin;
	i.amount = COIN_COPPER;
	
	argument2 -= COIN_COPPER;
}