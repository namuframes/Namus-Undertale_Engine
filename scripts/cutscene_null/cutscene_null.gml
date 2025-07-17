function cutscene_null(){
	switch(timer) {
		case 0:
			c_dialogue("* Wait there.")
			c_wait_dialogue()
			c_instance_create(obj_mainchar.x,obj_mainchar.y,0,obj_cut_cam)
			c_var(obj_cam,"target",obj_cut_cam)
			c_tween(obj_cut_cam,"x",obj_mainchar.x+50,"out",1)
			c_wait(30)
			c_select(obj_null)
			c_sprite(spr_null,0,1);
			c_dialogue([
				"* Why{w,10} are you here?\n{z}You wasn't meant to be here",
				"* Did you nocliped throw the floor?",
				"* Or the world rejected your existence?"
			])
			c_tween(obj_null,"x",1920,"out",2)
			c_waitbox(2)
			c_shake(obj_null,"x",2,2)
			c_sprite(spr_null,0,2);
			c_wait_dialogue();
			c_tween(obj_cut_cam,"x",obj_mainchar.x,"linear",0.5)
			c_not_exist(obj_animator)
			c_var(obj_cam,"target",obj_mainchar)
			c_end();
			timer++;
		break;
	}
}