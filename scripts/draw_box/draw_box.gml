// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function draw_box(_x, _y, _x2, _y2, _outline=0, _sprite=spr_ui_box, alpha=1,_index=0){
	draw_sprite_stretched_ext(_sprite,_index,_x-_outline,_y-_outline,_x2+_outline*2,_y2+_outline*2, c_black, alpha);
	draw_sprite_stretched_ext(_sprite,_index,_x,_y,_x2,_y2, c_white, alpha);
}