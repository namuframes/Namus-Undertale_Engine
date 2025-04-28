if (layer_sequence_is_finished(seq))
{
	instance_destroy()	
}

with(obj_battleBox) {
	image_xscale = lerp(image_xscale,6, 0.35);
	image_yscale = lerp(image_yscale,6, 0.35);
}