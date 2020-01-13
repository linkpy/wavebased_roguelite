/// @description get the fire spread
/// @param o

var o = argument0;
return max(o.fire_spread_base * (1 + o.fire_spread_factor) + o.fire_spread_offset, 0);