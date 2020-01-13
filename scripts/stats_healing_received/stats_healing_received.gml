/// @description get healing recevied
/// @param o

var o = argument0
return o.healing_received_base * (1 + o.healing_received_factor) + o.healing_received_offset;