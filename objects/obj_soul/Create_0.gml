hsp = 0;
Shsp = 1;
vsp = 0;
default_speed = 4;
slow_speed = 2;
spd = default_speed;
inv_framesQuant = 40;
inv_frames = inv_framesQuant;
invincible = false;

function colision(obj)
{
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

};