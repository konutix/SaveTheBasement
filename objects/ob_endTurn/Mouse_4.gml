/// @description end turn

if(collision_point(mouse_x, mouse_y, self, 0, false) && ob_gameMaster.usedEnergy <= ob_player.energy){

	ob_gameMaster.simulation = true;
	ob_gameMaster.state = state.levelSimulating;
	
	with(ob_pickableCard){
	
		ds_list_add(ob_gameMaster.discarded, card);
		
		selected = false;
		ob_skillsManager.activeCard = noone;
		ob_skillsManager.state = state.locked;
		
		instance_destroy();
	
	}
	
	ds_list_clear(ob_gameMaster.hand);
	
	ob_gameMaster.alarm[0] = ob_gameMaster.turnDuration;
	
	instance_destroy();

}
