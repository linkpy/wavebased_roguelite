// @description

if( global.paused )
	return;

if( not player_near or bought )
	return;


var ww = window_get_width();
var wh = window_get_height();
var sw = string_width(string(price_cost))*2 + 16;
var sh = string_height(string(price_cost))*2;


draw_set_font(fnt_ingame);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_text_transformed(ww/2, wh/2, player_near_text, 2, 2, 0);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_transformed(ww/2-sw/2, wh/2, string(price_cost), 2, 2, 0);
draw_sprite_ext(spr_gold_coin, 0, ww/2+sw/2, wh/2+sh/2-8, 2, 2, 0, c_white, 1);