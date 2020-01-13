// @description

if( not player_near or bought )
	return;


var ww = window_get_width();
var wh = window_get_height();


draw_set_font(fnt_ingame);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_text_transformed(ww/2, wh/2, player_near_text, 2, 2, 0);

draw_set_valign(fa_top);
draw_text_transformed(ww/2, wh/2, string(price_cost), 2, 2, 0);