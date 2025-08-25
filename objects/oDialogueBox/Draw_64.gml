if (live_call()) {return live_result};

if (room != rm_battle && room != rm_shop) {	
	var _dia_y = 315*global.ontop;
	draw_set_alpha(box_alpha);
	draw_sprite_ext(spr_dialogueBox, 0, _x, _y-_dia_y, image_xscale*2, image_yscale*2, image_angle, image_blend, box_alpha)
	var textPos = {x:_x+28,y:(_y+20)-_dia_y}

	if (asset_get_type(portrait) == asset_sprite) {
		var _asset = asset_get_index(portrait)	
		var portPos = {x: _x+sprite_get_width(_asset)/2, y: _y+20}
		draw_sprite_ext(_asset,portrait_frame,portPos.x+offset.x,portPos.y+offset.y,offset.size,offset.size,0,c_white,1);
		var _m = 10+sprite_get_width(_asset)*2
		textPos.x += _m
		line_end = line_endDef-_m
	};
	/*
	if (resetPort > -1) {resetPort--;} 
	if (resetPort == 0) {portrait = ""}
	*/
	draw_special_text(textPos.x,textPos.y, 1.3, line_space, font, text, 2, 2, "box",0,blip_sound,line_end)
}

//draw_text(textPos.x+90,textPos.y-10,$"{writerInfo[?"box"].time} - {writerInfo[?"box"].waitZ}")