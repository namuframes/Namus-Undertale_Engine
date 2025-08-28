// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function on_player_interactor(_array=false){
	var result = 0
	if (instance_exists(obj_mainchar)) {
		with(obj_mainchar) {
			var center = {x: (x-sprite_xoffset)+sprite_width/2, y: (y-sprite_yoffset)+sprite_height/2}
			interactor_x1 = 0;
			interactor_y1 = 0;
			interactor_x2 = 0;
			interactor_y2 = 0;
			var set_box = function(__x1,__y1,__x2,__y2) {
				interactor_x1 = __x1
				interactor_y1 = __y1
				interactor_x2 = __x2
				interactor_y2 = __y2
			}
			var outline = true
			if (face == DOWN) {set_box(center.x-5,center.y,center.x+2, bbox_bottom+5)}
			if (face == RIGHT) {set_box(center.x,center.y+3,center.x+15, center.y+10)}
			if (face == LEFT) {set_box(center.x,center.y+3,center.x-15, center.y+10)}
			if (face == UP) {set_box(center.x-2,bbox_bottom,center.x+5, center.y-5)}
			draw_set_color(c_lime)
			draw_rectangle(interactor_x1,interactor_y1,interactor_x2,interactor_y2,true)
			draw_set_color(c_white)

			if _array {
				result = {
					x1:	interactor_x1,
					y1:	interactor_y1,
					x2:	interactor_x2,
					y2:	interactor_y2,
				}
			} else {
				result = collision_rectangle(interactor_x1,interactor_y1,interactor_x2, interactor_y2,other,false,false)
			}
		}
	}
	return result
}