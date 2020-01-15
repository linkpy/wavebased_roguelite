/// @description
/// @param rect

if( not imgui_is_mouse_in_rect(argument0) )
	return IMGUI_NONE;

if( mouse_check_button(mb_left) )
	return IMGUI_PRESSED;

return IMGUI_HOVERED;