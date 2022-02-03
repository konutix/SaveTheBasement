/// @description on click

if(string_pos(ob_gameMaster.last_level, previous) != 0 && collision_point(mouse_x,mouse_y,self,0,false)){

	ob_gameMaster.last_level = name;
	
	audio_play_sound(SFX_MenuClick_01,1,false);
	room_goto(rm);

}
