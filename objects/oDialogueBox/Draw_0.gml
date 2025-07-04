if (live_call()) {return live_result};
if (room == rm_battle) {
	if (instance_exists(obj_battleBox)) {
		textBox_draw(obj_battleBox.bbox_left,obj_battleBox.bbox_top)	
	}
}

if (room == rm_shop) {
	textBox_draw(-10,130, 1, 1)
}