if (live_call()) {return live_result};

for (var i = 0; i < array_length(question); i++)
{
	var _name = question[i][0]
	var _math = sprite_get_width(spr_heart_small)*2+string_width(_name)*2
	var my_x = textPos[0]+_math*i
	if (curQues == i) {
		setheart_pos(my_x-26, textPos[1]+15)
	}
	draw_special_text(my_x, textPos[1], undefined, undefined, fnt_main, _name, 2, 2)	
}

draw_sprite(spr_soul, 0, heartpos[0], heartpos[1]);