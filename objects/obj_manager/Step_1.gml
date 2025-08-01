scr_inputs();
var pos = application_get_position()
//display_set_gui_maximise(1,1,pos[0],pos[1]) //Fixing the GUI size and blabla ò_ó
display_set_gui_size(surface_get_width(application_surface),surface_get_height(application_surface))
if (room == rm_battle)
{
	instance_destroy(obj_overworld_controller)	
}

if (keyboard_check(vk_f9))	{
	room_speed = 120*2
} else {room_speed = 30}