global.time += delta_time/1000000;
global.interact_cooldown = clamp(global.interact_cooldown, 0, 255)
if (global.debug)
{
	if mouse_check_button_pressed(mb_left)
	{
		if (instance_exists(obj_mainchar))
		{
			obj_mainchar.x = mouse_x;
			obj_mainchar.y = mouse_y;
		}	
	}
}
var _weapon = global.weapon;
var _armor = global.armor;
global.weapon_stat = _weapon.effect;
global.armor_stat = _armor.effect;

if (global.stat_hp == 0) {show_message("You died"); game_end();}