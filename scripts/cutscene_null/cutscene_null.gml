function cutscene_null(){
	switch(timer) {
		case 0:
			c_dialogue("* Wait there.")
			c_wait_dialogue()
			c_instance_create(obj_mainchar.x,obj_mainchar.y,0,obj_cut_cam)
			c_var(obj_cam,["target",obj_cut_cam])
			c_tween(obj_cut_cam,"moveCam1","x",obj_mainchar.x+50,"out",1)
			c_wait(30)
			c_select(obj_null)
			c_sprite(spr_null,0,1);
			c_dialogue([
				"* What,{w,10} how are you here?!{z}\nYou're not supposed to find this place.",
				"* Did you nocliped throw the floor?{z}\n* Or the world rejected your existence?",
			])
			c_tween(obj_null,"moveNull1","x",1920,"out",2)
			c_waitbox(1)
			c_shake(obj_null,"x",2,2)
			c_sprite(spr_null,0,2);
			c_wait_dialogue();
			c_tween(obj_cut_cam,"moveCam2","x",obj_mainchar.x,"linear",0.5)
			c_not_exist(obj_animator)
			c_var(obj_cam,["target",obj_mainchar])
			c_end();
			timer++;
		break;
	}
}