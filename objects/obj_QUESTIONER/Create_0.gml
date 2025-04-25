draw_on_gui = false;
dia_id[0] = 0;
text_pos[0] = [0,0];
selected_quest = 0;

alarm[0] = 1;


draw_heart = function(_x=-15, _y=3, _scale=1)
{
	for(var i = 0; i < array_length(global.dia_question); i++)
	{
		if (selected_quest == i)
		{
			draw_sprite_ext(spr_heart_small, 0, text_pos[i][0]+_x, text_pos[i][1]+_y, _scale, _scale, 0, c_white, 1);
		}
	}
}