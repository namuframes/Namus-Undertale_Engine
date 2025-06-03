global.language = "english"
global.lang_file = "lang_"+global.language+".txt"
global.textsMap = ds_map_create();



function update_language()
{
	global.lang_file = "lang_"+global.language+".txt"
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

function check_langFileExist() {
	if (!file_exists(global.lang_file)) {
		return "{s}File:"+global.lang_file+" don't exist!"
		exit;
	}
}

function lang_gettext(_text)
{
	check_langFileExist()
	if (ds_map_exists(global.textsMap, _text)) {
		return global.textsMap[? _text]
	} else {return _text+" doesn't exist&in the language file!"}
};

function lang_addseq(_text, _seq=0) {
	if (!file_exists(global.lang_file)) {
		addtext("{s}File:"+global.lang_file+" don't exist!",0)
		exit;
	}
	
	var especificKeys = array_create(0);
	var keys = ds_map_keys_to_array(global.textsMap)

	for (var i = array_length(keys)-1; i > -1; i--) { //Filtering the text case it wants to get an specific sequence
		if (string_copy(keys[i], 1, string_length(_text)) == _text) {
			array_push(especificKeys,keys[i])
		}
	}

	for (var i = 0; i < array_length(especificKeys); i++) {
		var _filteredText = especificKeys[i];
		addtext(lang_gettext(_filteredText), _seq);
	};
}

function lang_getseq(_text) {
	check_langFileExist()
	
	var especificKeys = array_create(0);
	var keys = ds_map_keys_to_array(global.textsMap)

	for (var i = array_length(keys)-1; i > -1; i--) { //Filtering the text case it wants to get an specific sequence
		if (string_copy(keys[i], 1, string_length(_text)) == _text) {
			array_push(especificKeys,keys[i])
		}
	}

	return especificKeys
}
	
update_language()