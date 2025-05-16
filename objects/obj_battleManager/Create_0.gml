if (live_call()) {return live_result}
enum baTURNS {
	playerTurnInit,
	playerTurn,
	enemieTurnInit,
	enemieTurn,
	cutscene
}

enum baPAGES {
	MAIN,
	FIGHT,
	ACT_choose,
	ACT_action,
	ITEM,
	MERCY
}

global.curTurn = baTURNS.playerTurnInit;
input = 0;
textsize = 2;
mainButtons = ["fight","act","item","mercy"];
selectedOption = 0;
savedMenuPos = [0];
curOption_index = 0;
limitArray = mainButtons;
page = baPAGES.MAIN;
prevPage = array_create(0)


enemie = [
	instance_create_layer(0,0, layer, parEnemie),
	instance_create_layer(0,0, layer, obj_dilo)
];


choosenEnemie = 0;
choosenEnemieIndex = array_get_index(enemie, choosenEnemie)
battletime = 0;

function go_to_page(_page, _index=0)
{
	if (accept_key_p && global.interact_cooldown <= 0)
	{
		audio_play_sound(sfx_confirm, 0, 0);
		array_push(prevPage, page); //Adding current page in prevPage Array
		array_push(savedMenuPos, selectedOption)
		page = _page;
		selectedOption = _index;
		global.interact_cooldown = 4;
	}
}

function get_enemie_list(_page=baPAGES.MAIN)
{
	var box = obj_battleBox
	input = (down_key_p-up_key_p);
	limitArray = enemie;
	for(var i=0; i < array_length(enemie); i++)
	{
		var myPos = [box.bbox_left+70, box.bbox_top+20+35*i]
		if (selectedOption == i) {
			setheart_pos(myPos[0]-30, myPos[1]+15);
			choosenEnemie = enemie[i]
			go_to_page(_page);
		}
		draw_special_text(myPos[0], myPos[1], undefined, undefined, fnt_main, "* "+enemie[i].name, textsize, textsize)	
	}
	choosenEnemieIndex = array_get_index(enemie, choosenEnemie)
}

function next_turn()
{
	global.curTurn = baTURNS.enemieTurnInit		
}

eneOffset = [0,0,0]

function enemie_set_offset(_x, _y, _scale) {
	eneOffset[0] = _x;
	eneOffset[1] = _y;
	eneOffset[2] = _scale;
}

if (!instance_exists(obj_boxLimit)) {
	instance_create_layer(x,y, layer, obj_boxLimit)	
}

heartpos = array_create(3)

//Texts variable
maintext = "* Main text 1"
textMainHandler = {
	wiriter:0,
	posx :0,
	posy :0
};

DoDialogueBox = true;