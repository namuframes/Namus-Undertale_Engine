scr_inputs()
visible = global.debug
if (place_meeting(x,y, obj_mainchar))
{
	pressed_z = press_z ? accept_key_p : true
	if (!instance_exists(cutsceneInstance)) {
		createCutscene = true;	
	}
}

if (createCutscene && pressed_z)
{
	cutsceneInstance = instance_create_depth(0, 0, 0, obj_cutscene);
	cutsceneInstance.cutscene = _script;
	createCutscene = false;
	if (destroy_self) {
		instance_destroy();	
	}
}

