if (timing > 0) {timing--;}

if (timing <= 0) {
	i = 0
	cutscene_commands()
	do_movement();
	if (array_length(moving_action) <= 0) {
		instance_destroy();	
	}
}