for(var i = 0; i < array_length(global.dia_question); i++)
{
	var _mathh = 2*draw_on_gui
	var _b = instance_create_depth(x+(100*i)*_mathh,y, depth, obj_INSTAWIRITER);
	_b.draw_on_ui = draw_on_gui;
	_b.texttodraw = global.dia_question[i];
	dia_id[i] = _b.id;
	text_pos[i] = [_b.x, _b.y]
};