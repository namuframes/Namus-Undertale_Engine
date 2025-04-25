if (room != rm_battle)
{
	camera_set_view_size(view_camera[0],(width/global.zoom),(height/global.zoom))
	if (instance_exists(target))
	{
		camera_set_view_border(view_camera[0],(width/2),(height/2))
		camera_set_view_target(view_camera[0],target)
	}
}