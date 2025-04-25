draw_set_font(fnt_main)
if (global.debug)
{
	
	var cur_scene = scene_info[action];
	draw_text(0,140,"CUR: "+script_get_name(cur_scene[0]));
	var _infoscene = string_width(string(scene_info))
	draw_set_alpha(0.5)
	draw_rectangle_color(0,150, _infoscene, 170, c_black, c_black, c_black, c_black, false)
	draw_set_alpha(1)
	draw_text(0, 160, scene_info);
}
draw_set_font(-1);