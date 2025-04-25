scr_inputs();
if (left_key_p && !selected_op) {cur_op--; audio_play_sound(sfx_select,1,false,2);}
if (right_key_p && !selected_op) {cur_op++; audio_play_sound(sfx_select,1,false,2);}
cur_op = clamp(cur_op, 0, array_length(options)-1)
	
if (accept_key_p)
{
	switch (options[cur_op])
	{
		case "Save":
			if (selected_op) 
			{
				instance_destroy()
				create_box("{c_yellow}(The game haven't actually saved!)")
			} else {audio_play_sound(sfx_save,1,false,2)};
			color = c_yellow;
			selected_op = true;
		break;
		
		default:
			instance_destroy()
		break;
	}
}	