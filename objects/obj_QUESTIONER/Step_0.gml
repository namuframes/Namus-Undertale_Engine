if (live_call()) {return live_result};
scr_inputs();

var prev_val = curQues;
var vsp = (right_key_p-left_key_p);
curQues += vsp;

curQues = clamp(curQues, 0, array_length(question)-1)
if (curQues != prev_val) {
	audio_play_sound(sfx_select, 0, false);
	prev_val = curQues
}

if (accept_key_p) {
	instance_destroy()
}
