// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function string_remove_letter(str,substr){
	if (string_count(substr,str) >= 1) {
		var _l = string_pos(substr,str)
		final_r = string_delete(str, _l, 1)	
		return final_r
	}
}