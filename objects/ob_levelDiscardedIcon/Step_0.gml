/// @description close window

if(showDeck && mouse_check_button_pressed(mb_left) && mouse_x < room_width - width){

	with(ob_deckShowCard){
			instance_destroy();
		}
	
		showDeck = false;

}
