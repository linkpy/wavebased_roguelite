// @description

window_set_size(
	CAM_VIEW_WIDTH  * CAM_VIEW_SCALE, 
	CAM_VIEW_HEIGHT * CAM_VIEW_SCALE
);

alarm[0] = 1;

surface_resize(
	application_surface, 
	CAM_VIEW_WIDTH  * CAM_VIEW_SCALE,
	CAM_VIEW_HEIGHT * CAM_VIEW_SCALE
);


recoil_amount = 0;
shake_amount = 0;

recoil_reduction_factor = 0.15;
shake_reduction_factor = 0.15;