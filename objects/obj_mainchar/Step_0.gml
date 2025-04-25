if (live_call()) {return live_result;}

var collisions = array_create(0);
with(obj_colision) {
	if (can_colide) {
		array_push(collisions, id);
	}
}

if (cant_playerMove())
{
	state = mode.freeze;	
}
else
{
	state = mode.free;	
	reset_movemente = true;
}

switch(state)
{
	case mode.free:

		hsp = (right_key-left_key)*spd;
		vsp = (down_key-up_key)*spd;
		
		if (right_key && left_key){hsp=-1*spd}
		if (down_key && up_key){vsp=-1*spd}
		
		for (var i = 0; i < array_length(collisions); i++) { //Just basically getting the instances that have collisions in the array to do the code shit and yyeeeeaaaahhhh
			var _obj = collisions[i]
			if (instance_place(x,y+sign(vsp), _obj))
			{
				if (left_key) {face = LEFT};	if (right_key) {face = RIGHT};
			}

			if (instance_place(x+sign(hsp),y,_obj))
			{
				if (down_key) {face = DOWN};	if (up_key) {face = UP};
			}
		}
		
		if ((hsp != 0 or vsp != 0) && !spin)
		{
			if (vsp > 0 && face == UP) {face = DOWN}
			if (vsp < 0 && face == DOWN) {face = UP}
			if (vsp = 0)
			{
				if (hsp > 0) {face = RIGHT};
				if (hsp < 0) {face = LEFT};
			}
			if (hsp > 0 && face == LEFT) {face = RIGHT}
			if (hsp < 0 && face == RIGHT) {face = LEFT}
			if (hsp = 0)
			{
				if (vsp > 0) {face = DOWN};
				if (vsp < 0) {face = UP};
			}
		}

		colision(obj_colision)	
		do_frisk_dance();
	break;
	
	case mode.freeze:
		if (reset_movemente)
		{
			moving = false;
			hsp = 0;
			vsp = 0;
			if (image_index != 0) {image_index = 0};
			if (image_speed != 0) {image_speed = 0};
			reset_movemente = false	
		}
		
		if (spin)
		{
			if (spin_timer > 0) {spin_timer--;}
			if (spin_timer = 0)
			{
				face++;
				if (face > 3) {face = 0;}
				sprite_index = sprite[face];
				spin_timer = 5;
			}
		}
		
		for(var i = 0; i < array_length(sprite); i++)
		{
			if (sprite_index == sprite[i]) {face=i}
		}	
		
	break;
}