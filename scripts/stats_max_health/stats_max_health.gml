/// @description get max health
/// @param o

gml_pragma("forceinline");
var o = argument0;
return o.max_health_base * o.max_health_factor + o.max_health_offset;