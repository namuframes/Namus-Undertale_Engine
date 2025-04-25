function draw_special_text(_x, _y, char_spacing=font_get_size(font)+4, line_spacing=5, font, text, _xscale=1, _yscale=1, _angle=0, color = TEXTconfig.color, _outline=0) {
	draw_set_color(c_white)
	draw_set_font(font)
	var text_length = string_length(text)+1
	_line = 0
	_space = 0;
	is_aster = false
	mod_wave = 0;
	mod_shake = 0;
	shake_range = 1;
	wave_range = 0;
	draw_set_color(color);
	for (var i = 1; i < text_length; i++) {
	{
		char = string_char_at(text, i);
		break_line = function()
		{	
			_space = -1
			if (is_aster && char != "*") 
			{
				_space = 1
			}
			_line++;
		}

		#region Blipper stuff
		if (char == "\n") {break_line();}

		if (char == "{")	{
			var commandStart = string_pos_ext("{", text, i)
			var command = string_grabUntil_ext(text, "}", commandStart, 1, 0)
			i += string_length(command)+1
			use_blippers(command)
			continue;
		}

		#endregion
		
		if (char == "*")
		{
			is_aster = true
			_space = 0
		}

		var _coswave = cos((global.time*6)-i)*(3+wave_range)
		var final_x = _x+(_space*char_spacing)+(random_range(-shake_range, shake_range)*mod_shake)
		var final_y = _y+(line_spacing*2.25)*_line+(_coswave*mod_wave)+(random_range(-shake_range, shake_range)*mod_shake)

		if (_outline > 0)	{ //Drawing the outline in a specfic surface
			for (var j = 0; j < _outline+1; j++) { //Outline
				draw_set_color(c_black)
				draw_text_transformed(final_x+j, final_y, char, _xscale, _yscale, _angle);
				draw_text_transformed(final_x-j, final_y, char, _xscale, _yscale, _angle);
				draw_text_transformed(final_x, final_y+j, char, _xscale, _yscale, _angle);
				draw_text_transformed(final_x, final_y-j, char, _xscale, _yscale, _angle);
			
				draw_text_transformed(final_x+j, final_y+j, char, _xscale, _yscale, _angle);
				draw_text_transformed(final_x-j, final_y-j, char, _xscale, _yscale, _angle);
				draw_text_transformed(final_x-j, final_y+j, char, _xscale, _yscale, _angle);
				draw_text_transformed(final_x+j, final_y-j, char, _xscale, _yscale, _angle);
				gpu_set_blendmode(bm_normal)
				draw_set_color(color);
			}
		}

			draw_text_transformed(final_x, final_y, char, _xscale, _yscale, _angle);
		}
		_space++;
	}
	draw_set_font(-1)
	draw_set_color(c_white);
}