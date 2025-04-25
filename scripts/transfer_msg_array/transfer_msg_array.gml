// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function transfer_msg_array(_var=msg){
	for(var i = 0; i < array_length(_var); i++)
	{
		global.dia_msg[i] = _var[i];
	}
	if (variable_instance_exists(id, "question"))
	{
		for (var i = 0; i < array_length(question); i++)
		{
			array_push(global.dia_question, question[i])
			if (variable_instance_exists(id, "question_result"))
			{
				array_push(global.dia_questionResult, question_result[i]);
			}
		}
	}
}