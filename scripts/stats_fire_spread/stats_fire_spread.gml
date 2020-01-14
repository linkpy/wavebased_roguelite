/// @description get the fire spread
/// @param o

gml_pragma("forceinline");
var o = argument0;
return max(o.fire_spread_base * o.fire_spread_factor + o.fire_spread_offset, 0);