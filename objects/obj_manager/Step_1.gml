scr_inputs();
var pos = application_get_position()

if (room == rm_battle)
{
	instance_destroy(obj_overworld_controller)	
}

if (keyboard_check(vk_f9))	{
	room_speed = gameConfig.fps*4
} else {room_speed = gameConfig.fps}