if (live_call()) {return live_result;}
event_inherited();
#macro RIGHT 0
#macro UP 1
#macro LEFT 2
#macro DOWN 3

reset_movemente = false;

spd = 3;
hsp = 0;
vsp = 0;

npc_array_size = 9999;

for (var i = npc_array_size; i >= 0; i--)
{
	pos_x[i] = x;
	pos_y[i] = y;
}

moving = false;
image_index = 1;

sprite[0] = spr_main_r;
sprite[1] = spr_main_u;
sprite[2] = spr_main_l;
sprite[3] = spr_main_d;

face = DOWN;

spin_timer = 0;
spin = false;

state = mode.free;

function colision(obj)
{
	var _c = collision_rectangle(bbox_left-spd, bbox_top-spd, bbox_right+spd, bbox_bottom+spd, obj, false, true)
	var allowCol = variable_instance_exists(_c,"can_colide") ? _c.can_colide : true
	
	if (allowCol) {
		if (place_meeting(x+hsp,y,obj))
		{
			var yplus = 0;
			while (place_meeting(x+hsp,y-yplus,obj) && yplus <= abs(1*hsp)) {yplus++;}
			if (place_meeting(x+hsp,y-yplus,obj))
			{
				while (!place_meeting(x+sign(hsp),y,obj))
				{
					x += sign(hsp);
				}
				hsp = 0;
			} else {y-=yplus}			
		}
	
		if !place_meeting(x+hsp,y+1,obj) && vsp >= 0 && place_meeting(x+hsp,y+2+abs(hsp),obj)
		{
			while(!place_meeting(x+hsp,y+1,obj) && hsp !=0) {y += 1;}
		}
	
		if (place_meeting(x,y+vsp,obj))
		{
			while (!place_meeting(x,y+sign(vsp),obj))
			{
				y += sign(vsp);
			};
	
			vsp = 0;
		};
	}

};

frisk_dance = false;
glitch_dance_sprite = false;

function do_frisk_dance()
{
	
	var _c = collision_rectangle(bbox_left-spd, bbox_top-spd, bbox_right+spd, bbox_bottom+spd, obj_colision, false, true)
	var allowCol = variable_instance_exists(_c,"can_colide") ? _c.can_colide : true
	
	var pressing_buttons = (down_key and up_key)
	if (pressing_buttons)
	{frisk_dance = true;} else {frisk_dance = false}	
	
	if (frisk_dance && allowCol) {
		if (instance_place(x,y-spd,obj_colision)) {
			if (!glitch_dance_sprite) {		
				face = DOWN
				glitch_dance_sprite = true
			} else {face = UP; glitch_dance_sprite = false}
			vsp+=spd
		}
	}

}