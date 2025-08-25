if (live_call()) {return live_result};
scr_inputs();
var text_length = string_length(text)
var map = writerInfo[?"box"]
finished_wiriting = map.letter > text_length

if (array_length(texttodraw) > 0) {
	if (asset_get_type(portrait) == asset_sprite)	{ //Checking what character is talking
		#region Portrait Frame Animation
			portTimeDef = sprite_get_speed(portrait)
			if (portTime > 0) {portTime -= portTimeDef*0.15}
			if (portTime <= 0) {
				var frameQuant = sprite_get_number(portrait)
			
				if (map.letter < text_length+1) {
					portrait_frame++;
					portTime = portTimeDef
				}
				if (portrait_frame > frameQuant-1) {portrait_frame = 0};
			
				if (finished_wiriting || map.waitZ) {portrait_frame = 0}
			}
		#endregion
		
		#region Grabbing the sprite name
		var _p = sprite_get_name(portrait)
		var _a = string_count("_", _p) > 0 ? string_pos("_", _p) : 0
		var portName = ""
		

		for(var i=_a+1; i < string_length(_p); i++) {
			var char = string_char_at(_p, i);
			if ((char >= "A" || char <= "Z") || (char >= "a" || char <= "z") && char != "_") {
				portName += char
			} else {break}	
		}
		#endregion
		
		switch(portName) {
			case "asgore": set_character(snd_txtasg) break;
			
			case "eiden": set_character(snd_txteiden) break;
		}
	} else {
		set_character()
	}
	

	
	if (accept_key_p && !in_question)	{
		if (map.letter >= text_length) next_message()
	}

	if (cancel_key) {//Automatic skip
		map.letter = text_length+1;
	}
	
	if (keyboard_check(vk_control)) {//Automatic skip
		map.letter = text_length+1;
		skip_timer--;
		
		if (map.letter >= text_length+1 && skip_timer <= 0 && !in_question) {
			next_message();
			skip_timer = 2;
		}
	}

	if (curmsg < array_length(texttodraw)) {
		text = texttodraw[curmsg]
	}
}
