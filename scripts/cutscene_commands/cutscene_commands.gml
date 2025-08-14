function c_cmd(command, arg1=undefined, arg2=undefined, arg3=undefined, arg4=undefined, arg5=undefined, arg6=undefined, arg7=undefined, arg8=undefined)
{
	var c = parCutscene;
	c.max_command++;
    array_push(c.commands,command);
    array_push(c.commands_arg1, arg1);
    array_push(c.commands_arg2, arg2);
    array_push(c.commands_arg3, arg3);
    array_push(c.commands_arg4, arg4);
	array_push(c.commands_arg5, arg5);
	array_push(c.commands_arg6, arg6);
	array_push(c.commands_arg7, arg7);
	array_push(c.commands_arg8, arg8);
}

function c_move(_x, _y,_spd=1) {
	c_cmd("move",_x, _y, _spd);
}

function c_waitmove() {c_cmd("wait_move")}

function c_var(obj,values=[],_value) {c_cmd("var",obj,values)}

function c_end() {c_cmd("end")}

function c_dialogue(_dia) {c_cmd("dialogue",_dia)}
function c_waitbox(_msg) {c_cmd("waitBox",_msg)}

function c_sprite(sprite, _imgSpeed=1, _imgIndex=noone) {c_cmd("sprite",sprite,_imgSpeed, _imgIndex)}
function c_select(obj) {c_cmd("select",obj)}

function c_wait_dialogue() {c_cmd("wait_dialogue")}

function c_delay_cmd(_script,delay=1,_arg1=undefined,_arg2=undefined,_arg3=undefined,_arg4=undefined,_arg5=undefined,_arg6=undefined) {
	c_cmd("delaycmd",_script,delay,_arg1,_arg2,_arg3,_arg4,_arg5,_arg6);
}



function c_not_exist(_obj) {c_cmd("notExist",_obj)}

function c_lerpCam(_x,_y,_finaltarget=obj_cam.target,spd=1) {c_cmd("lerp_cam",_x,_y,_finaltarget,spd)}
function c_wait(_time) {c_cmd("wait",_time)}
function c_tween(_object,tag,_var,_value,_type,_speed) {c_cmd("tween",_object,tag,_var,_value,_type,_speed)}
function c_instance_create(_x,_y,_depth,_object,_struct={}) {c_cmd("instance_create",_x,_y,_depth,_object,_struct)}
function c_timer(_timer=timer+1) {c_cmd("timer",_timer)}

function c_shake(_object,_var,_range,_time) {
	c_cmd("shake",_object,_var,_range,_time);
}

function cutscene_commands(){
	switch(_c) {
		case "shake":
			do_shake(commands_arg1[i],commands_arg2[i],commands_arg3[i],commands_arg4[i])
		break;
		
		case "timer":
			timer = commands_arg1[i]
		break;
		
		case "instance_create":
			instance_create_depth(commands_arg1[i],commands_arg2[i],commands_arg3[i],commands_arg4[i],commands_arg5[i])
		break;
		
		case "notExist":
			if (instance_exists(commands_arg1[i])) {
				wait_command = true
				current_command = array_get_index(commands,_c) //Making the command be stuck on THIS command
			} else {wait_command = false}
		break;
		
		case "delaycmd":
			delay = instance_create_depth(0,0,0,obj_delay_cmd)
			delay._c = commands_arg1[i];
			delay.timing = commands_arg2[i];
			delay.cur_actor = cur_actor;
			delay.commands_arg1[0] = commands_arg3[i];
			delay.commands_arg2[0] = commands_arg4[i];
			delay.commands_arg3[0] = commands_arg5[i];
			delay.commands_arg4[0] = commands_arg6[i];
			delay.commands_arg5[0] = commands_arg7[i];
			delay.commands_arg6[0] = commands_arg8[i];
		break;
		
		case "tween":
			var args = (
				string(commands_arg1[i])+" - 1\n"+
				string(commands_arg2[i])+" - 2\n"+
				string(commands_arg3[i])+" - 3\n"+
				string(commands_arg4[i])+" - 4\n"+
				string(commands_arg5[i])+" - 5\n"+
				string(commands_arg6[i])+" - 6"
			)
			show_debug_message(args)
			do_tween(commands_arg1[i],commands_arg2[i],commands_arg3[i],commands_arg4[i],commands_arg5[i],commands_arg6[i])
		break;
		
		case "move":
			var _finalPos = {x: commands_arg1[i],y: commands_arg2[i]};
			var spd = commands_arg3[i]; var varname = "movement-"+string(array_length(moving_action));
			variable_instance_set(id, varname, {object: cur_actor, x: _finalPos.x, y: _finalPos.y, speed: spd})
			array_push(moving_action, variable_instance_get(id,varname))
		break;
			
		case "wait_move":
			if (array_length(moving_action) <= 0) {
				wait_command=false;
			} else {wait_command=true}
		break;

		case "end": 
			if (array_length(moving_action) <= 0 && !instance_exists(obj_delay_cmd)) {
				instance_destroy();
				global.nomove_cutscene=false;
			}
		break;
	
		case "dialogue": 
			my_box = create_box(commands_arg1[i]) 
		break;
	
		case "wait_dialogue": 
			if (!instance_exists(my_box)) {
				wait_command=false;
			} else {wait_command=true}
		break;
	
		case "select": cur_actor = commands_arg1[i] break;

		case "sprite": 
			cur_actor.sprite_index = commands_arg1[i];
			cur_actor.image_speed = commands_arg2[i];
			if (commands_arg3[i] != noone) {cur_actor.image_index = commands_arg3[i]}
		break;
		
		case "lerp_cam":
			if (!instance_exists(obj_cut_cam)) {instance_create_depth(obj_cam.target.x,obj_cam.target.y,0,obj_cut_cam)};
			obj_cam.target = obj_cut_cam;
			var _x = commands_arg1[i];
			var _y = commands_arg2[i];
			
			if (point_distance(obj_cut_cam.x,obj_cut_cam.y,_x,_y) > commands_arg4[i]) {
				obj_cut_cam.speed = commands_arg4[i];
				obj_cut_cam.direction = point_direction(obj_cut_cam.x,obj_cut_cam.y,_x,_y);
			} else {
				obj_cam.target = commands_arg3[i]
				instance_destroy(obj_cut_cam);
			}
		break;
	
		case "waitBox": 
			if (instance_exists(my_box)) {
				if (my_box.curmsg != commands_arg1[i]) {
					current_command = array_get_index(commands,_c) //Making the command be stuck on THIS command
					wait_command=true
				}else{wait_command=false}
			}
		break;
		
		case "wait":
			if (waiting.buffer) {
				waiting.time = commands_arg1[i]
				waiting.buffer = false;
			}
		break;
		
		case "var":
			var _values = commands_arg2[i]
			if (is_array(_values[0])) {
				for (var j = 0; j < array_length(_values); j++) {
					variable_instance_set(commands_arg1[i],_values[j][0],_values[j][1])
				}
			} else {
				variable_instance_set(commands_arg1[i],_values[0],_values[1])
			}
		break;
	};
}