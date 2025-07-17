if (live_call()) {return live_result}
if (initial_value = undefined) {initial_value = variable_instance_get(target,target_variable);}
variable_instance_set(target,target_variable,initial_value+range)
range -= (sign(range)*0.5)/time
range = -range
if (range == 0) {instance_destroy()}
show_debug_message(range)