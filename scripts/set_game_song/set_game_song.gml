function set_game_song(_music, _fadeouttime = 20, _fadeintime = 20)
{
	with(obj_musicManager)
	{
		targetSongAsset = _music;
		endFadeOutTime = _fadeouttime;
		startFadeInTime = _fadeintime;
		
		//show_message(audio_get_name(targetSongAsset))
	}
}