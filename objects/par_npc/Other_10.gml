if (variable_instance_exists(id, "msg"))	{

	page = clamp(page, 0, array_length(msg)-1);
	if (array_length(msg[page]) > 0) {
		if (!instance_exists(oDialogueBox)) {
			global.interact_cooldown--;
			if (accept_key_p && global.interact_cooldown <= 0)
			{
				box_instance = create_box(msg[page])
				if (variable_instance_exists(id, "question")) {
					box_instance.question = question;
				}
				global.interact_cooldown = 4;
				changepage = true
			}
		}
	}
	if (changepage && !instance_exists(box_instance)) {
		page++;
		changepage = false;
	}

}