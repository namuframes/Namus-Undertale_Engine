function do_tween(_object, _tag, _var, _value, _type, _speed) {
    var found = false;

    with (obj_animator) {
        if (variable_instance_exists(id, string(_tag))) {
            found = true;
            exit;
        }
    }

    if (!found) {
        var t = instance_create_depth(20, 20, 0, obj_animator);
        t.object = _object;
        t.var_name = _var;
        t.end_value = _value;
        t.curve_type = _type;
        t.initialize = true;
        t.curve.speed = _speed;
        variable_instance_set(t, string(_tag), true);
    }
}
