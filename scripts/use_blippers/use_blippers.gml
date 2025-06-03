
function use_blippers(command){
	var arg = string_split(command, ",");
	switch (arg[0])
	{
		//Color Blippers--------------------------------
		case "c_red": draw_set_color(c_red) break;
		case "c_green": draw_set_color(c_lime) break;
		case "c_yellow": draw_set_color(c_yellow) break;
		case "c_white": draw_set_color(c_white) break;
		case "c_blue": draw_set_color(c_blue) break;
		case "c_purple": draw_set_color(#a200ff) break;
		case "c_defualt": draw_set_color(TEXTconfig.color) break;
		case "wave": mod_wave = 1 break;
		case "shake": 
			mod_shake = 1 
			if (array_length(arg) > 1)
			{
				shake_range = arg[1]
			}
		break;
		//----------------------------------------------
		case "face":
			if (instance_exists(oDialogueBox))
			{
				var _box = oDialogueBox;
				if (is_struct(_box.dialogue)) {
					var _d = _box.dialogue;
					if (_d.char_timer <= 0 || _d.shown_text = _d.text) {
						_box.portrait = arg[1];
					}
				}
			}
		break;
		case "blip":
			if (instance_exists(oDialogueBox))
			{
				var _box = oDialogueBox;
				var blip = asset_get_index(arg[1])
				_box.blip_sound = blip;
			}
		break;
		
		case ">":
			if (instance_exists(oDialogueBox))
			{
				oDialogueBox.next_message();
			}
		break;
		
		case "/c": draw_set_color(TEXTconfig.color) break;
			
		case "/r":
			mod_wave = 0;
			mod_shake = 0;
			draw_set_color(TEXTconfig.color);
		break;
	}
}