if (live_call()) {return live_result}
draw_set_color(TEXTconfig.color)
_x = (camera_get_view_x(view_camera[0]));
_y = (camera_get_view_y(view_camera[0]));
_w = camera_get_view_width(view_camera[0]);
_h = camera_get_view_height(view_camera[0]);

if (global.in_menu)
{
	//ITEM = 0
	//STAT = 1
	var _xx = _x+16;
	var _y_bottom = _y+83.8;
	var _w_bottom = _w-249;
	var _h_bottom = _h-166;
	var _y_top = 0
	if (!global.ontop)	{_y_top = _y+25.8} else {_y_top = _y+160.8}
	#region Option Selector Menu
		draw_box(_xx,_y_top,_w_bottom,_h-185, undefined, spr_overworld_box);
		draw_box(_xx,_y_bottom,_w_bottom,_h_bottom, undefined, spr_overworld_box);
	
		draw_set_font(fnt_main);
		draw_text(_xx+7,_y_top+4,global.stat_name);
		for(var i=0; i < array_length(options); i++)
		{
			var tex_y = _y_bottom+(i*18)+10;
			if (array_length(global.inventory) <= 0 && options[i] == "ITEM")
			{
				draw_text_color(_xx+26,tex_y,options[i], c_gray, c_gray, c_gray, c_gray, 1);
			}
			else
			{
				draw_text(_xx+26,tex_y,options[i]);	
			}
						
			if (curoption == i and !option_selected){setheart_pos(_xx+12,tex_y+4)}
		}
		draw_set_font(fnt_crypt);
		draw_text(_xx+7,_y_top+25,"LV  "+string(global.stat_lv))
		draw_text(_xx+7,_y_top+34,"HP  "+string(global.stat_hp)+"/"+string(global.stat_hpmax))
		draw_text(_xx+7,_y_top+43,"G   "+string(global.stat_gold))
	#endregion
	
	if (option_selected)
	{
		switch(options[curoption])
		{
			case "STAT":
				var my_x =  _xx+78
				var my_y = _y+25.8
				draw_box(my_x,my_y,_w-147.2,_h-31, undefined, spr_overworld_box);
				draw_set_font(fnt_main);
				draw_text(my_x+14,my_y+16,"\""+string(global.stat_name)+"\"");
				draw_text(my_x+14,my_y+46,"LV  "+string(global.stat_lv));
				draw_text(my_x+14,my_y+62,"HP  "+string(global.stat_hp)+" / "+string(global.stat_hpmax));
				
				draw_text(my_x+14,my_y+94,"AT  "+string(global.stat_atk));
				draw_text(my_x+14,my_y+110,"DF  "+string(global.stat_def));
				draw_text(my_x+98,my_y+94,"EXP  "+string(global.stat_exp));
				
				var armor = global.armor;
				var weapon = global.weapon;
				
				if (global.weapon.name != "") draw_text(my_x+14,my_y+140,"WEAPON: "+weapon.name+" ("+string(global.weapon_stat)+")");
				if (global.armor.name != "") draw_text(my_x+14,my_y+156,"ARMOR: "+armor.name+ " ("+string(global.armor_stat)+")");
				
				draw_text(my_x+14,my_y+176,"GOLD: "+string(global.stat_gold));
				setheart_pos(_x,_y, 0)
			break;
			case "ITEM": 
				if (!instance_exists(obj_invenHandler)) {instance_create_depth(0, 0, depth+1, obj_invenHandler)}
				setheart_pos(_x,_y, 0)
			break;
		}
	}
	draw_sprite_ext(spr_heart_small,0,heartpos[0],heartpos[1], 1, 1, 0, c_white, heartpos[2]);
}
else
{
	setheart_pos(_x+16,_y+83)	
}

var checker_x = (camera_get_view_x(view_camera[0]) + 16)
var checker_y = (camera_get_view_y(view_camera[0]) + 160)
var checker_w = camera_get_view_width(view_camera[0])
var checker_h = camera_get_view_height(view_camera[0])
if (global.debug)
{
	draw_set_color(c_lime);
	draw_rectangle(checker_x,checker_y,checker_x+checker_w-32,checker_y+checker_h-165,true)
	draw_set_color(c_white);
};

draw_set_font(-1);
draw_set_color(c_white);