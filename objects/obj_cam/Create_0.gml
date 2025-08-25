target = obj_mainchar;

global.cam = {
	zoom: 1,
	speed: 1
}
spd = 1;
global.zoom = 1;

view = view_camera[view_current]

width = camera_get_view_width(view);
height = camera_get_view_height(view);

camPosX = x;
camPosY = y;

size = {
	w:	camera_get_view_width(view),
	h:	camera_get_view_height(view),
}
