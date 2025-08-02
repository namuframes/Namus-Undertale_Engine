enum TEXTconfig {
	color = #FFFFFF,
	color2 = #FFEC00
}

enum gameConfig {
	fps = 30	
}

global.windowSize = {
	width: 640,
	height: 480
}

var _v = view_camera[0]
view_set_wport(0,global.windowSize.width)
view_set_hport(0,global.windowSize.height)
surface_resize(application_surface,global.windowSize.width*2,global.windowSize.height*2)
display_set_gui_size(global.windowSize.width,global.windowSize.height)
