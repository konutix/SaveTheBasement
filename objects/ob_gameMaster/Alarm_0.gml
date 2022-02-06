/// @description simulation stop

simulation = false;

state = state.levelDrawCards;

with(ob_projectile){

	if(!persistant){
	
		instance_destroy();
	
	}

}

turnCounter += 1;