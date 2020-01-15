/// @description get invulnerability time
/// @param o

gml_pragma("forceinline");
var o = argument0;
return round(o.magazine_size_base * o.magazine_size_factor + o.magazine_size_offset);