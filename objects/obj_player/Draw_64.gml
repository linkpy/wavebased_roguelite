// @description

draw_healthbar(
	8, 8, 260, 32,
	(health_points / stats_max_health(id)) * 100,
	c_black, c_red, c_lime,
	0, true, true
);

draw_set_font(fnt_ingame);
draw_set_halign(fa_left);
draw_set_valign(fa_center);

draw_sprite_ext(spr_gold_coin, 0, 24, 64, 2, 2, 0, c_white, 1);
draw_text_transformed(48, 72, string(money), 2, 2, 0);

var xx = window_get_width() - 32;
var yy = 32;

for( var i = 0; i < ds_list_size(powerups_list); i++ ) {
	powerup_draw(powerups_list[| i], xx, yy, 1, 1);
	
	yy += 52;
	
	if( yy >= window_get_height() - 48 ) {
		xx -= 52;
		yy = 32;
	}
}