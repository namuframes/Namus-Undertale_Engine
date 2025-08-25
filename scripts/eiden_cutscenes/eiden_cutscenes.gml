function ct_eiden1(){
	switch(timer) {
		case 0:
			if (global.flag[0] == 0) {
				c_dialogue("{face,face_eiden1}* I hope that i can get into {wave}Undertale: Next Pages")
				c_wait_dialogue();
				c_custom(function() {global.flag[0] = 1})
			}
			if (global.flag[0] == 1) {
				c_dialogue([
					"{face,face_eiden1}* Carambolas, macacos me mordam!",
					"* Eimmm.... HMMMM",
					"{face}* Ele não vai entrar no {wave}Next Pages{/wave}..."
				])
				c_wait_box(1);
				c_var(obj_eiden,[["sprite_index",spr_eiden2]]);
				
				c_tween(obj_eiden,"nx","image_xscale",1.1,"out",2);
				c_tween(obj_eiden,"ny","image_yscale",.9,"out",2);
				
				c_wait_dialogue();
				c_var(obj_eiden,[["sprite_index",spr_eiden],["image_xscale",1],["image_yscale",1]])
			}
			timer++
		break;
	}
}