/// @description
/// @param title
/// @param title_halign
/// @param window_rect
/// @param xscale
/// @param yscale


imgui_draw_9patch(
	spr_imgui_window,
	argument2, IMGUI_9PATCH_WINDOW,
	argument3, argument4
);

var nrect = IMGUI_9PATCH_WINDOW;
var title_x = argument2[0];
var title_y = argument2[1] + (nrect[1]) * argument4;

draw_set_font(fnt_ingame);
draw_set_valign(fa_bottom);
draw_set_halign(argument1);

switch(argument1) {
	case fa_left:
		draw_text_transformed(
			title_x + nrect[0]*argument3, title_y,
			argument0,
			argument3, argument4, 0
		);
		break;
	case fa_center:
		draw_text_transformed(
			title_x + argument2[3]/2, title_y,
			argument0,
			argument3, argument4, 0
		);
		break;
	case fa_right:
		draw_text_transformed(
			title_x + argument2[3], title_y,
			argument0,
			argument3, argument4, 0
		);
		break;
}