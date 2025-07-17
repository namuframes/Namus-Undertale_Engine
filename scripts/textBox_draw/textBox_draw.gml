// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function textBox_draw(_____x,_____y, ____xscale=2,___yscale=2){
	__y = _____y
	text_x = _____x+25;
	text_y = __y+20;
	__xscale= ____xscale
	__yscale= ___yscale

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
				if ((char >= "A" || char <= "Z") || (char >= "a" || char <= "z")) {
					portrait_checker += char
				} else {break}
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
	draw_special_text(text_x,text_y, letter_width, line_space, font, text, __xscale, __y, "dialogue",text_speed,blip_sound)

	draw_set_alpha(1)
}