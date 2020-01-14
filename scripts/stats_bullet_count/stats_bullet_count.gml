/// @description get invulnerability time
/// @param o

var o = argument0;
var res = o.bullet_count_base * o.bullet_count_factor + o.bullet_count_offset;

show_debug_message(string(res))

if( frac(res) == 0 or not rnd_chance(frac(res)*100) )
	return floor(res);

return ceil(res);