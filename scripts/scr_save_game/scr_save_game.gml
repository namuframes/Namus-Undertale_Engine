function scr_save_game(){
	var savefile = "save.txt";
	if (file_exists(savefile)) file_delete(savefile);
	ini_open(savefile);
		ini_write_real("PLAYER","name",global.stat_name);
		ini_write_real("PLAYER","x",obj_mainchar.x);
		ini_write_real("PLAYER","y",obj_mainchar.y);
	ini_close();
}