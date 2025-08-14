if (live_call()) {return live_result}
scr_inputs();

if (page != "Talk-Cutscene") {
	var prev_val = curoption;
	inputs = (down_key_p-up_key_p)
	curoption += inputs;
	if (curoption > inputlimit) {curoption=0} else if (curoption < 0) {curoption = inputlimit}
	if (curoption != prev_val) {audio_play_sound(sfx_select,1,false,2);}
	if (accept_key_p) {array_push(prev_op,curoption)}
	switch(page) {
		case "main":
			buyingInfo.chosenItem = 0;
			typewriters.main_text = "Compra alguma coisa se não te meto BALA."
			if (accept_key_p && global.interact_cooldown <= 0) {
				array_push(prev_page, page)
				page = options[curoption]	
				curoption = 0;
			}
		break;
	
		case "Buy":
			if (global.interact_cooldown <= 0) {
				if (!is_buying) {
					buyingInfo.chosenItem = curoption;
					if (accept_key_p) {
						is_buying = true; 
						curoption = 0;
					}
				} else if (accept_key_p) {
					var action = buyingInfo.options[curoption]
					if (action == "Yes") {
						var item = items[buyingInfo.chosenItem][0]
						array_pop(prev_op);
						is_buying = false;
						curoption = buyingInfo.chosenItem
						if (global.stat_gold >= items[buyingInfo.chosenItem][1]) {
							typewriters.buy_text = "Valeu por comprar irmão!"
							global.stat_gold -= items[buyingInfo.chosenItem][1];
							array_push(global.inventory, item);
						} else {
							typewriters.buy_text = "Tu tá pobre fudido."
						}
					}
					if (action == "No") {
						cancel_key_p = true;
						typewriters.buy_text = "...{w,10}\nQuer receber bala maluco?"
					}
					if (action == "Fuk you") {show_message(vaiTuSeFudeAiIrmao)}	
					array_pop(prev_op);
					
				}
			}
		break;
	
		case "Talk":
			if (accept_key_p) {
				array_pop(prev_op)
				if (cutscene_instance == 0) {
					cutscene_instance = instance_create_depth(0,0,depth,obj_cutscene)	
					cutscene_instance.cutscene = talk[curoption][1]
				}
				page = "Talk-Cutscene";
			}
		break;
	
		case "Exit":
			room_goto_trans(rm_room, obj_teleport_point_a)
			set_game_song(noone);
			exit;
		break;
	
	}

	if (cancel_key_p && array_length(prev_page) > 0) 
	{
		if (!is_buying) {
			page = array_last(prev_page)
			array_pop(prev_page); 
		} else {is_buying = false}
		curoption = array_last(prev_op)
		array_pop(prev_op);
	}

	if (global.interact_cooldown > 0) {global.interact_cooldown--}

	if (accept_key_p) {
		audio_play_sound(sfx_confirm, 1, 0)
		global.interact_cooldown = 2
	}

	if ((accept_key_p || cancel_key_p) && array_length(prev_page) > 0) {
		writerInfo[?"main"].letter = 0;
		if (ds_map_exists(writerInfo, "buy")) {writerInfo[?"buy"].letter = 0};
	}
} else {
	if (!instance_exists(cutscene_instance)) {
		page = "Talk"
		cutscene_instance = 0;
	}
}