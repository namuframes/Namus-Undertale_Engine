draw_self();
if (live_call()) {return live_result};
if (global.debug)
{
	var debug_texts = ["X: "+string(x), "Y: "+string(y), "Dance: "+string(frisk_dance)]
	draw_collision()
	draw_set_font(fnt_crypt)
	for (var i = 0; i < array_length(debug_texts); i++)
	{
		var _t = ""
		var _tam = array_length(debug_texts)
		_t += string(debug_texts[i])+"\n"
		draw_text(x,y-sprite_height-(20*_tam)+(20*i),_t);
	}
	draw_set_font(-1)
	
};


//draw_rectangle(bbox_left-spd, bbox_top-spd, bbox_right+spd, bbox_bottom+spd, false)