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
	
	case baTURNS.cutscene:
		
	break;
	
	
	case baTURNS.playerTurnInit:
		depth = obj_battleBox.depth-1
		selectedOption = savedMenuPos[array_length(savedMenuPos)-1];
		page = baPAGES.MAIN;
		array_delete(prevPage, 0, array_length(prevPage))
		choosenEnemie = 0;
		textMain = 0;
		battletime = 0;
		instance_destroy(obj_soul);
		instance_destroy(par_bullet, false);
		global.curTurn = baTURNS.playerTurn;
	break;
	
	case baTURNS.playerTurn:
		with(obj_battleBox) {
			image_xscale = lerp(image_xscale,DefaultSize[0], 0.2);
			image_yscale = lerp(image_yscale,DefaultSize[1], 0.2);
		}
		selectedOption += input
		if (input !=0 && selectedOption >= 0 && selectedOption <= array_length(limitArray)-1) {audio_play_sound(sfx_select, 0, false)}
		selectedOption = clamp(selectedOption, 0, array_length(limitArray)-1)

		if (accept_key_p && page == baPAGES.MAIN)
		{
			curOption = mainButtons[selectedOption]
			audio_play_sound(sfx_confirm, 0, false)
			savedMenuPos[0] = selectedOption
			array_push(prevPage, page); //Adding current page in prevPage Array
			selectedOption = 0
			switch(curOption) {
				case "mercy": page = baPAGES.MERCY break;	
				case "act": page = baPAGES.ACT_choose; selectedOption = choosenEnemieIndex break;	
				case "item": page = baPAGES.ITEM break;	
				case "fight": page = baPAGES.FIGHT; selectedOption = choosenEnemieIndex break;	
			}
			global.interact_cooldown = 4;
		}

		if (cancel_key_p && page != baPAGES.MAIN)
		{
			page = prevPage[array_length(prevPage)-1] //Changing the page to the most recent one in the prevPage array
			selectedOption = savedMenuPos[array_length(savedMenuPos)-1];
			array_delete(prevPage, array_length(prevPage)-1, 1)
			array_delete(savedMenuPos, array_length(savedMenuPos)-1, 1)
		}

		if (global.interact_cooldown > 0 && page != baPAGES.MAIN) {global.interact_cooldown--;}
	break;
	
	case baTURNS.enemieTurnInit:
		var box = obj_battleBox;
		depth = box.depth+1
		instance_create_depth(box.x, box.y, box.depth-1, obj_soul)
		instance_create_depth(0,0, box.depth-1, obj_bullet_pattern)
		global.curTurn = baTURNS.enemieTurn
	break;
	
	case baTURNS.enemieTurn:
		battletime++;
	break;
}


