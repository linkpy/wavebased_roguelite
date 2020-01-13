/// @description get damages amount
/// @param o

var o = argument0;
return o.damages_base * (1 + o.damages_factor) + o.damages_offset;