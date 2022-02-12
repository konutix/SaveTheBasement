/// @description close window

if(showDeck && mouse_check_button_pressed(mb_left) && mouse_x > width){

	with(ob_deckShowCard){
		instance_destroy();
	}
	
	instance_activate_layer("cards")
	instance_activate_layer("gui")
	
	showDeck = false;

}
