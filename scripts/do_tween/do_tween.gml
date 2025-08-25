function do_tween(_object, _tag, _var, _value, _type, _speed) {
	var t = 0
    var foundi = noone;
    with (obj_animator) {
        if (variable_instance_exists(id, string(_tag))) {
            foundi = id;
        }
    }

    if (foundi == noone) {
        t = instance_create_depth(20, 20, 0, obj_animator);
        t.object = _object;
        t.var_name = _var;
        t.end_value = _value;
        t.curve_type = _type;
        t.initialize = true;
        t.curve.speed = _speed;
		t.creator = id
		variable_instance_set(t, string(_tag), true);
	} else {
		if (
        foundi.object != _object ||
        foundi.var_name != _var ||
        foundi.end_value != _value ||
        foundi.curve_type != _type ||
        foundi.curve.speed != _speed
		) {
			instance_destroy(foundi)
	        t = instance_create_depth(20, 20, 0, obj_animator);
	        t.object = _object;
	        t.var_name = _var;
	        t.end_value = _value;
	        t.curve_type = _type;
	        t.initialize = true;
	        t.curve.speed = _speed;
			t.creator = id
			variable_instance_set(t, string(_tag), true);
		}
	}
	return t
}
