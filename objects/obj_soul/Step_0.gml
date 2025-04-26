if (live_call()) {return live_result}

scr_inputs();

x+=obj_boxLimit.x-obj_boxLimit.xprevious;
y+=obj_boxLimit.y-obj_boxLimit.yprevious;


hsp = (right_key-left_key)*spd
vsp = (down_key-up_key)*spd

if (left_key && right_key) {hsp = -1*spd}
if (up_key && down_key) {vsp = -1*spd}

if (cancel_key) //Walking slower if pressing X
{
	spd = slow_speed
} else {spd = default_speed}
var boxSize = [(sprite_width)*sign(hsp),(sprite_height)*sign(vsp)]
if (!place_meeting(x+(hsp+boxSize[0]),y,obj_boxLimit)) {hsp = 0}
if (!place_meeting(x,y+(vsp+boxSize[1]),obj_boxLimit)) {vsp = 0}

x += hsp
y += vsp

if (invincible)
{
	image_speed = 1;
	if (inv_frames > 0 ) 
	{
		inv_frames--
	} 
	else {invincible = false;}
} else {image_speed = 0; image_index = 0;inv_frames = inv_framesQuant;}

//x = clamp(x, _limit[0]+14, _limit[1]-14)
//y = clamp(y, _limit[2]+14, _limit[3]-14)
if (mouse_check_button(mb_left)) {
	x = mouse_x;
	y = mouse_y;
}