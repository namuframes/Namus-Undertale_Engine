scr_inputs()
if (instance_exists(obj_mainchar) && obj_mainchar.state == mode.free && (obj_mainchar.face == face or face == "any"))
{
	if (!instance_exists(oDialogueBox) && place_meeting(x,y,obj_mainchar))
	{
		global.interact_cooldown--;
		if (accept_key_p && global.interact_cooldown <= 0)
		{
			instance_create_layer(0,0,layer,oDialogueBox)
			global.interact_cooldown = 4;
			transfer_msg_array();
		}
	}
}

visible = global.debug;