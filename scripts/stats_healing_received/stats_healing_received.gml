/// @description get healing recevied
/// @param o

gml_pragma("forceinline");
var o = argument0
return o.healing_received_base * o.healing_received_factor + o.healing_received_offset;