/// @description get the fire rate
/// @param o

gml_pragma("forceinline");
var o = argument0;
return o.fire_rate_base * o.fire_rate_factor + o.fire_rate_offset;