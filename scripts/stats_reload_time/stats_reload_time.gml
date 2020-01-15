/// @description get invulnerability time
/// @param o

gml_pragma("forceinline");
var o = argument0;
return o.reload_time_base * o.reload_time_factor + o.reload_time_offset;