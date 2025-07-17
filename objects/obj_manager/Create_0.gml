global.fun_value = irandom_range(0, 100);
global.debug = false;
debug_change_room = false;
debug_selected_room = 0;

//Player Info
global.stat_name = "Chara";
global.stat_hp = 15;
global.stat_hpmax = 20;
global.stat_lv = 1;
global.stat_gold = 15;
global.stat_exp = 0;
global.stat_atk = 0;
global.stat_def = 0;

global.interact_cooldown = 4;

/////////////////////
//NPC QAUNT
global.follower_quant = 1;

//Misc------------------
global.inventory = array_create(0)
add_item(ITEMS.stick)
add_item(ITEMS.bandage);
add_item(ITEMS.toyKnife);
global.weapon = 0;
global.armor = 0;

global.armor_stat = 0;
global.weapon_stat = 0;

global.time = 0;

//MODES
enum mode
{
	free,
	freeze
}

enum LAYERS
{
	ui = -9999
}

layer = layer_create(LAYERS.ui);

function get_room_count() {
    var count = 0;
    var current_room = room_first;

    while (current_room != -1) {
        count++;
        current_room = room_next(current_room);
    }

    return count;
}
