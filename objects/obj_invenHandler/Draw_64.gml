if (live_call()) {return live_result}
scr_inputs();
var _x = 190;
var _y = 51;
var char_width = font_get_size(fnt_main)+2.5;
var input = 0;
var inputLimit_array = 0
switch (page[curpage]) {	//Upodating the input!
	case "action":
		input = (right_key_p-left_key_p)//Changing the keys to left and right
		inputLimit_array = actions //re-seting the limits of selected item
	break;
	
	case "item":
		input = (down_key_p-up_key_p); //Changing the keys to down and up
		inputLimit_array = global.inventory //re-seting the limits of selected 
	break;
}
selectedItem += input;
selectedItem = clamp(selectedItem, 0, array_length(inputLimit_array)-1)
draw_box(_x, _y, _x+150, _y+300)

for (var i=0; i < array_length(global.inventory); i++) //Drawing the items
{
	var my_x = _x+40
	var my_y = _y+20+(30*i)

	draw_special_text(my_x, my_y, char_width, 0, fnt_main, global.inventory[i].name, 2, 2)
	if (selectedItem == i && page[curpage]="item") {setheart_pos(my_x-26, my_y+8)}
}

for (var i=0; i < array_length(actions); i++) { //Drawing the action choices
	var my_x = _x+(105*i)+40;
	if (actions[i] == "INFO") {my_x-=6} //Fixing the info text position
	var my_y = _y+305
	draw_special_text(my_x, my_y, char_width, 0, fnt_main, actions[i], 2, 2)
	if (selectedItem == i && page[curpage]="action") {setheart_pos(my_x-26, my_y+8)}
}

var item_index = array_get_index(global.inventory, choosen_item) //Getting the choosen item value inside of the array
if (accept_key_p && global.interact_cooldown <= 0) //Pressed the accpet key
{
	switch(page[curpage]) { 
		case "item": //Changing to the action menu!
			choosen_item = global.inventory[selectedItem]
			curpage = 1; selectedItem =0; 
		break;
		
		case "action": //In the actions menu
			switch(actions[selectedItem]) { //What player choose to do with the item
				case "USE":
					if (item_type(choosen_item) != ITEMTYPES.food) //Checking if the selected item is a armor or an weapon
					{
						if (item_type(choosen_item) == ITEMTYPES.weapon) //Checking the current item is an weapon
						{
							if (is_struct(global.weapon)) {
								global.inventory[item_index] = global.weapon; //Replacing the item slot with the weapon
							} else {array_delete(global.inventory, item_index, 1)}
							global.weapon = choosen_item; //Wearing the selected item as an weapon
						}
						
						if (item_type(choosen_item) == ITEMTYPES.armor) //Checking the current item is an armor
						{
							if (is_struct(global.armor)) {
								global.inventory[item_index] = global.armor; //Replacing the item slot with the armor
							} else {array_delete(global.inventory, item_index, 1)}
							global.armor = choosen_item; //Wearing the selected item as an armor
						}
						oneShot_text("* You equipped the "+choosen_item.name+".")
					}
					else {
						audio_play_sound(snd_heal_c, 1, false)
						global.stat_hp += choosen_item.effect
						//Adding the maced out text if the HP is higher or equal to the MAX HP
						var maxedout_text = (global.stat_hp >= global.stat_hpmax) ? "&* Your HP was maxed out." : "";
						oneShot_text("* You eat the "+choosen_item.name+"."+maxedout_text)
						global.stat_hp = clamp(global.stat_hp, 0, global.stat_hpmax)
						//Removing the item from the inventory if debug mode isn't on
						if (!global.debug) array_delete(global.inventory, item_index, 1)
					}
				break;
				
				case "INFO": //Getting the item info text
					oneShot_text(choosen_item.infoText)
				break;
				
				case "DROP":
					oneShot_text("* The "+choosen_item.name+" was thrown away.")
					array_delete(global.inventory, item_index, 1)
				break;
			}

		break;
	}
}

if (cancel_key_p && global.interact_cooldown <= 0) //Pressed the cancel key
{
	switch(page[curpage]) {
		case "action": curpage = 0; selectedItem = item_index; choosen_item = "<NONE>" break; //Changing to the item menu!
	}
}
draw_sprite_ext(spr_heart_small,0,heartpos[0],heartpos[1], 2, 2, 0, c_white, heartpos[2]);