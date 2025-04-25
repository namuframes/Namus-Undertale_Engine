function scr_reset_dialogue_array(_reset_global=true,_reset_normal_vars){
	if (_reset_global)
	{
		global.curmsg = 0;
		array_reset(global.dia_msg);
		array_reset(global.dia_question);
		array_reset(global.dia_questionResult);
	}
	
	if (argument_count > 0)
	{
		if (_reset_normal_vars)
		{	
			if (variable_instance_exists(id,"msg_add")) {msg_add = 0;}
			if (variable_instance_exists(id,"char_add")) {char_add = 0;}
			if (variable_instance_exists(id,"msg"))
			{
				array_reset(msg);
				array_reset(character);
			}
		}
	}
}