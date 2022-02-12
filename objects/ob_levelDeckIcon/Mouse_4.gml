/// @description press action

if(collision_point(mouse_x, mouse_y, self, false, false) && !ob_levelDiscardedIcon.showDeck){

	if(!showDeck){

		var cardX = cardsStartX;
		var cardY = cardsStartY;
		
		var deckCopy = ds_list_create();
		
		ds_list_copy(deckCopy,ob_gameMaster.drawPile);
		
		ds_list_sort(deckCopy, true);

		for(var i = 0; i < ds_list_size(deckCopy); i++){
	
			var crd = instance_create_depth(cardX,cardY,50,ob_deckShowCard);
			crd.card = ds_list_find_value(deckCopy, i);
			crd.sprite_index = getCardSprite(crd.card);
			
			cardX += cardsSeparationX;
			
			if(cardX >= width - margin){
			
				cardX = cardsStartX;
				cardY += cardsSeparationY;
				currentCardsYbottom = cardY + sprite_get_height(spr_cardBackground);
				
			}
	
		}
		
		showDeck = true;
	
	}else{
	
		with(ob_deckShowCard){
			instance_destroy();
		}
	
		showDeck = false;
	
	}

}
