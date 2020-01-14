/// @description get damages amount
/// @param o

gml_pragma("forceinline");
var o = argument0;
return o.damages_base * o.damages_factor + o.damages_offset;