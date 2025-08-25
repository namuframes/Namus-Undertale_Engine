if (live_call()) {return live_result}
scr_inputs()
intBox[0] = (bbox_left-2)+interactBox_x;
intBox[1] = (bbox_top-2)+interactBox_y;
intBox[2] = (bbox_right+2)+interactBox_x2;
intBox[3] = (bbox_bottom+2)+interactBox_y2;

if (asset_get_type(mask) == asset_sprite) {
	mask_index = mask;
}

var _intCol = collision_rectangle(intBox[0], intBox[1], intBox[2], intBox[3], obj_mainchar, false, false)

if (instance_exists(obj_mainchar) && obj_mainchar.state == mode.free && (obj_mainchar.face == face or face == "any"))	{
	sprite_index = prev_sprite
	if (_intCol){
		event_user(0)
		event_user(1)
	}
}


if (depthWay == "Always behind") {
	if (instance_exists(obj_mainchar))
	{
		exception = true;
		visible = true;
		depth = obj_mainchar.depth+1
	}
}