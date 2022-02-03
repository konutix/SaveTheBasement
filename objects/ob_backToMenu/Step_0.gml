/// @description button action

if(collision_point(mouse_x, mouse_y, self, 0, false)){

	image_index = 1;
	
	if(mouse_check_button_pressed(mb_left)){
	
		audio_play_sound(SFX_MenuClick_01,1,false);
		room_goto(rm_mainMenu);
	
	}

}else{

	image_index = 0;
	
}