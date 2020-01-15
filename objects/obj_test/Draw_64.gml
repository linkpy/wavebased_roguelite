// @description

var r = [64, 64, 380, 380];
var ir = imgui_inner_window_rect(r, 4, 4);
var pr0 = imgui_layout_grid(ir, 0, 0, 1, 1, 2, 2, 8, 8);
var pr3 = imgui_layout_grid(ir, 1, 1, 1, 1, 2, 2, 8, 8);
bt_rect = imgui_center_rect( 
	imgui_layout_grid(ir, 1, 1, 1, 1, 2, 2, 8, 8),
	[128,48]
);


imgui_window(
	"test window", fa_center,
	r,
	4, 4
);

imgui_panel(pr0, 4, 4);
imgui_panel(pr3, 4, 4);
imgui_button(bt_state, bt_rect, "button", 2, 2);