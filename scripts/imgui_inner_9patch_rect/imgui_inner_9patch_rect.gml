/// @description
/// @param dest_rect
/// @param 9patch_rect
/// @param spr
/// @param xscale
/// @param yscale

var dr = argument0;
var nr = imgui_globalize_rect(argument1);
var spr = argument2;
var xs = argument3;
var ys = argument4;

var sw = sprite_get_width(spr);
var sh = sprite_get_height(spr);

return [
	dr[0] + nr[0]*xs, 
	dr[1] + nr[1]*ys,
	dr[2] - (nr[0] + (sw - nr[2]))*xs,
	dr[3] - (nr[1] + (sh - nr[3]))*ys
];