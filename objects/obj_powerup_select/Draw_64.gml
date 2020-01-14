// @description

event_inherited();

var ww = window_get_width();
var wh = window_get_height();

draw_set_color(c_white);
draw_set_alpha(1);
draw_set_font(fnt_ingame);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text_transformed(ww/2, 8, "Choose powerup", 2, 2, 0);

draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_text_transformed(0, wh/3, "Replace :", 2, 2, 0);
draw_text_transformed(0, 2*wh/3, "Discard :", 2, 2, 0);

draw_set_halign(fa_center);
draw_set_valign(fa_top);

var list = powerups_get_kind_list(player_id.powerups_list, powerup_kind);
var size = ds_list_size(list);

for( var i = 0; i < size; i++ ) {
	var xx = (i+1) * (ww/(size+1));
	var yy = wh/3;
	
	var item = list[| i ];
	powerup_draw([item[0], 1], xx, yy, 2, 2);
	draw_text(xx, yy + 50, powerup_get_name(item[0]));
	
	if( selected == i ) 
		draw_sprite_ext(
			spr_ui_selection_arrow, 0, 
			xx, yy - 68, 
			2, 2, -90, 
			c_white, 1
		);
}

ds_list_destroy(list);

powerup_draw([powerup_new, 1], ww/2, 2*wh/3, 2, 2);
draw_text(ww/2, 2*wh/3 + 50, powerup_get_name(powerup_new));

if( selected == -1 )
	draw_sprite_ext(
		spr_ui_selection_arrow, 0,
		ww/2, 2*wh/3 - 68,
		2, 2, -90,
		c_white, 1
	);

draw_set_font(-1);
draw_set_color(c_white);
draw_set_alpha(1);