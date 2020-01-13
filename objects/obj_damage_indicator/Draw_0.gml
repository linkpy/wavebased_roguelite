// @description


var alpha = 1

if( lifetime < DAMAGE_INDICATOR_LIFETIME / 2 )
	alpha = lifetime / DAMAGE_INDICATOR_LIFETIME * 2;

draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fnt_ingame);
draw_text_color(
	x, y, 
	string(round(amount)),
	color, color, color, color,
	alpha
);