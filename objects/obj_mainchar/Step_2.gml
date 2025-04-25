x += hsp;
y += vsp;
x = clamp(x,0+sprite_width/2,room_width-sprite_width/2);
y = clamp(y,0+sprite_height,room_height-sprite_height/4);
if (!global.nomove_cutscene) {sprite_index = sprite[face];} //Changing the sprite index if isn't happening a cutscene
if (x != xprevious or y != yprevious)
{
	for (var i = npc_array_size; i > 0; i--)
	{
		pos_x[i] = pos_x[i-1];
		pos_y[i] = pos_y[i-1];
	}
	
	pos_x[0] = x;
	pos_y[0] = y;
};

