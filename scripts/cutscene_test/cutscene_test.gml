function cutscene_test(){
	switch(timer) {
		case 0:
		obj_cam.target = undefined
		c_tween(obj_cam,"a","x",obj_eiden.x,"out",2);
		c_tween(obj_cam,"b","y",obj_eiden.y,"out",2);
		c_dialogue([
		"* Testando dialogo >:D.",
		"* Testando o dialogo 2",
		"* Isso aqui é meio longo mesmo...",
		"* PUTZ"
		])
		c_move(obj_mainchar,obj_mainchar.x+90,obj_mainchar.y,3)
		c_wait_box(1)
		c_var(obj_mainchar,["image_alpha",0.5])
		c_wait_dialogue();
		timer++;
		break;
	}
}