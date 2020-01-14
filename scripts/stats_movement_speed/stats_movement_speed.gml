/// @description get the movement speed
/// @param o

gml_pragma("forceinline");
var o = argument0;
return o.movement_speed_base * o.movement_speed_factor + o.movement_speed_offset;