instance_destroy(creator_id);
audio_play_sound(sfx_confirm, 0, false);
var _c = instance_create_depth(0,0, 0, obj_cutscene)
_c.cutscene = question[curQues][1];