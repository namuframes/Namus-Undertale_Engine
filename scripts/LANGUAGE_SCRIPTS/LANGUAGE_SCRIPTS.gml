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


function language_gettext(_text)
{
	update_language();

	if (!file_exists(global.lang_file)) {
		return "{s}File:"+global.lang_file+" don't exist!"
		exit;
	}
};

function language_addseq(_text, _seq=0) {
	var especificKeys = array_create(0);
	var keys = ds_map_keys_to_array(global.textsMap)

	for (var i = array_length(keys)-1; i > -1; i--) { //Filtering the text case it wants to get an specific sequence
		if (string_copy(keys[i], 1, string_length(_text)) == _text) {
			array_push(especificKeys,keys[i])
		}
	}

	for (var i = 0; i < array_length(especificKeys); i++) {
		var _filteredText = especificKeys[i];
		addtext(global.textsMap[? _filteredText], _seq);
	};
}

function language_getseq(_text) {
	var especificKeys = array_create(0);
	var keys = ds_map_keys_to_array(global.textsMap)

	for (var i = array_length(keys)-1; i > -1; i--) { //Filtering the text case it wants to get an specific sequence
		if (string_copy(keys[i], 1, string_length(_text)) == _text) {
			array_push(especificKeys,keys[i])
		}
	}

	return especificKeys
}