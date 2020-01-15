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

var cx = (mouse_x - camera_get_view_x(view)) * CAM_VIEW_SCALE;
var cy = (mouse_y - camera_get_view_y(view)) * CAM_VIEW_SCALE;

draw_sprite_ext(
	spr_ui_cursor, 0,
	cx, cy,
	2, 2, 0, c_white, 1
);

draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text_transformed(
	cx, cy+38, 
	string(magazine) + " / "  + string(ammo),
	1.5, 1.5, 0
)

if( reload_time > 0 ) {
	var f = reload_time / stats_reload_time(id);	
	var w = f * 64;
	
	draw_set_color(c_black);
	draw_rectangle(
		cx - 32, cy + 38+24 - 4,
		cx-32+64 , cy + 38+24 + 4,
		false
	);
	
	draw_set_color(c_white);
	draw_rectangle(
		cx - 30, cy + 38+24 - 2,
		cx-30+w, cy + 38+24 + 2,
		false
	);
}
