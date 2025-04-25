// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function draw_collision(color=c_white){
	draw_rectangle_color(bbox_left, bbox_top, bbox_right-1, bbox_bottom-1, color, color, color, color, true)
}