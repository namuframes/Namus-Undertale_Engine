scr_inputs();
if (room == rm_battle)
{
	instance_destroy(obj_overworld_controller)	
}
else
{
	if (!instance_exists(obj_overworld_controller))
	{
		instance_create_depth(0,0,0,obj_overworld_controller)	
	}
}

if (keyboard_check(vk_f9))	{
	room_speed = 120*2
} else {room_speed = 30}