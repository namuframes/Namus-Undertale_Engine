var _x = (camera_get_view_x(view_camera[0]));
var _y = (camera_get_view_y(view_camera[0]));
var box_x = _x+54
var box_y = _y+57	
draw_box( box_x, box_y, 212, 86, false, spr_overworld_box)
draw_set_color(color);
draw_set_font(fnt_main);
draw_text(box_x+16, box_y+11, global.stat_name)
draw_text(box_x+96, box_y+11, "LV "+string(global.stat_lv))
draw_text(box_x+16, box_y+31, room_get_name(room))

if (selected_op) //Selected an option and execute a code after it
{
	switch(options[cur_op])
	{
		case "Save":
			show_heart = false;
			draw_text(box_x+31, box_y+60.5, "File saved.")
		break;
	}
}

if (!selected_op) //Selecting an option
{
	for(var i = 0; i < array_length(options); i++)
	{
		var my_x = box_x+31+(i*90)
		draw_text(my_x, box_y+60.5, options[i])	
		if (cur_op == i) {setheart_pos(my_x-14, box_y+64)}
	}
}
draw_sprite_ext(spr_heart_small, 0, heartpos[0], heartpos[1], 1, 1,1, c_white, show_heart);

draw_set_color(-1);
draw_set_font(-1);