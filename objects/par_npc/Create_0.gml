if (live_call()) {return live_result}
event_inherited();
page = 0;

intBox[0] = interactBox_x;
intBox[1] = interactBox_y;
intBox[2] = interactBox_x2;
intBox[3] = interactBox_y2;

changepage = false;

box_instance = 0;


if (asset_get_type(sprite_down) == asset_sprite) {
	sprite_index = sprite_down;
}

prev_sprite = sprite_index

look_at_player = function() {
	prev_sprite = sprite_index;
	var s = sprite_down
	var direc = point_direction(x,y,obj_mainchar.x,obj_mainchar.y)
	if (instance_exists(obj_mainchar)) {
	    if (direc >= 45 && direc < 135) {
	        if (asset_get_type(sprite_up)) sprite_index = sprite_up;
	    }
	    else if (direc >= 135 && direc < 225) {
	        if (asset_get_type(sprite_left)) sprite_index = sprite_left;
	    }
	    else if (direc >= 225 && direc < 315) {
	        if (asset_get_type(sprite_down)) sprite_index = sprite_down;
	    }
	    else {
	        if (asset_get_type(sprite_right)) sprite_index = sprite_right;
	    }
	}
}