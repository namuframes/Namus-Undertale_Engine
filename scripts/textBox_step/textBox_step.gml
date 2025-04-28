// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function textBox_step(_obj){
	if (is_struct(_obj))	{
		_obj.blip = blip_sound;
		_obj.font = font;
		_obj.char_spacing = letter_width+offset[3];
		_obj.line_spacing = line_space+offset[4];
		_obj.line_length = line_end+offset[5];
		_obj.text = wrap_formatted_text(text, _obj.line_length);

		var _portrait = asset_get_index(portrait)
		if (asset_get_type(_portrait) == asset_sprite) {
			portTimeDef = sprite_get_speed(_portrait)
			if (portTime > 0) {portTime -= portTimeDef/2} else {
				if (_obj.shown_text != _obj.text) 
				{
					portrait_frame++;
					portrait_frame = clamp(portrait_frame, 0, sprite_get_number(sprite_get_number(_portrait)-1))
				} else { portrait_frame = 0}
			
				if (portrait_frame > sprite_get_number(_portrait)-1) {
					portrait_frame = 0;
				}
			
				if (_obj.press_z) {portrait_frame = 0}
				portTime = portTimeDef
			}
		}

		if (accept_key_p)	{
			if (_obj.shown_chars >= string_length(text) && _obj.can_pass)	{
				next_message()
			}
		}
	
		if (keyboard_check(vk_control) && _obj.can_skip) {//Automatic skip
			_obj.shown_chars = _obj.text_length;
			_obj.shown_text = _obj.text;
			skip_timer--;
		
			if (_obj.shown_chars >= _obj.text_length && skip_timer <= 0) {
				next_message();
				skip_timer = 2;
			}
		}

	}
}