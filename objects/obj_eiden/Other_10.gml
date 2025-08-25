page = clamp(page,0,array_length(cut)-1);

if (array_length(cut) > 0) {
	if (accept_key_p) {
		look_at_player()
		cutInstance = instance_create_depth(x,y,depth,obj_cutscene);
		cutInstance.cutscene = cut[page]
		changepage = true
	}
}

if (!instance_exists(cutInstance) && changepage) {
	page++;
	changepage = false
}