if (live_call()) {return live_result};
scr_inputs();
if (setshit = true && text = noone)	{
	text = texttodraw[curmsg];
	dialogue = noone
	setshit = false;
}

if (is_struct(dialogue))	{
	dialogue.blip = blip_sound;
	dialogue.font = font;
	dialogue.char_spacing = letter_width+offset[3];
	dialogue.line_spacing = line_space+offset[4];
	dialogue.line_length = line_end+offset[5];
	dialogue.text = wrap_formatted_text(text, dialogue.line_length);

	var _portrait = asset_get_index(portrait)
	if (asset_get_type(_portrait) == asset_sprite) {
		portTimeDef = sprite_get_speed(_portrait)
		if (portTime > 0) {portTime -= portTimeDef/2} else {
			if (dialogue.shown_text != dialogue.text) 
			{
				portrait_frame++;
				portrait_frame = clamp(portrait_frame, 0, sprite_get_number(sprite_get_number(_portrait)-1))
			} else { portrait_frame = 0}
			
			if (portrait_frame > sprite_get_number(_portrait)-1) {
				portrait_frame = 0;
			}
			
			if (dialogue.press_z) {portrait_frame = 0}
			portTime = portTimeDef
		}
	}

	if (accept_key_p)	{
		if (dialogue.shown_chars >= string_length(text) && dialogue.can_pass)	{
			next_message()
		}
	}
	
	if (keyboard_check(vk_control) && dialogue.can_skip) {//Automatic skip
		dialogue.shown_chars = dialogue.text_length;
		dialogue.shown_text = dialogue.text;
		skip_timer--;
		
		if (dialogue.shown_chars >= dialogue.text_length && skip_timer <= 0) {
			next_message();
			skip_timer = 2;
		}
	}

}