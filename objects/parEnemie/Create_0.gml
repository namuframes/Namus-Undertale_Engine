name = "Test"
acts = array_create(0, "* Check");
acts[0] = "* Check";
acts[1] = "* Test";
can_spare = false;
spared = false;

quick_cutscene = function(_text) {
	with(cutsceneInstance) {
		switch(timer) {
			case 0:
				c_dialogue(_text);
				c_wait_dialogue();
				c_end();
				timer++
			break;
		}
	}
}