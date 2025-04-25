if (live_call()) {return live_result}
if (!invisible) {draw_self()};
if (global.debug) 
{
	if (can_colide) {draw_collision()}
	draw_set_color(c_red)
	draw_rectangle(intBox[0], intBox[1], intBox[2], intBox[3], true)
	draw_set_color(c_white)
	draw_text(x,y-sprite_height-50, page)
}
