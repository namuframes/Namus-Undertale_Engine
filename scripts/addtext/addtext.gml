function addtext(_text, _seq=0) {
	if (!variable_instance_exists(id, "msg")) {
	    msg = array_create(0);
	}
	
	if (object_get_parent(object_index) == par_npc or object_index = par_npc)
	{
	    while (array_length(msg) <= _seq) {
	        array_push(msg,  array_create(0));
	    }
		array_push(msg[_seq], _text);
	} else {

		array_push(msg, _text);
	}
}