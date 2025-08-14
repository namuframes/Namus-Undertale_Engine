scr_inputs();
options = ["Buy","Sell","Talk","Exit"]
page = "main"

items = [
	[get_item(ITEMS.stick), 10],
	[get_item(ITEMS.stick), 10],
	[get_item(ITEMS.stick), 10],
	[get_item(ITEMS.stick), 10],
	[get_item(ITEMS.stick), 10]
]

talk = [
	["Quem é tu carai?", scr_qmtu],
	["Quem é tu carai?", scr_qmtu],
	["Quem é tu carai?", scr_qmtu],
	["Quem é tu carai?", scr_qmtu]
]

cutscene_instance = 0;

curoption = 0;

is_buying = false;
buyingInfo = {
	options: ["Yes","No","Fuk you"],
	chosenItem: 0
}

typewriters = {
	buy: 0,
	buy_text: "",
	main: 0,
	main_text: ""
}

inputs = 0;
inputlimit = infinity;
prev_page = array_create(0);
prev_op = array_create(0);