layer = layer_create(LAYERS.ui,"diabox")
_x = 32
_y = 320;
global.canmove = false;
box_alpha = 1;

finished_wiriting = false;

font = fnt_main
letter_width = (font_get_size(font)+6); //Letter Width

blip_sound = sndTxt1;
line_endDef = sprite_get_width(spr_dialogueBox);
line_end = line_endDef;
line_space = letter_width;
text_speed = 1;

portrait = "";
resetPort = 2;
portrait_frame = 0;
portTimeDef = 0;
portTime = portTimeDef;

offset = {
	x: 0,
	y: 0,
	size: 2,
	chWidth: 0,
	lineSpace: 0,
	lineend: 0
}

skip_timer = -1;

portrait_offset = function(_x=0, _y=0, scale=2, _charWidth=0, _lineSpace=0, _lineend = 0)
{
	offset.x = _x; 
	offset.y = _y; 
	offset.size = scale; 
	offset.chWidth = _charWidth;
	offset.lineSpace = _lineSpace; // Line space
	offset.lineend = _lineend; // Line eND
}

set_character = function(_blip=sndTxt1, _font=fnt_main)
{
	blip_sound = _blip;
	font = _font;
}

texttodraw = array_create(0);
curmsg = 0;
text = "";
lines = 1;
wee = 0

next_message = function() {
	curmsg++;
	if (curmsg < array_length(texttodraw)) {
		writerInfo[?"box"].letter = 0;
		writerInfo[?"box"].mod_speed = noone;
		writerInfo[?"box"].time = 0;
		resetPort = 2;
		
		obj = noone
	} else {
		instance_destroy()	
	}
}

question = array_create(0);
questioner_instance = noone;
in_question = false;