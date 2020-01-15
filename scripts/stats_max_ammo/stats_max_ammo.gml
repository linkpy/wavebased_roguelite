/// @description get invulnerability time
/// @param o

gml_pragma("forceinline");
var o = argument0;
return round(o.max_ammo_base * o.max_ammo_factor + o.max_ammo_offset);