/// @description get the movement speed
/// @param o

var o = argument0;
return o.movement_speed_base * (1 + o.movement_speed_factor) + o.movement_speed_offset;