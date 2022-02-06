/// @description press action

if(collision_point(mouse_x, mouse_y, self, false, false)){

	if(!showDeck){

		var cardX = cardsStartX;
		var cardY = cardsStartY;

		for(var i = 0; i < ds_list_size(ob_gameMaster.deck); i++){
	
			var crd = instance_create_layer(cardX,cardY,"cards",ob_deckShowCard);
			crd.card = ds_list_find_value(ob_gameMaster.deck, i);
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
