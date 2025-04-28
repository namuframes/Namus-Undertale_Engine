function create_enemie(_name, _sprite, _hp, _hpMax, _acts=array_create(0, "Check")) constructor { //Creating a struct for the item
	name = _name;
	sprite = _sprite
	hp = _hp;
	hpMax = _hpMax;
	acts = _acts;
}

function get_enemie(enemieName) //Getting an especific item info
{
	switch(enemieName)
	{
		case "Dilo": return new create_enemie("Dilo", spr_dilo, 20, 20, ["Check", "Greet"]) break;
		case "Test": return new create_enemie("Test", spr_testEnemie, 90, 90, ["Check","Threat"]) break;
	}
}