// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_test_cutscene(){
	switch(timer) {
		case 0:
			create_box("test!")
		break;
		
		case 1:
			instance_destroy();
		break;
	}
}