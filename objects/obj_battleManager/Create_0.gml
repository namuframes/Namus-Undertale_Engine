if (live_call()) {return live_result}
enum baTURNS {
	playerTurnInit,
	playerTurn,
	enemieTurnInit,
	enemieTurn
}

enum baPAGES {
	MAIN,
	FIGHT,
	ACT,
	ITEM,
	MERCY
}

global.curTurn = baTURNS.playerTurnInit;
textMain = 0;
input = 0;
textsize = 2;
mainButtons = ["fight","act","item","mercy"];
selectedOption = 0;
curOption_index = 0;
limitArray = mainButtons;
page = baPAGES.MAIN;
prevPage = baPAGES.MAIN
enemie = ["Grifo Aquatico", "Pano", "Nossa"];
choosenEnemie = 0;
choosenEnemieIndex = array_get_index(enemie, choosenEnemie)
battletime = 0;

function go_to_page(_page, _index=0)
{
	if (accept_key_p && global.interact_cooldown <= 0)
	{
		audio_play_sound(sfx_confirm, 0, 0);
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
			go_to_page(_page, curOption_index);
		}
		draw_special_text(myPos[0], myPos[1], undefined, undefined, fnt_main, "* "+enemie[i], textsize, textsize)	

	}
	choosenEnemieIndex = array_get_index(enemie, choosenEnemie)
}

function next_turn()
{
	global.curTurn = baTURNS.enemieTurnInit		
}

if (!instance_exists(obj_boxLimit)) {
	instance_create_layer(x,y, layer, obj_boxLimit)	
}

heartpos = array_create(3)