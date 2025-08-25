if (layer_sequence_is_finished(seq))
{
	instance_destroy()	
}

with(obj_battleBox) {
	image_xscale = tweenVar(image_xscale,6, 1);
	image_yscale = tweenVar(image_yscale,6, 1);
}