global.language = "english"
global.lang_file = working_directory+"lang_"+global.language+".json"

function update_language()
{
	global.lang_file = working_directory+"lang_"+global.language+".json"
	var _json = LoadString(global.lang_file);
	global.textMap = json_parse(_json);
}

update_language()

function check_langFileExist() {
	if (!file_exists(global.lang_file)) {
		return "{s}File:"+global.lang_file+" don't exist!"
		exit;
	}
}

function lang_gettext(_text)
{
	check_langFileExist()
	if (file_exists(global.lang_file)) {
		return string(struct_get(global.textMap,_text))
	} else {return _text+" doesn't exist&in the language file!"}
};

function lang_getseq(_text) { //Te amo tales, valeu <3 :)
	check_langFileExist()

	var i = 1;
	var array_texts = array_create(0);
	if (!struct_exists(global.textMap, _text+string(i))) {return ["* Not Found!"]; exit} //_text not found whatever
	
	while (true) {
		var finText = _text+string(i)
		if (!struct_exists(global.textMap, finText)) {break;}
		
		array_push(array_texts, struct_get(global.textMap,finText))
		i++;
	}
	
	return array_texts
}

function lang_addseq(_text) {
	check_langFileExist()
	var i = 1;
	
	while (true) {
		var finText = _text+string(i)
		if (!struct_exists(global.textMap, finText)) {break;}
		
		addtext(struct_get(global.textMap,finText))
		i++;
	}
}