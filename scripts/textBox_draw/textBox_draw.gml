// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function textBox_draw(_____x,_____y){
	__y = _____y
	text_x = _____x+25;
	text_y = __y+20;

	portrait_offset();
	set_character();

	if (portrait != "")	{
		#region Grabbing the sprite name
		var _a = string_count("f", portrait) > 0 ? string_pos("f", portrait) : 0
		var portrait_checker = ""
		for(var i=1; i < string_length(portrait); i++)
		{
			var char = string_char_at(portrait, i);
			if (i > _a+4)
			{
				if (char = "_" ||
					char == "0" ||
					char == "1" || char == "2" || char == "3" || char == "4" ||
					char == "5" ||  char == "6" ||  char == "7" ||  char == "8" ||
					char == "9")
				{
					char = string_char_at(portrait, --i);
					break;
				}
				portrait_checker += char 
			}
		}
		#endregion
	
		switch(portrait_checker) {
			case "flowey":
				blip_sound = snd_floweytalk;
				portrait_offset(-23, -16);
			break;
			
			case "sans":
				portrait_offset();
				set_character(snd_txtsans, fnt_comic_sans)
				text_y += 5
			break;
			
			case "pa":
				portrait_offset(undefined, undefined, undefined, 6, -1, -8);
				set_character(snd_txtpap, fnt_pap)
			break;
		}	
	}
	
	var _portrait = asset_get_index(portrait)

	if (asset_get_type(_portrait) == asset_sprite)	{
		text_x = 150
		line_end = line_endDef-6
		draw_sprite_ext(_portrait, portrait_frame, (_x+30)+offset[0], (__y+30)+offset[1], offset[2], offset[2], 0, c_white, 1);
	}

	//Reseting the portrait and making a delay for it, to not make the portrait dissapear and then get back suddently...
	//It looks ugly
	if (resetPort > -1) {resetPort--;} 
	if (resetPort == 0) {portrait = ""}

	if (!is_struct(dialogue)) {dialogue = new typewriter(font, letter_width, line_space, line_end, blip_sound, text, text_speed)}
	else
	{	
		if (dialogue.font == font) {
			if (!global.inPause) {dialogue.step()}; //Don't write text if the game is paused
			dialogue.draw(text_x, text_y);
		}
	}

	draw_set_alpha(1)
}