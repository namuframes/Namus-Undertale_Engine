scr_inputs()

if (left_key_p && selected_quest > 0)
{
	audio_play_sound(sfx_select, 1, false)
	selected_quest--;
};

if (right_key_p && selected_quest < array_length(global.dia_question)-1)
{
	audio_play_sound(sfx_select, 1, false)
	selected_quest++;
};

if (accept_key_p)
{
	var _scene = global.dia_questionResult[selected_quest]
	if(!instance_exists(obj_cutscene))
	{
		var _cut = instance_create_layer(0, 0, layer_create(0), obj_cutscene)
		_cut.action = -1
		//_cut.scene_info = get_cutscene(global.dia_questionResult[selected_quest])
		_cut.scene_info = _scene
		if (instance_exists(_cut)) instance_destroy();
	}
	else
	{
		with(obj_cutscene)
		{
			show_debug_message(scene_info)
			event_perform(ev_create, 0)
			instance_destroy(obj_QUESTIONER)
			scene_info = _scene;
			action = -1
		}
	}
}