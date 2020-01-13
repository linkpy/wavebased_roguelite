/// @description get max health
/// @param o

var o = argument0;
return o.max_health_base * (1 + o.max_health_factor) + o.max_health_offset;