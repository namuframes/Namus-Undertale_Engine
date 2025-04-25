enum TEXTconfig {
	color = #FFFFFF
}


global.language = "english"
global.lang_file = "lang_"+global.language+".txt"
global.textsMap = ds_map_create();
function update_language()
{
	if (file_exists(global.lang_file))
	{
		langfile = file_text_open_read(working_directory + global.lang_file)
		var _string = file_text_read_string(langfile)
		while (_string != "")
		{
			var varName = string_copy(_string, 0, string_length(_string)-1)
			file_text_readln(langfile)
			var varValue = file_text_read_string(langfile)
			global.textsMap[? varName] = varValue
			file_text_readln(langfile)
			_string = file_text_read_string(langfile)
		}
		file_text_close(langfile);
	}
}
update_language();

function scr_text(_text)
{
	update_language();
	if (!file_exists(global.lang_file)) {
		return "{s}File:"+global.lang_file+" don't exist!"
		exit;
	}

	return global.textsMap[? _text];
}