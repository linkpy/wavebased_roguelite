/// @description

return [
	(mouse_x - camera_get_view_x(view)) /** CAM_VIEW_SCALE*/,
	(mouse_y - camera_get_view_y(view)) /* CAM_VIEW_SCALE*/
];