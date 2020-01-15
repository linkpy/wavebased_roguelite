/// @description
/// @param spr
/// @param dest_rect
/// @param 9patch_rect
/// @param xs
/// @param ys

var drect = imgui_globalize_rect(argument1);
var nrect = imgui_globalize_rect(argument2);
var spr_w = sprite_get_width(argument0);
var spr_h = sprite_get_height(argument0);

var dx0 = drect[0];
var dy0 = drect[1];
var dw = argument1[2];
var dh = argument1[3];
var dx1 = drect[2];
var dy1 = drect[3];

var nsx0 = nrect[0];
var nsy0 = nrect[1];
var nsw = argument2[2];
var nsh = argument2[3];
var nsx1 = nrect[2];
var nsy1 = nrect[3];

var ndx0 = dx0 + nsx0*argument3;
var ndy0 = dy0 + nsy0*argument4;
var ndx1 = dx1 - (spr_w - nsx1)*argument3;
var ndy1 = dy1 - (spr_h - nsy1)*argument4;
var ndw = ndx1 - ndx0;
var ndh = ndy1 - ndy0;

var ndws = ndw / nsw;
var ndhs = ndh / nsh;

draw_sprite_part_ext(
	argument0, 0,
	0, 0, nsx0, nsy0,
	dx0, dy0,
	argument3, argument4,
	c_white, 1
);

draw_sprite_part_ext(
	argument0, 0,
	nsx0, 0, nsw, nsy0,
	ndx0, dy0,
	ndws, argument4,
	c_white, 1
);

draw_sprite_part_ext(
	argument0, 0,
	nsx1, 0, spr_w-nsx1, nsy0,
	ndx1, dy0, 
	argument3, argument4,
	c_white, 1
);

draw_sprite_part_ext(
	argument0, 0,
	0, nsy0, nsx0, nsh,
	dx0, ndy0, 
	argument3, ndhs,
	c_white, 1
);

draw_sprite_part_ext(
	argument0, 0,
	nsx0, nsy0, nsw, nsh,
	ndx0, ndy0,
	ndws, ndhs,
	c_white, 1
);

draw_sprite_part_ext(
	argument0, 0,
	nsx1, nsy0, spr_w-nsx1, nsh,
	ndx1, ndy0, 
	argument3, ndhs,
	c_white, 1
);

draw_sprite_part_ext(
	argument0, 0,
	0, nsy1, nsx0, spr_h-nsy1,
	dx0, ndy1,
	argument3, argument4,
	c_white, 1
);

draw_sprite_part_ext(
	argument0, 0,
	nsx0, nsy1, nsw, spr_h-nsy1,
	ndx0, ndy1,
	ndws, argument4,
	c_white, 1
);

draw_sprite_part_ext(
	argument0, 0,
	nsx1, nsy1, spr_w-nsx1, spr_h-nsy1,
	ndx1, ndy1,
	argument3, argument4,
	c_white, 1
);
