/// @description button action

y = ob_topBar.y + 48 + ob_topBar.y * 2;

if(!pressed && collision_point(mouse_x, mouse_y, self, 0, false)){

	image_index = 1;
	
	if(mouse_check_button_pressed(mb_left)){
	
		audio_play_sound(SFX_MenuClick_01,1,false);
		
		yesButton = instance_create_layer(x-50,y+60,"gui",ob_exitYes);
		noButton = instance_create_layer(x+50,y+60,"gui",ob_exitNo);
		
		alarm[0] = 360;
		pressed = true;
	
	}

}else if(!pressed){

	image_index = 0;
	
}else{

	image_index = 2;

}