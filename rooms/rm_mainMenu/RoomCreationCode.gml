if(instance_exists(ob_gameMaster)){
	with(ob_gameMaster){
		instance_destroy()
	}
}

audio_play_sound(SFX_ambient_01, 3, true);