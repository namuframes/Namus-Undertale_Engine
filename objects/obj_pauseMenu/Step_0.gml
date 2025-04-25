if (live_call()) {return live_result}
scr_inputs();
if (!global.inPause)
{
	if (keyboard_check_pressed(vk_escape) && inputCooldown <= 0) {
		global.inPause = true;
		inputCooldown = 1;
	}
} else { // Is in pause menu
	
	var prev_val = configSel;
	var vsp = (down_key_p-up_key_p);
	configSel += vsp;

	inputCooldown = clamp(inputCooldown, 0, infinity)
	configSel = clamp(configSel, 0, array_length(configop)-1)
	if (configSel != prev_val) {
		audio_play_sound(sfx_select, 0, false);
		prev_val = configSel
	}
	
	if (keyboard_check_pressed(vk_escape) || cancel_key_p && inputCooldown <= 0)	{
		global.inPause = false; 
		inputCooldown = 1;
	}	
}
if (inputCooldown > 0) {inputCooldown--}