layer = layer_create(LAYERS.ui-22)

timer = 0;

commands = []
cur_action = 0

wait = {
	time: -1,
}

do_action = function() {
	if (cur_action > array_length(commands)-1) {instance_destroy()} else {
		var action = commands[cur_action]
		var agrs = action.args
		script_execute_ext(action.script,action.args,0);
	}
}

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

tween_list = array_create(0)