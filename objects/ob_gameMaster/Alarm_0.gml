/// @description simulation stop

simulation = false;

state = state.levelDrawCards;

with(ob_projectile){

	if(!persistant){
	
		instance_destroy();
	
	}

}

if(ob_levelDeckIcon.showDeck){
	
	with(ob_deckShowCard){
		instance_destroy();
	}
	
	instance_activate_layer("cards")
	instance_activate_layer("gui")
	
	ob_levelDeckIcon.showDeck = false;
	
}

if(ob_levelDiscardedIcon.showDeck){
	
	with(ob_deckShowCard){
		instance_destroy();
	}
	
	instance_activate_layer("cards")
	instance_activate_layer("gui")
	
	ob_levelDiscardedIcon.showDeck = false;
	
}

turnCounter += 1;