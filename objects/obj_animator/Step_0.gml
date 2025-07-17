if (live_call()) {return live_result}
if (initialize) { //Te amo tales, <3
	if (values_init == undefined) {values_init = variable_instance_get(object, var_name)}

	var chan = animcurve_get_channel(curve.asset,curve_type);
	var val = animcurve_channel_evaluate(chan,curve.time);

	if (instance_exists(object)) {
		if (curve.time < 1) {
			curve.time += 1/(room_speed*curve.speed);
			var difere = (end_value - values_init)
			variable_instance_set(object,var_name, values_init+difere*val);
		} else {
			variable_instance_set(object,var_name, end_value);
			instance_destroy();	
		}
	}
}