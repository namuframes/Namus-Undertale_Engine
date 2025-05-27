// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_simple_info(_text=array_create(0,"Desciption")){
	switch(timer) {
		case 0:
			create_box(_text)
		break;
		
		case 1:
			instance_destroy();
		break;
	}
}