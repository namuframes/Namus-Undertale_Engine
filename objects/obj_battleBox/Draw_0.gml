if (live_call()) {return live_result};
draw_self();
draw_set_color(c_red);
//draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false)
draw_set_color(1);
if (obj_battleManager.page == baPAGES.MAIN || global.curTurn == baTURNS.cutscene) {
	if (!is_struct(textMain)) {textMain = new typewriter(fnt_main, font_get_size(fnt_main)+4, 15, 32, noone, "* Bootie cheeks", 1)}
	textMain.step();
	textMain.draw(bbox_left+20, bbox_top+20);
}