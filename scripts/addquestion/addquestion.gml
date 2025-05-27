function addquestion(_name, _script=0){
	if (!variable_instance_exists(id, "question")) {
		variable_instance_set(id, "question", array_create(0))
	}
	
	array_push(question, [_name,_script]);
}