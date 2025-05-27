if (live_call()) {return live_result}
scr_inputs()
intBox[0] = (bbox_left-2)+interactBox_x;
intBox[1] = (bbox_top-2)+interactBox_y;
intBox[2] = (bbox_right+2)+interactBox_x2;
intBox[3] = (bbox_bottom+2)+interactBox_y2;

sprite_index = sprite;
if (mask == asset_sprite)
{
	mask_index = mask;
}
var _intCol = collision_rectangle(intBox[0], intBox[1], intBox[2], intBox[3], obj_mainchar, false, false)
if (variable_instance_exists(id, "msg"))	{
	page = clamp(page, 0, array_length(msg)-1);
	if (array_length(msg[page]) > 0)	{
	
		if (instance_exists(obj_mainchar) && obj_mainchar.state == mode.free && (obj_mainchar.face == face or face == "any"))	{
			if (!instance_exists(oDialogueBox) && _intCol)	{
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
		
}



if (depthWay == "Always behind") {
	if (instance_exists(obj_mainchar))
	{
		exception = true;
		visible = true;
		depth = obj_mainchar.depth+1
	}
}