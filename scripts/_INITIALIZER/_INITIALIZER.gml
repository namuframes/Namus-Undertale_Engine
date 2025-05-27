enum TEXTconfig {
	color = #FFFFFF,
	color2 = #FFEC00
}


global.language = "english"
global.lang_file = "lang_"+global.language+".txt"
global.textsMap = ds_map_create();
update_language();