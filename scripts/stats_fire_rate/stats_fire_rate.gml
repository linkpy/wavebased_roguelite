/// @description get the fire rate
/// @param o

var o = argument0;
return o.fire_rate_base * (1 + o.fire_rate_factor) + o.fire_rate_offset;