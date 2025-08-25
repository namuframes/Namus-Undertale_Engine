function cutscene_null(){
	switch(timer) {
		case 0:
			obj_cam.target = noone
			c_canMove(false)
			c_dialogue("* Wait there.")
			c_wait_dialogue()
			c_tween(obj_cam,"moveCam1","x",obj_mainchar.x+50,"out",2);
			c_wait_tween("moveCam1")
			c_sprite(obj_null,spr_null,0,1);
			c_dialogue([
				"* What,{w,10} how are you here?!{z}\nYou're not supposed to find this place.",
				"* Did you nocliped throw the floor?{z}\n* Or the world rejected your existence?",
			])
			c_tween(obj_null,"moveNull1","x",1920,"out",2)
			c_wait_box(1)
			c_shake(obj_null,"x",2,2)
			c_sprite(obj_null,spr_null,0,2);
			c_wait_dialogue();
			c_tween(obj_cam,"moveCam2","x",obj_mainchar.x,"linear",1)
			c_wait_tween("moveCam2")
			c_var(obj_cam,["target",obj_mainchar])
			c_canMove(true);
			timer++;
		break;
	}
}