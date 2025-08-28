function draw_special_text(_x, _y, char_spacing=1.3, line_spacing=5, 
font, text, _xscale=1, _yscale=1, varname="", write_speed=-1, 
blip=noone, line_length=infinity, _angle=0, color=TEXTconfig.color, _outline=2)
{
	scr_inputs()
	draw_set_color(color);
	draw_set_font(font)
	varname = string(varname)

	if (!variable_instance_exists(id,"writerInfo")) {writerInfo = ds_map_create();}
	if (!ds_map_exists(writerInfo, varname)) {
		writerInfo[? varname] = {
			letter: 0,
			time: write_speed,
			waitZ: false,
			mod_speed: noone,
			sound: array_create(0),
			can_skip: true
		}
	}
	if (varname == "") {writerInfo[? varname].letter = string_length(text)}
	_line = 0
	_space = 0;
	charQuant = 1;
	is_aster = false
	mod_wave = 0;
	mod_shake = 0;
	shake_range = 1;
	wave_range = 0;
	have_sprite = false

	sprite_space = {
		x: 0,
		y: 0
	}
	cur_line = 0
	
	var map = writerInfo[? varname]

	#region Writer Code
		if (string_char_at(text,map.letter) == "\n") {map.letter += 1}
		while (string_char_at(text, map.letter) == "{") {
			var commandStart = string_pos_ext("{", text, map.letter)
			var command = string_grabUntil_ext(text, "}", commandStart, 1, 0)
			map.letter += string_length(command)+1
			var arg = string_split(command,",")
				
			switch(arg[0]) {
				case "w":
					var _r = array_length(arg) > 1 ? arg[1] : 10
					map.time += _r;
				break;
	
				case "z": map.waitZ = true break;
			
				case "snd":
					var s = asset_get_index(arg[1])
					array_push(map.sound,s);
					if (asset_get_type(array_last(map.sound)) == asset_sound) {audio_play_sound(array_last(map.sound),0,false)};
				break;
			
				case "spd": map.mod_speed = real(arg[1]); break;
			}
		}

		if (map.letter < string_length(text)+1) { //If the letters quantity that had appeared is smaller than the given text, execute the code
			if (map.time > 0 && !map.waitZ) {map.time--} //Making the writer time go down
			if (accept_key_p && map.waitZ) {map.waitZ = false}

			if (map.time <= 0 && !map.waitZ) {
				map.letter++
				var __s = map.mod_speed != noone ? map.mod_speed : write_speed
				map.time+= __s;
				
				var _c = string_char_at(text,map.letter)
				if ((_c >= "A" && _c <= "Z") || (_c >= "a" && _c <= "z") || (_c >= "0" && _c <= "9")) {
					audio_play_sound(blip,0,false,1,0,random_range(1,1.05))
				}
			}	
		}
		
	#endregion
	
	sprite = "";
	
	for (var i = 1; i < map.letter; i++) { 
		_length = 0
		var c = string_char_at(text, i);
		char = c
		charMath = char_spacing

		__ln = line_spacing; 
		__xs = [_xscale]
		break_line = function() {
			_space = is_aster && char != "*" ? (string_width("* ")+charMath)*__xs[0] : 0
			sprite_space.x = 0;
			var sprite_line = sprite_space.y > __ln ? (sprite_space.y)*0.035 : 0
			_line += 1 + sprite_line;
			sprite_space.y = 0;
			_length = 0
		}
		var letWidth = (string_width(char)+charMath)*_xscale
	
		if (string_char_at(text,i-1) == " ") { //Breaking the line IF current letter is " "
			j = i
			while (string_char_at(text,j) != " " && string_char_at(text,j) != "\n" && j <= string_length(text)) {
				j++;
				_length += ((string_width(string_char_at(text,j)))+charMath) //Length é o tamanho da proxima palavra
			}
			var __w = line_length+string_width(" ")+charMath
			if (_space+_length > __w*(_xscale*.8)) {break_line();} //Checando se a posição + tamanho da palavra é maior do que o limite de linha
		}

		#region Blipper stuff
			if (char == "\n") {break_line()}
			if (char == "*") {is_aster = true; _space = 0;}
		
			if (char == "{")	{
				var commandStart = string_pos_ext("{", text, i)
				var command = string_grabUntil_ext(text, "}", commandStart, 1, 0)
				i += string_length(command)+1
				var arg = string_split(command,",")
				var arg_length = array_length(arg)-1

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
					case "c_gray": draw_set_color(c_gray) break;
					case "c_cyan": draw_set_color(c_aqua) break;
					case "wave": 
						mod_wave = 1 
						wave_range = array_length(arg) > 1 ? real(arg[1]) : 0
					break;
					
					case "/wave": mod_wave = 0 break;
					case "shake": 
						mod_shake = 1 
						if (array_length(arg) > 1){shake_range = arg[1]}
					break;

					case "/shake": 
						mod_shake = 0
						shake_range = 1;
					break;
					//----------------------------------------------

					case "/c": draw_set_color(TEXTconfig.color) break;
			
					case "/r":
						mod_wave = 0;
						mod_shake = 0;
						draw_set_color(TEXTconfig.color);
					break;
		
					case "spr":
						if (array_length(arg) > 1) {
							sprite = arg[1]
						} else {sprite = ""}
					break;
					
					case "face":
						var s = arg_length > 0 ? asset_get_index(arg[1]) : "";
						if (map.time <= write_speed && !map.waitZ || map.letter >= string_length(text)) {oDialogueBox.portrait = s;}
					break;
					
					case "x":
						map.can_skip = false;
					break;
				}
				
				if (command == ">") {
					if (map.time <= 0 && !map.waitZ) {with(oDialogueBox) {next_message()}	}
				}
				
				continue;
			}
		#endregion
		
		var _coswave = mod_wave ? cos((global.time*6)-charQuant)*(2+wave_range) : 0
		var _sinwave = mod_wave ? sin((global.time*6)-charQuant)*(2+wave_range) : 0
		var let_space = [line_spacing*_yscale]
		var final_x = _x+(_space)+_sinwave+(random_range(-shake_range, shake_range)*mod_shake)+sprite_space.x
		var final_y = _y+(let_space[0])*_line+_coswave+(random_range(-shake_range, shake_range)*mod_shake)

		if (sprite == "") {
			draw_text_transformed(final_x, final_y, char, _xscale, _yscale, _angle)
		} else {
			var spr = asset_get_index(sprite)
			var s_w = sprite_get_width(spr)*_xscale
			var s_h = sprite_get_height(spr)*_yscale
				
			sprite_space.x += s_w
			sprite_space.y += s_h/_yscale
			draw_sprite_ext(spr, 0, final_x, final_y,_xscale,_yscale,0,c_white,1)	
		}
		

		_space+=letWidth;
		charQuant++;
		

	}

	draw_set_color(c_white)
	draw_set_font(-1)
}
