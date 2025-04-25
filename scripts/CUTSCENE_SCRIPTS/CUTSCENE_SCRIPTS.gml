function create_box(_text, _passTimer=true) { //CREATING THE TEXT BOX WITH A TEXT
	var can_create = true;
	if (object_index == obj_cutscene) {
		can_create = !instance_exists(oDialogueBox)
	}
	
	if (can_create) {
		var b = instance_create_depth(0,0,0,oDialogueBox);
		if (is_array(_text)) {b.texttodraw = _text} else b.texttodraw[0] = _text;
		b.passTimer = _passTimer
		return (b);
		exit;
	}
}

function move_cam(_x, _y, spd, _final_target=obj_cut_cam, _speed=1, smooth = false) constructor {
	if (!instance_exists(obj_cut_cam)) {
		instance_create_depth(obj_cam.target.x, obj_cam.target.y, 0, obj_cut_cam)	
	}
	
	obj_cam.target = obj_cut_cam;
	done = false;
	finalx = _x;
	finaly = _y;
	Speed = _speed;
	obj = obj_cut_cam;
	final_target = _final_target;
	if (is_numeric(Speed)) {
		static move = function() {
			var __x=finalx, __y=finaly, __speed=Speed
			if (!done)
			{
				if (point_distance(obj.x, obj.y, finalx, finaly) > Speed)
				{
					with(obj)
					{
						move_towards_point(__x, __y, __speed)
					}
				} else {
					obj.speed = 0; 
					obj_cam.target = final_target;
					done = true;
				}
			}
		}
		if (!smooth) {
			move()
		} else {
			obj_cut_cam.x = lerp(obj_cut_cam.x, finalx, _speed)
			obj_cut_cam.y = lerp(obj_cut_cam.y, finaly, _speed)
		
			if (round(obj_cut_cam.x) == finalx && round(obj_cut_cam.y) == finaly) {
				done = true;	
			}
		}
	} else {
		obj_cut_cam.x = finalx;
		obj_cut_cam.y = finaly;
	}
}

function move_to(_obj, _x, _y, _speed) constructor	{ //Struct to move an object
	done = false;
	finalx = _x;
	finaly = _y;
	Speed = _speed;
	obj = _obj

	static move = function() {
		var __x=finalx, __y=finaly, __speed=Speed
		if (!done)
		{
			if (point_distance(obj.x, obj.y, finalx, finaly) > Speed)
			{
				with(obj)
				{
					move_towards_point(__x, __y, __speed)
				}
			} else {obj.speed = 0; done = true}
		}
	}

		
	move()
};

function tween_anim(_obj, stringVar, _val, _curve, _channel, ___time=1) constructor {
	obj = _obj;
	_stringVar = stringVar
	val = _val
	curve = _curve
	channel = _channel
	__time = ___time
	done = false;
	oVal = ["tween__do", "tween__val", "tween__eva", "tween__do"]
	for (var i = 0; i < array_length(oVal); i++) {
		if (!variable_instance_exists(obj, oVal[i])) {
				variable_instance_set(obj, "tween__val", undefined)
				variable_instance_set(obj, "tween__eva", undefined)
				variable_instance_set(obj, "tween__do", undefined);
		} else if (variable_instance_get(obj, oVal[i]) == undefined) {
				variable_instance_set(obj, "tween__val", variable_instance_get(obj, _stringVar))
				variable_instance_set(obj, "tween__eva", 0)
				variable_instance_set(obj, "tween__do", 1);	
		}
	}
	
	static tween = function()	{
		time = __time*0.01;
		var posAnim = variable_instance_get(obj, "tween__eva");
		var variable = variable_instance_get(obj, "tween__val");
		variable_instance_set(obj, "tween__eva", posAnim+time)
		chan = animcurve_get_channel(curve, channel);
		eva = animcurve_channel_evaluate(chan, posAnim);
		var res = variable+(val*eva)
		variable_instance_set(obj, _stringVar, round(res))
		if (eva == 1)	{
			done = true;
		}
	}
	
	if (!done)	{
		tween();
	} else {
		for (var i = 0; i < array_length(oVal); i++) {
			if (!variable_instance_exists(obj, oVal[i])) {variable_instance_set(obj, oVal[i], undefined)}
		}	
	}
}

function wait(_time)
{
	if (!variable_instance_exists(id, "waitTimer")) {variable_instance_set(id, "waitTimer", -1)}
	if (waitTimer == -1) {waitTimer = 30*_time};
	if (waitTimer > -1) {waitTimer--;}
	if (waitTimer == 0) {return true; waitTimer = -2;}
	
}

function dialogueDone()
{
	if (!variable_instance_exists(id, "dDoneDelay")) {variable_instance_set(id, "dDoneDelay", -1)}
	if (dDoneDelay == -1) {dDoneDelay = 2};
	if (dDoneDelay > 0) {dDoneDelay--;}
	if (dDoneDelay <= 0) {
		return !instance_exists(oDialogueBox) && global.curmsg >= array_length(global.dia_msg);	
		dDoneDelay = -1;
		exit;
	}
}