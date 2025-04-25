function room_goto_trans(_dest,_dest_obj, _facing=DOWN){
	if (!instance_exists(obj_transition))
	{
		instance_create_layer(0,0,layer_create(LAYERS.ui-1),obj_transition);
	};
	global.intransition = true;
	obj_transition.facingdirec = _facing;
	obj_transition.dest = _dest;
	obj_transition.dest_obj = _dest_obj;
}