if (live_call()) {return live_result}
scr_inputs();
hsp = (right_key-left_key)*spd
vsp = (down_key-up_key)*spd

if (left_key && right_key) {hsp = -1*spd}
if (up_key && down_key) {vsp = -1*spd}

if (cancel_key) //Walking slower if pressing X
{
	spd = slow_speed
} else {spd = default_speed}


x += hsp;
y += vsp;

if (invincible)
{
	image_speed = 1;
	if (inv_frames > 0 ) 
	{
		inv_frames--
	} 
	else {invincible = false;}
} else {image_speed = 0; image_index = 0;inv_frames = inv_framesQuant;}


var _angle = obj_battleBox.image_angle/10
var _limit = [(obj_battleBox.bbox_left)+_angle, (obj_battleBox.bbox_right)-_angle, (obj_battleBox.bbox_top)+_angle, (obj_battleBox.bbox_bottom)-_angle]
x = clamp(x, _limit[0]+14, _limit[1]-14)
y = clamp(y, _limit[2]+14, _limit[3]-14)