/// @description setup fight

if(roomType == roomType.level || roomType == roomType.map){
	
	instance_create_layer(0,-32,"cardsDesc",ob_topBar)
	
}

if(roomType == roomType.level){
	
	//copying deck to draw pile and shuffling
	drawPile = ds_list_create();
	ds_list_copy(drawPile, deck);
	ds_list_shuffle(drawPile);

	//change deck for puzzle
	puzzle_cards();

	//creating lists for hand, discarded and destroyed cards
	hand = ds_list_create();

	discarded = ds_list_create();

	destroyed = ds_list_create();

	state = state.levelLoad;
	
	turnCounter = 0;
	
	instance_create_depth(0, room_height, 110, ob_levelDeckIcon);
	instance_create_depth(room_width, room_height, 110, ob_levelDiscardedIcon);
	
	instance_create_depth(room_width - 120, 40, -5, ob_levelBackToMenu);
	
}
