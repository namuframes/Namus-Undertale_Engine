// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function cant_playerMove(){
	return !global.canmove or global.intransition or 
	global.nomove_cutscene or 
	global.in_menu or 
	obj_manager.debug_change_room or 
	instance_exists(obj_savehandler) or global.inPause;
}