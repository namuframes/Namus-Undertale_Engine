if (live_call()) {return live_result};
if (room == rm_battle) {
	if (instance_exists(obj_battleBox)) {
		draw_special_text(obj_battleBox.bbox_left+20,obj_battleBox.bbox_top+20, letter_width, line_space, font, text, 2, 2, "box",0,blip_sound,line_end)
	}
	
}

if (room == rm_shop) {
	draw_special_text(-10,130, letter_width, line_space, font, text, 1, 1, "box",0,blip_sound,line_end)
}