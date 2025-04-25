selectedItem = 0;
heartpos = [0, 0, 1]
actions = ["USE","INFO","DROP"]
page = ["item", "action"]
curpage = 0;
choosen_item = "<NONE>";

oneShot_text = function(__text)
{
	var _text = __text
	if (!is_array(__text)) {_text[0] = __text}
	create_box(_text)
	global.in_menu = 0;
}

