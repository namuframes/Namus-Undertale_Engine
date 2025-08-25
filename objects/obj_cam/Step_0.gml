size = {
	w:	camera_get_view_width(view),
	h:	camera_get_view_height(view),
}


if (room != rm_battle)
{
	if (instance_exists(target) && target != 0) {
		camera_set_view_target(view_camera[view_current],target)
		camera_set_view_border(view_camera[view_camera],size.w/2,size.h/2)
		x = target.x;
		y = target.y;
	} else {event_user(0)}
	
	camera_set_view_size(view_camera[0],(width/global.cam.zoom),(height/global.cam.zoom))
}

x = clamp(x,0+size.w/2,room_width-size.w/2)
y = clamp(y,0+size.h/2,room_height-size.h/2)

camPosX = tweenVar(camPosX,x,global.cam.speed*100)
camPosY = tweenVar(camPosY,y,global.cam.speed*100)
