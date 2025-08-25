function end_action() {
	wait.time = -1;
	cur_action++;
	do_action()
}

function c_cmd(_argsArray, _script) {
	var command = {
		args: _argsArray,
		script: _script
	}
	array_push(commands, command);
}

function c_custom(_function,_args=[]) {
	c_cmd([_function],function(_function){
		script_execute(_function)
	})
}

function c_wait(_time) {
	c_cmd([_time],
	function(_time) {
		if (wait.time <= -1) {wait.time = _time;}
		if (wait.time == 0) {end_action();}
	})
}
	
function c_shake(object,_var,range,time) {
	c_cmd([object,_var,range,time],
	function(object,_var,range,time) {
		do_shake(object,_var,range,time);
		end_action();
	})
}

function c_sprite(obj, sprite, imgSpeed=1, imgIndex=noone) {
	c_cmd([obj, sprite, imgSpeed, imgIndex],
	function(obj, sprite, imgSpeed, imgIndex) {
		obj.sprite_index = sprite;	obj.image_speed = imgSpeed;
		if (imgIndex != noone) {obj.image_index = imgIndex};
		end_action();
	})
}

function c_canMove(_bool) {
	c_cmd([_bool],
	function(_bool) {
		global.nomove_cutscene = !_bool
		end_action();
	})
}

function c_dialogue(_dia) {
	c_cmd([_dia], 
	function(_dia) {
		my_box = create_box(_dia)
		
		end_action()
	})
}

function c_wait_dialogue() {
	c_cmd([], function() {
		if (!instance_exists(my_box)) {end_action()}
	})	
}
	
function c_wait_box(number) {
	c_cmd([number], function(number) {
		if (instance_exists(my_box)) {
			if (my_box.curmsg == number) {end_action()}
		} else {end_action();}
	})	
}

function c_var(obj,values=[]) {
	c_cmd([obj,values],
	function(obj,values) {
		if (is_array(values[0])) {
			for (var j = 0; j < array_length(values); j++) {
				variable_instance_set(obj,values[j][0],values[j][1])
			}
		} else {variable_instance_set(obj,values[0],values[1])}
		
		end_action();
	})	
}

function c_tween(obj,tag,_var,value,type,speed) {
	c_cmd([obj,tag,_var,value,type,speed],
	function(obj,tag,_var,value,type,speed) {
		var _tweenInstance = do_tween(obj,tag,_var,value,type,speed)
		array_push(tween_list,_tweenInstance)
		end_action();
	})	
}

function c_wait_tween(tag,value=1) {
	c_cmd([tag,value],
	function(tag,value) {
		var instance = noone;
		if (instance_exists(obj_animator)) {
			with (obj_animator) {if (variable_instance_exists(id, string(tag))) {instance = id}};
		} else {end_action()}
		
		if (instance != noone) {
			var curve_pos = instance.curve.time;
			if (curve_pos >= value) {end_action()}
		}
	})	
}
	
function c_move(obj,x,y,speed) {
	c_cmd([obj,x,y,speed],
		function(obj,x,y,speed) {
			with(obj) {
				if (!variable_instance_exists(id,"_path")) {cutscene_path = path_add();} else if (asset_get_type(cutscene_path) != asset_path) {cutscene_path = path_add();}
				mp_linear_path(cutscene_path,x,y,speed,false)
				
				if (path_index != cutscene_path) {
					path_position = 0
					path_start(cutscene_path,speed,path_action_stop,false)
				}
			}
			end_action()
		}
	)
}

function c_wait_move(obj,_pos=1) {
	c_cmd([obj,_pos], function(obj,_pos) {
		if (obj.path_position >= _pos) {
			with(obj) {
				path_clear_points(cutscene_path)
				cutscene_path = undefined;
			}
			end_action(); 
		}
	})
}

function c_end() {
	c_cmd([],
	function() {
		instance_destroy()
		end_action()
	})
}