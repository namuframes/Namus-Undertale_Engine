scr_inputs()
if (menu_key) {
	if (instance_exists(obj_mainchar) && obj_mainchar.state == mode.free) {

			global.in_menu = true;
			if (global.in_menu) {audio_play_sound(sfx_select,1,false,2);}
	} else {global.in_menu = false}
}

if (cancel_key_p and !option_selected) {global.in_menu = false;}

if (global.in_menu) {
	global.interact_cooldown--;
	if (!option_selected) {//Selecting the options
		var prev_val = curoption;
		var vsp = (down_key_p-up_key_p);
		curoption += vsp;
		curoption = clamp(curoption,0,array_length(options)-1);
		if (curoption != prev_val) {audio_play_sound(sfx_select,1,false,2);}
		var _opa = options[curoption] 
		if (accept_key_p) 
		{
			if (array_length(global.inventory) <= 0 && _opa == "ITEM")
			{
				audio_play_sound(snd_deny, 1, false, 1);
			}
			else
			{
				audio_play_sound(sfx_confirm, 1, false, 2);
				option_selected = true
			}
		};
		global.interact_cooldown = 1;
	}
	else {//Already selected an option
		if (cancel_key_p) {
			switch(options[curoption]) {
				case "ITEM":	
					if (obj_invenHandler.page[obj_invenHandler.curpage] == "item") {
						instance_destroy(obj_invenHandler);	
						option_selected = false
					}
				break;
				
				default: option_selected = false; break;
			}
		}
	}
} else {
	option_selected = false;
	instance_destroy(obj_invenHandler)
}