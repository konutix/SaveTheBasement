/// @description Actions

//setting attack
if(state = state.setAttack){

	timer --;

	state = state.locked;
}

if(ob_gameMaster.simulation){

	if(timer <= 0){
	
		ob_player.hp -= dmg;
		
		instance_destroy();
	
	}

}

//Death
if(hp <= 0){

	instance_destroy();

}
