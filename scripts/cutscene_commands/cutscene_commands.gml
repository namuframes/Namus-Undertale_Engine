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

function c_instance_create(x,y,depth,obj) {
	c_cmd([x,y,depth,obj],function(x,y,depth,obj){
		instance_create_depth(x,y,depth,obj)
		end_action()
	})
}

function c_wait_anim(obj) {
	c_cmd([obj],function(obj){
		if (obj.image_index >= obj.image_number-1) {end_action()}
	})
}

function c_sound(soundid,priority,loops,gain=1,offset=0,pitch=1) {
	c_cmd([soundid,priority,loops,gain,offset,pitch],
	function(soundid,priority,loops,gain,offset,pitch) {
		audio_play_sound(soundid,priority,loops,gain,offset,pitch)
		end_action();
	})
}

function c_destroy(obj) {
	c_cmd([obj],
	function(obj) {
		if (instance_exists(obj)) {instance_destroy(obj)}
		end_action()
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
		if (_bool) {obj_mainchar.face = DOWN}
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
	
function c_move(obj,x,y,speed,walksprites=false) {
	c_cmd([obj,x,y,speed,walksprites],
		function(obj,x,y,speed,walksprites) {
			var _finalPos = {x: x,y: y};
			var spd = speed; var varname = "movement-"+string(array_length(moving_action));
			variable_instance_set(id, varname, {object: obj, x: _finalPos.x, y: _finalPos.y, speed: spd, auto_sprite: walksprites})
			array_push(moving_action, variable_instance_get(id,varname))
			end_action()
		}
	)
}

function c_wait_move(obj,_pos=1) {
	c_cmd([obj,_pos], function(obj,_pos) {
		if (instance_exists(obj)) {
			var has = -4;
			for(var i = 0; i < array_length(moving_action); i++) {if (struct_get(moving_action[i],"object") == obj) {has = i}}
			if (has == -4) {end_action()} else {
				var st = moving_action[has];
				var st_obj = obj
				if (point_distance(st_obj.x, st_obj.y, st.x, st.y) < st.speed) {
					end_action()
				}
			}
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