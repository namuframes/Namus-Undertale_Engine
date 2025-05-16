function create_enemie(_name, _sprite, _hp, _hpMax, _acts=array_create(0, "Check"),  _actResult=(array_create(0, "Action result"))) constructor { //Creating a struct for the item
	name = _name;
	sprite = _sprite
	hp = _hp;
	hpMax = _hpMax;
	acts = _acts;
	actionResult = _actResult;
}

function get_enemie(enemieName) //Getting an especific item info
{
	switch(enemieName)
	{
		case "Dilo": return new create_enemie("Dilo", spr_dilo, 20, 20, 
			[
				["Check", ["* You shake your bootie :P"]],
				["Pet", ["* You pet Dilo :3"]]
			]
		) 
		break;
		case "Test": return new create_enemie("Test", spr_testEnemie, 90, 90, 
			[
				["Check", ["* Test enemie | It's just a test enemie"]],
				["Threat", ["* You make him MAD."]]
			]
		) 
	}
}