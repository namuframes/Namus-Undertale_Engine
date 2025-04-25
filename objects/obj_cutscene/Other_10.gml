if (is_array(scene_info))
{
	cur_scene = scene_info[action];
	var scene_length = array_length(cur_scene)-1;

	cur_scene_array = -1;
	cur_scene_array = array_create(scene_length,0)
	array_copy(cur_scene_array, 0, cur_scene, 1, scene_length);
}