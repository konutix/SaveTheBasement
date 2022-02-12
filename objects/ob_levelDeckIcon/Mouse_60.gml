/// @description cards down

if(showDeck){
	if(currentCardsYtop < marginYtop){

		currentCardsYbottom += scrollSpeed;
		currentCardsYtop += scrollSpeed;
		
		with(ob_deckShowCard){
			y += other.scrollSpeed;
		}

	}
}else{
	
	currentCardsYtop = cardsStartY;
	currentCardsYbottom = cardsStartY + sprite_get_height(spr_cardBackground);
	
}
