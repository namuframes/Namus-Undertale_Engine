if (live_call()) {return live_result};
var _dia_y = 315*global.ontop;

draw_set_alpha(box_alpha);
//draw_box(_x,_y-_dia_y,_x+585,_y/2.1, undefined, undefined, box_alpha)
if (room != rm_battle) {
	draw_sprite_ext(spr_dialogueBox, 0, _x, _y-_dia_y, image_xscale*2, image_yscale*2, image_angle, image_blend, box_alpha)
	textBox_draw(_x,_y-_dia_y)
}

if (is_struct(dialogue)) {
	var line = [dialogue.line_spacing+string_height(dialogue.text), lines+1];
	if (in_question && finished_wiriting) {
		if (questioner_instance == noone) {
			questioner_instance = instance_create_depth(0,0, depth-1, obj_QUESTIONER);
			questioner_instance.textPos = [text_x+sprite_get_width(spr_soul)*2, text_y+line[0]*line[1]]
			questioner_instance.creator_id = id;
			questioner_instance.question = question;
		};
	}
}