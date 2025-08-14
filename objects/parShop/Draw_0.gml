if (live_call()) {return live_result}
if (global.debug) {
	var debuginfo = [
		"Page:" + string(page),
		"prev Pages:" + string(prev_page),
		"chosen item: " + string(buyingInfo.chosenItem),
		items[buyingInfo.chosenItem][0].name,
		global.interact_cooldown,
		string(prev_op)
	]
	for (var i = 0; i < array_length(debuginfo); i++) {
		draw_special_text(0,0+20*i,,undefined, fnt_main,debuginfo[i])
	}
}


var box1_pos = [0,(room_height/2)+20];
var box2_pos = [box1_pos[0]+220, box1_pos[1]];
var heartinfo = {
	width: sprite_get_width(spr_heart_small),
	sprite: spr_heart_small
}
draw_box(box1_pos[0],box1_pos[1],room_width,box1_pos[1]-40, undefined, spr_overworld_box);

switch(page) {
	case "main":
		inputlimit = array_length(options)-1
		draw_box(box2_pos[0],box2_pos[1],box2_pos[0]-120,box2_pos[1]-40, undefined, spr_overworld_box);
		for (var i = 0; i < array_length(options); i++) {
			var mypos = {
				y: box2_pos[1]+10+18*i,
				x: box2_pos[0]+10+heartinfo.width
			}
			draw_special_text(mypos.x, mypos.y, undefined, undefined, fnt_main, options[i])
			
			if (curoption == i) {setheart_pos(mypos.x-heartinfo.width+5,mypos.y+5)}
		}
		draw_special_text(box1_pos[0]+15, box1_pos[1]+10, undefined, 15, fnt_main, typewriters.main_text, 1, 1, "main",0,, 160)
		
		typewriters.buy_text = "{wave}Então...{/wave}\nO que vai ser?"
	break;
	
	case "Buy":
		inputlimit = array_length(items)-1
		var infoBox = {
			y: box2_pos[1]-85
		}
		draw_box(box2_pos[0],infoBox.y,box2_pos[0]-120,infoBox.y+90, undefined, spr_overworld_box);
		draw_box(box2_pos[0],box2_pos[1],box2_pos[0]-120,box2_pos[1]-40, undefined, spr_overworld_box);
		var _gold = string(global.stat_gold)+"G"
		draw_special_text((box1_pos[0]+210)-string_width(_gold),box1_pos[1]+10, undefined, undefined, fnt_main, _gold)
		for (var i = 0; i < array_length(items); i++) {
			var mypos = {
				y: box1_pos[1]+10+18*i,
				x: box1_pos[0]+5+heartinfo.width
			}
			
			var item = items[i][0]
			var item_price = items[i][1]
			draw_special_text(mypos.x, mypos.y, undefined, undefined, fnt_main, string(item_price)+"G - "+item.name)
			var item_desc = wrap_formatted_text(items[buyingInfo.chosenItem][0].shopInfo,10);
			draw_special_text(box2_pos[0]+15, infoBox.y+10, undefined, 15, fnt_main, item_desc);
			
			if (buyingInfo.chosenItem == i && !is_buying) {
				setheart_pos(mypos.x-heartinfo.width+5,mypos.y+5);
			}
		}
		if (!is_buying) {
			draw_special_text(box2_pos[0]+15, box2_pos[1]+10, undefined, 15, fnt_main, typewriters.buy_text, 1, 1, "buy", 0,,35)
		}

		
		if (is_buying) {
			inputlimit = array_length(buyingInfo.options)-1
			var item_price = items[buyingInfo.chosenItem][1]
			draw_special_text(box2_pos[0]+15, box2_pos[1]+10, undefined, 15, fnt_main, "Buy it for "+string(item_price)+"G", 1, 1,,,, 60)
			for (var i = 0; i < array_length(buyingInfo.options); i++) {
				mypos = {
					y: box2_pos[1]+45+14*i,
					x: box2_pos[0]+5+heartinfo.width
				}
				draw_special_text(mypos.x, mypos.y, undefined, undefined, fnt_main, buyingInfo.options[i], 1, 1)
				
				if (curoption == i) {
					setheart_pos(mypos.x-heartinfo.width+5,mypos.y+5);
				}
			}
		}
	break;
	
	case "Talk":
		inputlimit = array_length(talk)-1;
		for (var i = 0; i < array_length(talk); i++) {
			mypos = {
				y: box1_pos[1]+10+18*i,
				x: box1_pos[0]+5+heartinfo.width
			}

			draw_special_text(mypos.x, mypos.y, undefined, undefined, fnt_main, talk[i][0], 1, 1)
			if (curoption == i) {
				setheart_pos(mypos.x-heartinfo.width+5,mypos.y+5);
			}
		}
	break;
	
	case "Sell":
		inputlimit = array_length(global.inventory)-1
		draw_box(box2_pos[0],box2_pos[1],box2_pos[0]-120,box2_pos[1]-40, undefined, spr_overworld_box);
	
		for (var i = 0; i < array_length(global.inventory); i++) {
			var mypos = {
				y: box1_pos[1]+10+18*i,
				x: box1_pos[0]+5+heartinfo.width
			}
			var item = global.inventory[i]
			draw_special_text(mypos.x, mypos.y, undefined, undefined, fnt_main, item.name)
			
			if (curoption == i) {setheart_pos(mypos.x-heartinfo.width+5,mypos.y+5)}
		}
	break;
}
	

if (page != "Talk-Cutscene") {draw_sprite(heartinfo.sprite, 0, heartpos[0], heartpos[1])};