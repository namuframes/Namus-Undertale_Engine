/*
var _max = max_command;
i = current_command

if (waiting.time > 0) {waiting.time--;}

if (!wait_command && waiting.time <= 0) {
	if (array_length(commands)>0) {_c = commands[current_command];}
	if (current_command < _max)	{current_command++}
	
	if (_c != "wait") {waiting.buffer = true}
}
cutscene_commands();*/

if (wait.time > -1) {wait.time--}

do_action()

do_movement();
