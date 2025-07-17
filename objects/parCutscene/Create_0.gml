layer = layer_create(LAYERS.ui-22)
global.nomove_cutscene=true;

cutscene = 0;

commands = array_create(0);
commands_arg1 = array_create(0);
commands_arg2 = array_create(0);
commands_arg3 = array_create(0);
commands_arg4 = array_create(0);
commands_arg5 = array_create(0);
commands_arg6 = array_create(0);
commands_arg7 = array_create(0);
commands_arg8 = array_create(0);

i = 0;

cur_actor = obj_mainchar;

my_box = 0

current_command = 0;
max_command = -1;
wait_command = false;
waiting = {
	time: 0,
	buffer: true
};
_c = "";

breakme = false;

moving_action = array_create(0);

do_movement = function() {
	if (array_length(moving_action) > 0) {
		for (var j = 0; j < array_length(moving_action); j++) {
			var st = moving_action[j];
			var st_obj = st.object
			if (point_distance(st_obj.x, st_obj.y, st.x, st.y) > st.speed)
			{
				st_obj.speed = st.speed;
				st_obj.direction = point_direction(st_obj.x,st_obj.y,st.x, st.y);
			} else {
				st_obj.speed = 0;
				st_obj.direction = 0;
				if (object_index == obj_delay_cmd) {array_reset(moving_action)} else {array_delete(moving_action, j, 1)}
			}
		}
	}	
}

cutscene_ended = false;

timer = 0;