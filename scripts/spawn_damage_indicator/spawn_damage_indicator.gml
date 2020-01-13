/// @description spawn damage indicator
/// @param x
/// @param y
/// @param amount
/// @param color

var i = instance_create_depth(argument0, argument1, -100, obj_damage_indicator);
i.amount = argument2;
i.color = argument3;

return i