/// @description
/// @param rect

var r = imgui_globalize_rect(argument0);
var mp = imgui_mouse_to_screen();

if( mp[0] < r[0] )
	return false;

if( mp[0] > r[2] )
	return false;

if( mp[1] < r[1] )
	return false;

if( mp[1] > r[3] )
	return false;
	
return true;
