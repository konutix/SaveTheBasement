/// @description button action

if(collision_point(mouse_x, mouse_y, self, 0, false)){
	
	if(mouse_check_button_pressed(mb_left)){
	
		audio_play_sound(SFX_MenuClick_01,1,false);
	
		ob_levelBackToMenu.pressed = false;
	
		if(ob_levelBackToMenu.yesButton != noone){
	
			instance_destroy(ob_levelBackToMenu.yesButton);
			ob_levelBackToMenu.yesButton = noone;

		}

		if(ob_levelBackToMenu.noButton != noone){
	
			ob_levelBackToMenu.noButton = noone;
			instance_destroy();

		}
	
	}

}