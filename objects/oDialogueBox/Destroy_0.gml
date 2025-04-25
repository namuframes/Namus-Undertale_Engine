global.canmove = true;
if (audio_exists(dialogue.sound)) audio_stop_sound(dialogue.sound)
scr_reset_dialogue_array(true);
if (instance_exists(parCutscene) && passTimer)
{
	with(parCutscene)
	{if doCutscene {timer++;}}
}