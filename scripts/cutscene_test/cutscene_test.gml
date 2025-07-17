function cutscene_test(){
	if (timer == 0) {
		c_select(obj_mainchar);
		c_delay_cmd("move",30,90, 90, 2)
		c_dialogue("Testing :D")
		c_wait_dialogue()
		c_end()
		timer = 1;
	}
}