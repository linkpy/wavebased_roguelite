/// @description
/// @param id
/// @param x
/// @param y
/// @param sx
/// @param sy

draw_sprite_ext(
	powerup_get_background(argument0[0]), 0,
	argument1, argument2,
	argument3, argument4,
	0, c_white, 1
);

draw_sprite_ext(
	powerup_get_sprite(argument0[0]), 0,
	argument1, argument2,
	argument3, argument4,
	0, c_white, 1
);

if( argument0[1] > 1 ) {
	draw_set_halign(fa_right);
	draw_set_valign(fa_bottom);
	draw_set_font(fnt_ingame);
	draw_set_color(c_white);
	draw_text_transformed(
		argument1 + 24,
		argument2 + 24,
		string(argument0[1]),
		argument3, argument4,
		0
	)
}