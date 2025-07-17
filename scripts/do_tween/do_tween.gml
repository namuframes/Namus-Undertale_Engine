function do_tween(_object,_var,_value,_type,_speed){
	var t = instance_create_depth(20,20,0,obj_animator)
	t.object = _object;
	t.var_name = _var;
	t.end_value = _value;
	t.curve_type = _type
	t.initialize = true;
	t.curve.speed = _speed;
}