if (live_call()) {return live_result}
scr_inputs();

if (keyboard_check(ord("Q"))) {
	var direc = point_direction(obj_battleBox.x,obj_battleBox.y, mouse_x, mouse_y)
	obj_battleBox.image_angle = round(direc);
}



if (keyboard_check(ord("I"))) {obj_battleBox.y -= 3}
if (keyboard_check(ord("K"))) {obj_battleBox.y += 3}
if (keyboard_check(ord("J"))) {obj_battleBox.x -= 3}
if (keyboard_check(ord("L"))) {obj_battleBox.x += 3}

switch(global.curTurn)
{
	case baTURNS.playerTurnInit:
		selectedOption = curOption_index;
		page = baPAGES.MAIN;
		choosenEnemie = 0;
		textMain = 0;
		battletime = 0;
		instance_destroy(obj_soul);
		instance_destroy(par_bullet, false);
		global.curTurn = baTURNS.playerTurn;
	break;
	
	case baTURNS.playerTurn:
		selectedOption += input
		if (input !=0 && selectedOption >= 0 && selectedOption <= array_length(limitArray)-1)
		{
			audio_play_sound(sfx_select, 0, false)
		}
		selectedOption = clamp(selectedOption, 0, array_length(limitArray)-1)

		if (accept_key_p && page == baPAGES.MAIN)
		{
			curOption = mainButtons[selectedOption]
			audio_play_sound(sfx_confirm, 0, false)
			curOption_index = array_get_index(mainButtons, curOption)
			prevPage = page
			selectedOption = 0
			switch(curOption)
			{
				case "mercy": page = baPAGES.MERCY break;	
				case "act": page = baPAGES.ACT; selectedOption = choosenEnemieIndex break;	
				case "item": page = baPAGES.ITEM break;	
				case "fight": page = baPAGES.FIGHT; selectedOption = choosenEnemieIndex break;	
			}
			global.interact_cooldown = 4;
		}

		if (cancel_key_p && page != baPAGES.MAIN)
		{
			page = prevPage
			selectedOption = curOption_index
		}

		if (global.interact_cooldown > 0 && page != baPAGES.MAIN) {global.interact_cooldown--;}
	break;
	
	case baTURNS.enemieTurnInit:
		var box = obj_battleBox;
		instance_create_depth(box.x, box.y, box.depth-1, obj_soul)
		//instance_create_layer(0,0, layer, obj_bullet_pattern)
		global.curTurn = baTURNS.enemieTurn
	break;
	
	case baTURNS.enemieTurn:
		battletime++;
	break;
}