var _cos = cos((global.time)/4)
var _ang = sin((global.time)/4)/8
var _sin = sin((global.time)/14)
draw_sprite_ext(sprite_index, image_index, x+_sin*1.5, y+_cos, image_xscale+_ang, image_yscale+(_ang/4), image_angle, image_blend, image_alpha)

if (global.debug)
{
	draw_rectangle(x-length,y-length,x+length,y+length, true);
};

draw_set_color(-1);
draw_set_font(-1);