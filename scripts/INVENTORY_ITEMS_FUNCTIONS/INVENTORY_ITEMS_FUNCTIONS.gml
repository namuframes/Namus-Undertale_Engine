enum ITEMTYPES {
	armor = 1, 
	food = 2, 
	weapon = 3,
	special = 4
}

enum ITEMS{
	stick,
	bandage,
	toyKnife,
}

function create_item(_name, _type, _effectInt, _infoText) constructor { //Creating a struct for the item
	name = _name;
	type = _type;
	effect = _effectInt;
	infoText = _infoText;
}

function get_item(item) //Getting an especific item info
{
	switch(item)
	{
		// case ITEMS.: return new create_item("", ITEMTYPES., 0, "* ") break;
		case ITEMS.stick: return new create_item("Stick", ITEMTYPES.weapon, 0, "* \"Stick\" - Weapon AT 0&* Its bark is worse than&its bite.") break;
		case ITEMS.bandage: return new create_item("Bandage", ITEMTYPES.food, 10, "* \"Bandage\" - Heals 10 HP&* It has already been used&several times.") break;
		case ITEMS.toyKnife: return new create_item("Toy Knife", ITEMTYPES.weapon, 3, "* \"Toy Knife\" - Weapon AT 3&* Made of plastic.&* A rarity nowadays.") break;
		case "burgur": return new create_item("BUrguer", ITEMTYPES.food, 10, "* Some fat ass burguer bro, idk")
		default: return new create_item("<NONE>", ITEMTYPES.special, 0, "* Info text") break;
	}
}

function add_item(item, _array=global.inventory) { //Adding the item to an array
	array_push(_array, get_item(item));
}

function item_type(item) //Getting the item type
{
	return item.type;
}