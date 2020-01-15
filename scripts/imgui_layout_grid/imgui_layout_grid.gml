/// @description
/// @param imgui_rect
/// @param xcell
/// @param ycell
/// @param wcell
/// @param hcell
/// @param h_cell_count
/// @param v_cell_count
/// @param h_margin
/// @param v_margin

var r = argument0;
var xc = argument1;
var yc = argument2;
var wc = argument3;
var hc = argument4;
var ccw = argument5;
var cch = argument6;
var hm = argument7;
var vm = argument8;

var cw = r[2] / ccw;
var ch = r[3] / cch;

var rx0 = r[0] + xc * cw;
var ry0 = r[1] + yc * ch;
var rx1 = r[0] + (xc + wc) * cw;
var ry1 = r[1] + (yc + hc) * ch;

return imgui_localize_rect([
	rx0 + hm, ry0 + vm,
	rx1 - hm, ry1 - vm
]);
