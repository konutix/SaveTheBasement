/// @description action

switch(state){

	case state.free:
	
		if(mouse_check_button_pressed(mb_left) 
			&& point_distance(ob_player.shotX, ob_player.shotY, mouse_x, mouse_y) < ob_player.range){
		
			chargeStartX = mouse_x;
			chargeStartY = mouse_y;
		
			state = state.charging;
			
		}
	
	break;
	
	case state.charging:
	
		if(!mouse_check_button(mb_left)){
		
			//shot
			placeSkill();
		
			activeCard.used = true;
			activeCard.selected = false;
			
			activeCard = noone;
		
			ob_gameMaster.state = state.levelPickingCard;
		
			state = state.locked;
		
		}
		
		if(mouse_check_button_pressed(mb_right)){
		
			state = state.free
		
		}
	
	break;

}
