// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function setheart_pos(_x, _y, alpha=1, _smooth=0.3, _round=false){
	if (!variable_instance_exists(id, "heartpos")) {heartpos = array_create(3)}
	heartpos[0] = lerp(heartpos[0],_x,_smooth);
	heartpos[1] = lerp(heartpos[1],_y,_smooth);
	heartpos[2] = lerp(heartpos[2],alpha,_smooth);
	if (point_distance(heartpos[0], heartpos[1], _x, _y) > 50) {
		heartpos[0] = _x
		heartpos[1] = _y
	}
	if (_round)
	{
		heartpos[0] = round(heartpos[0]);
		heartpos[1] = round(heartpos[1]);
		heartpos[2] = round(alpha);
	}
}