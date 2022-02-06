/// @description actions

if(placed){
	if(mouse_check_button_pressed(mb_left) && !used && checkCardColl()){

		//deselect others
		with(ob_pickableCard){
			selected = false;
		}

		//select card
		selected = true;
		ob_skillsManager.activeCard = self;
		ob_skillsManager.state = state.free;
		ob_gameMaster.state = state.levelUsing;

	}

	if(mouse_check_button_pressed(mb_right) && checkCardColl()
			&& selected && ob_skillsManager.state != state.charging){
	
		selected = false;
		ob_skillsManager.activeCard = noone;
		ob_skillsManager.state = state.locked;
		ob_gameMaster.state = state.levelPickingCard;
	
	}

	if(mouse_check_button_pressed(mb_right) && checkCardColl()
			&& used && ob_skillsManager.state != state.charging){
	
		//deselect others
		with(ob_pickableCard){
			selected = false;
		}

		//select card
		selected = true;
		ob_skillsManager.activeCard = self;
		ob_skillsManager.state = state.free;
		ob_gameMaster.state = state.levelUsing;
	
		used = false;
		instance_destroy(skill);
	
	}
}else if(!placed){

	x += (targetX - x) * .1;
	y += (targetY - y) * .1;
	
	if(abs(targetX-x) < 1 && abs(targetY-y) < 1){
		placed = true;
		x = targetX;
		y = targetY;
	}

}