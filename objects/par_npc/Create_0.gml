if (live_call()) {return live_result}
event_inherited();
page = 0;

intBox[0] = interactBox_x;
intBox[1] = interactBox_y;
intBox[2] = interactBox_x2;
intBox[3] = interactBox_y2;

changepage = false;

box_instance = 0;

rect_intersects = function(ax1, ay1, ax2, ay2, bx1, by1, bx2, by2) {
    // normalize coords so (left, top, right, bottom) is guaranteed
    var a_left   = min(ax1, ax2);
    var a_right  = max(ax1, ax2);
    var a_top    = min(ay1, ay2);
    var a_bottom = max(ay1, ay2);

    var b_left   = min(bx1, bx2);
    var b_right  = max(bx1, bx2);
    var b_top    = min(by1, by2);
    var b_bottom = max(by1, by2);

    return !(a_right < b_left || a_left > b_right || a_bottom < b_top || a_top > b_bottom);
};


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