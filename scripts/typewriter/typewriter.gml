
// Creates a new typewriter ("types" characters out one at a time).
function typewriter(_font, _char_spacing, _line_spacing, _line_length, _blip, _text, _textspd = 1, _xscale=2, _yscale=2) constructor {
	shown_chars = 0;
	shown_text = "";
	font = _font;
	char_spacing = _char_spacing;
	line_spacing = _line_spacing;
	line_length = _line_length;
	blip = _blip;
	can_skip = true;
	can_pass = true;
	textspd = (delta_time/100000)*_textspd;
	text = wrap_formatted_text(_text, line_length);
	text_length = string_length(text);
	delay = 1*textspd;
	char_timer = delay;
	auto_pause = true;
	press_z = false;
	sound = noone;
	skip_all = false;
	go_forward = false;
	play_blip = function() {if (blip != noone) {audio_play_sound(blip, 1, false, 1, 0, random_range(1, 1.02))};}
	size = [_xscale,_yscale]
	
	// Scans for and parses as many tags as possible from the current text position.
	static parse_tags = function() {
		var char = string_char_at(text, shown_chars + 1);
		var exclude = false;
		while (char == "{") {
			shown_chars++;
			if (string_char_at(text, shown_chars + 1) == "{") {
				// Handle escaped "{"s
				shown_chars++;
				break;
			} 
			else {
				shown_text += char;
				
				#region Command Executer
				var commandStart = string_pos_ext("{", text, shown_chars)
				var command = string_grabUntil_ext(text, "}", commandStart, 1, 0)

				var arg = string_split(command, ",");
				var arg_quant = array_length(arg)
		
				switch(arg[0])
				{
					case "w": //Gives a delay to the text and you can insert a value on it
						var t = 5;
						if (arg_quant > 1) {t = real(arg[1])}
						char_timer = delay*t
					break;
					case "z": //Stops the text and force the player to play Z to continue it
						press_z = true 
					break; 
					
					case "x": //Making the player not capable to skip the text
						can_skip = false 
						if (arg_quant > 1) {if arg[1] == "z" {can_pass=false;}}
					break;
					case "sound": //PLay a sound
						sound = asset_get_index(arg[1]);
						if (asset_get_type(sound) == asset_sound)
						{
							audio_play_sound(sound, 1, false);
						} else {show_message("Sound not found!")}
					break;
					case "spd":
						delay = real(arg[1])
					break;
					
					case "s": skip_all=true; play_blip(); break; //Automaticly show all the text
				}
				#endregion
				
				do {char = string_char_at(text, ++shown_chars);
					shown_text += char;} until (char == "}");
				// Get the character after the tag
				char = string_char_at(text, shown_chars + 1);
			}
		}
		
		return (char == " " || char == "\n") && !exclude;
	}
	
	parse_tags();
	// Performs the main logic of the typewriter.
	// Should be called once per frame.
	static step = function() {
		scr_inputs()
		if ((cancel_key_p && can_skip) || skip_all && shown_chars < text_length)
		{
			shown_chars = text_length;
			shown_text = text;
			skip_all = false;
		}
		
		if (press_z && accept_key_p) {press_z = false};
		
		if (shown_chars < text_length && char_timer <= 0 && !press_z) {
			while (true) 
			{
				var char = string_char_at(text, ++shown_chars);
				shown_text += char;
				// We need this character later on to handle auto-pauses
				var auto_pause_char = char;
				
				// Play a voice blip on alphanumeric characters
				if (string_length(string_lettersdigits(char))) {play_blip();}
				// parse_tags() returns whether we can auto-pause
				parse_tags();
				if (auto_pause)	{
					switch(auto_pause_char) {
						case ".": case ",":
							char_timer += delay*5
						break;
					}
				}

				if (shown_chars < text_length) {
					if (delay > 0) { char_timer += delay; break;}
				} else {break;}
			}
			if (char_timer > 0) {char_timer -= 1};
		} else {char_timer -= 1;}	
	}
	
	// Draws the currently shown characters.
	static draw = function(_x, _y) {
		draw_special_text(_x, _y, char_spacing, line_spacing,font, shown_text, size[0], size[1], 0);
	}
}