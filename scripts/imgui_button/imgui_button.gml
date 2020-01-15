/// @description 
/// @param state
/// @param imgui_rect
/// @param text
/// @param xscale
/// @param yscale


var stt = argument0;
var r = argument1;
var txt = argument2;
var xs = argument3;
var ys = argument4;



if( stt == IMGUI_NONE )
	imgui_draw_9patch(
		spr_imgui_button, r,
		IMGUI_9PATCH_BUTTON,
		xs, ys
	);

else if( stt == IMGUI_HOVERED )
	imgui_draw_9patch(
		spr_imgui_button_hovered, r,
		IMGUI_9PATCH_BUTTON,
		xs, ys
	);

else if( stt == IMGUI_PRESSED )
	imgui_draw_9patch(
		spr_imgui_button_pressed, r,
		IMGUI_9PATCH_BUTTON,
		xs, ys
	);

else if( stt == IMGUI_FOCUSED )
	imgui_draw_9patch(
		spr_imgui_button_focus, r,
		IMGUI_9PATCH_BUTTON,
		xs, ys
	);


draw_set_font(fnt_ingame);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_text_transformed(
	r[0] + r[2]/2, r[1] + r[3]/2,
	txt, xs, ys, 0
);