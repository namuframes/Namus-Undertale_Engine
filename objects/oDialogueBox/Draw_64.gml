if (live_call()) {return live_result};
var _dia_y = 315*global.ontop;
draw_set_alpha(box_alpha);
//draw_box(_x,_y-_dia_y,_x+585,_y/2.1, undefined, undefined, box_alpha)
draw_sprite_ext(spr_dialogueBox, 0, _x, _y-_dia_y, image_xscale*2, image_yscale*2, image_angle, image_blend, box_alpha)
textBox_draw(_x,_y-_dia_y)