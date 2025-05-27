function draw_special_text(_x, _y, char_spacing=font_get_size(font)+4, line_spacing=5, font, text, _xscale=1, _yscale=1, _angle=0, color = TEXTconfig.color, _outline=4)
{
	draw_set_color(color);
	draw_set_font(font)
	var text_length = string_length(text)+1
	_line = 0
	_space = 0;
	is_aster = false
	mod_wave = 0;
	mod_shake = 0;
	shake_range = 1;
	wave_range = 0;
	var _surf = array_create(0);
	_surf[0] = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));
	_surf[1] = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));
	for (var i = 1; i < text_length; i++) {
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
		
		if (char == "*")
		{
			is_aster = true
			_space = 0
		}

		var _coswave = cos((global.time*6)-i)*(3+wave_range)
		var let_space = [char_spacing*_xscale/2,(line_spacing*_yscale/2)*2.25]
		var final_x = _x+(_space*let_space[0])+(random_range(-shake_range, shake_range)*mod_shake)
		var final_y = _y+(let_space[1])*_line+(_coswave*mod_wave)+(random_range(-shake_range, shake_range)*mod_shake)

		if (surface_exists(_surf[1])) {
			if (_outline > 0)	{ //Drawing the outline in a specfic surface
				for (var j = 0; j < _outline+1; j++) { //Outline
					if (surface_exists(_surf[0])) {
						surface_set_target(_surf[0])
						draw_text_transformed_color(final_x+j, final_y, char, _xscale, _yscale,_angle, c_black, c_black, c_black, c_black,1);
						draw_text_transformed_color(final_x-j, final_y, char, _xscale, _yscale, _angle, c_black, c_black, c_black, c_black,1);
						draw_text_transformed_color(final_x, final_y+j, char, _xscale, _yscale, _angle, c_black, c_black, c_black, c_black,1);
						draw_text_transformed_color(final_x, final_y-j, char, _xscale, _yscale, _angle, c_black, c_black, c_black, c_black,1);
			
						draw_text_transformed_color(final_x+j, final_y+j, char, _xscale, _yscale, _angle, c_black, c_black, c_black, c_black,1);
						draw_text_transformed_color(final_x-j, final_y-j, char, _xscale, _yscale, _angle, c_black, c_black, c_black, c_black,1);
						draw_text_transformed_color(final_x-j, final_y+j, char, _xscale, _yscale, _angle, c_black, c_black, c_black, c_black,1);
						draw_text_transformed_color(final_x+j, final_y-j, char, _xscale, _yscale, _angle, c_black, c_black, c_black, c_black,1);
						surface_reset_target();
					}
				}
			}
			surface_set_target(_surf[1])

			#region Blipper stuff
				if (char == "\n") {break_line();}

				if (char == "{")	{
					var commandStart = string_pos_ext("{", text, i)
					var command = string_grabUntil_ext(text, "}", commandStart, 1, 0)
					i += string_length(command)+1
					use_blippers(command)
					surface_reset_target();
					continue;
				}
			#endregion

			draw_text_transformed(final_x, final_y, char, _xscale, _yscale, _angle);
			
			surface_reset_target();
			
			draw_surface(_surf[0], 0, 0)
			draw_surface(_surf[1], 0, 0)

		}
		_space++;
	}

	surface_free(_surf[0]); surface_free(_surf[1])

	draw_set_color(c_white)
	draw_set_font(-1)
	if (instance_exists(oDialogueBox)) {variable_instance_set(oDialogueBox, "lines", _line)};
}