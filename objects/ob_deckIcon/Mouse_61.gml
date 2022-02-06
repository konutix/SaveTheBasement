/// @description Insert cards up

if(showDeck){
	if(currentCardsYbottom > room_height - marginYbottom){

		currentCardsYbottom -= scrollSpeed;
		currentCardsYtop -=scrollSpeed;

		with(ob_deckShowCard){
			y -= other.scrollSpeed;
		}

	}
}else{

	currentCardsYtop = cardsStartY;
	currentCardsYbottom = cardsStartY + sprite_get_height(spr_cardBackground);

}
