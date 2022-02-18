function puzzle_cards(){

	//prologue room puzzle
	if(room == rm_prologue){
	
		ds_list_clear(drawPile);
		ds_list_add(drawPile,
			card.baseBullet,
			card.baseBullet,
			card.baseBullet,
			card.baseBullet,
			card.baseBullet,
			card.baseBullet,
			card.baseBullet,
			card.baseBullet,
			card.splittingBullet,
			card.splittingBullet
		);
	
	}
	
	//other puzzle room

}