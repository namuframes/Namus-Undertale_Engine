if (live_call()) {return live_result}
for (var i = 0; i < array_length(mainButtons); i++)
{
	var _index = 0;
	var _spr = asset_get_index("spr_"+mainButtons[i]+"bt");
	var myPos = [33+(45+sprite_get_width(_spr))*i, 433]
	if (selectedOption == i && page == baPAGES.MAIN) {
		_index = 1;
		setheart_pos(myPos[0]+17, myPos[1]+20);
	}
	draw_sprite(_spr, _index, myPos[0], myPos[1])
}

var box = obj_battleBox
switch(global.curTurn)
{
	case baTURNS.playerTurn:
		switch(page) {
			case baPAGES.MAIN:
				input = (right_key_p-left_key_p)
				limitArray = mainButtons
				var texttodraw = "* I want your bootie cheeks\n-Diddy"
				if (textMain = 0) {textMain = new typewriter(fnt_main, font_get_size(fnt_main)+4, 5, 32, noone, texttodraw, 1)}
				textMain.step();
				textMain.draw(box.bbox_left+20, box.bbox_top+20);
			break;
			case baPAGES.MERCY:
				input = (down_key_p-up_key_p);
				var options = ["Spare", "Flee"];
				limitArray = options
				for (var i = 0; i < array_length(options); i++)
				{
					var myPos = [box.bbox_left+70, box.bbox_top+20+35*i]
					if (selectedOption == i) {
						setheart_pos(myPos[0]-30, myPos[1]+15);
					}
					draw_special_text(myPos[0], myPos[1], undefined, undefined, fnt_main, "* "+options[i], 2, 2);	
				}
				if (accept_key_p && global.interact_cooldown <= 0)
				{
					if (options[selectedOption]	 == "Spare") {next_turn()}
				}
			break;
	
			case baPAGES.ACT:
				get_enemie_list()
			break;
	
			case baPAGES.ITEM:
				input = (down_key_p-up_key_p);
				limitArray = global.inventory;
				for (var i = 0; i < array_length(global.inventory); i++)
				{
					var myPos = [box.bbox_left+70, box.bbox_top+20+35*i]
					if (i > 1)	{
						myPos[1] -= 35*2	
						myPos[0] += 230
					}
					if (selectedOption == i) {
						setheart_pos(myPos[0]-30, myPos[1]+15);
					}

			
					var itemName = global.inventory[i].name
					draw_special_text(myPos[0], myPos[1], undefined, undefined, fnt_main, "* "+itemName, 2, 2);
					if (global.debug) {
						draw_text(myPos[0]+string_width(itemName)*2+40, myPos[1], myPos[1])
					}
				}
			break;
	
			case baPAGES.FIGHT:
				get_enemie_list(baPAGES.ITEM)
			break;
	
			default:
				input = (right_key_p-left_key_p)
				limitArray = mainButtons
			break;
		}

		draw_sprite(spr_soul, 0, heartpos[0], heartpos[1]);
	break;
}

#region Hud main
	var health_x = 275;
	var health_y = 400;
	draw_set_color(c_red);
	draw_rectangle(health_x,health_y,(health_x+10)+global.stat_hpmax,health_y+20,false);
	draw_set_color(c_yellow);
	if (global.stat_hp > 0) {draw_rectangle(health_x,health_y,(health_x+10)+global.stat_hp,health_y+20,false)};
	draw_set_color(c_white);
	draw_set_font(fnt_mars);
	var hp_text = string(global.stat_hp);
	if (string_length(hp_text) == 1) {hp_text = "0"+hp_text}
	draw_text((health_x+global.stat_hpmax)+25, 400, hp_text+" / "+string(global.stat_hpmax));
	draw_text(30, 400, global.stat_name);
	draw_text(57+string_width(global.stat_name), 400, "LV "+string(global.stat_lv));
	draw_set_font(-1);
#endregion

if (global.debug)	{
	draw_text(10, 10, "Interaction Cooldown - "+string(global.interact_cooldown));
	draw_text(10, 25, "Choosen enemie - "+string(choosenEnemie));
	draw_text(10, 40, "Choosen enemie Index - "+string(choosenEnemieIndex));
	draw_text(10, 55, "Previous page - "+string(prevPage));
	draw_text(10, 70, "Current page - "+string(page));
	draw_text(10, 85, "Battle Time - "+string(battletime));
	draw_text(450, 10, "Selected Option - "+string(selectedOption));
}
draw_set_color(c_white)