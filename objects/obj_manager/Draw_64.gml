if (global.debug  && room != rm_battle)
{
	draw_set_font(fnt_main);
	draw_set_alpha(0.5)
	draw_rectangle_color(0,10,1000,85, c_black, c_black, c_black, c_black, false)
	draw_set_alpha(1)
	draw_text(10,25,global.dia_msg);
	//draw_text(10,35,global.dia_character);
	//draw_text(10,45,global.dia_question);
	//draw_text(10,55,global.dia_questionResult);
	//draw_text(10,65,global.interact_cooldown);
	draw_set_color(c_yellow);
	draw_text(5,5,"Debug Mode.");
	draw_set_color(c_white);
	draw_set_font(-1);
};

if (debug_change_room)
{
	var _w = display_get_width();
	var _h = display_get_height();
	
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	
	draw_rectangle(0,0,_w,_h,false);
	
	draw_set_font(fnt_main);
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	if (down_key_p) {debug_selected_room++;}
	if (up_key_p) {debug_selected_room--;}
	debug_selected_room = clamp(debug_selected_room,0,get_room_count()-2);
	
	for (var i = 0; i < get_room_count()-1; i++)
	{
		if (i == debug_selected_room) {draw_set_color(c_yellow)} else {draw_set_color(c_white)}
		draw_text(10,10+i*10,room_get_name(room_next(i)));
		if (accept_key_p)
		{
			room_goto_trans(asset_get_index(room_get_name(room_next(debug_selected_room))), obj_teleport_point_a);
		}
	}
};

draw_set_font(-1);
draw_set_color(c_white);