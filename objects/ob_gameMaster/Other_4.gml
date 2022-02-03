/// @description setup fight

if(roomType = roomType.level){
	
	//copying deck to draw pile and shuffling
	drawPile = ds_list_create();
	ds_list_copy(drawPile, deck);
	ds_list_shuffle(drawPile);

	//creating lists for hand, discarded and destroyed cards
	hand = ds_list_create();

	discarded = ds_list_create();

	destroyed = ds_list_create();

	state = state.levelLoad;
	
	instance_create_layer(room_width - 120, 50, "gui", ob_levelBackToMenu);
	
}
