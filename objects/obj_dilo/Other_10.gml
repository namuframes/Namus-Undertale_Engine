event_inherited();

if (actionSel == acts[1]) { //Pet action
	with(cutsceneInstance) {
		switch(timer) {
			case 0:
				create_box("* You pet dilo")
			break;
			
			case 1:
				explo = instance_create_depth(other.x-40, other.y-65, other.depth-1, obj_explosion)
				audio_play_sound(sfx_explode, 0, false)
				timer++;
			break;
			
			case 2:
				if (explo.image_index >= 5) {
					other.image_alpha = 0.5;
					create_box("* HOLY SHIT-{>}")
				}
			break;
			
			case 3:
				instance_destroy()
			break;
		}
	}
	can_spare = true;
}

if (actionSel == acts[0]) { //Check action
	quick_cutscene([
		"* Dilo DEF 3 | ATK 3 |Just a bird trying to find something to do."
	])	
}