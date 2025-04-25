layer = layer_create(LAYERS.ui,"diabox")
_x = 20;
_y = 320;
global.canmove = false;
box_alpha = 1;

font = fnt_main
letter_width = (font_get_size(font)+4); //Letter Width

blip_sound = sndTxt1;
line_endDef = 34.5;
line_end = line_endDef;
line_space = letter_width;
text_speed = 1;

portrait = "";
resetPort = 2;
portrait_frame = 0;
portTimeDef = 4;
portTime = portTimeDef;

offset[0] = 0; //Portait x
offset[1] = 0; //Portait y
offset[2] = 2; // Portait Size
offset[3] = 0; // Char Width Offest
offset[4] = 0; // Line space
offset[5] = 0; // Line eND


skip_timer = -1;

function portrait_offset(_x=0, _y=0, scale=2, _charWidth=0, _lineSpace=0, _lineend = 0)
{
	offset[0] = _x; 
	offset[1] = _y; 
	offset[2] = scale; 
	offset[3] = _charWidth;
	offset[4] = _lineSpace; // Line space
	offset[5] = _lineend; // Line eND
}

function set_character(_blip=sndTxt1, _font=fnt_main)
{
	blip_sound = _blip;
	font = _font;
}
texttodraw = array_create(0);
text = noone;
curmsg = 0;
function next_message()
{
	curmsg++;	
	if (curmsg < array_length(text))
	{
		resetPort = 2;
		if (audio_exists(dialogue.sound)) audio_stop_sound(dialogue.sound)
		dialogue = noone
		text = texttodraw[curmsg]
	} else {
		instance_destroy(id)
		curmsg--;
	}
}

setshit = true;
passTimer = false;
dialogue = undefined;