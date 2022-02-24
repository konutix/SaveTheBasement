/// @description actions

if(placed){
	//initiate card pickup
	if(mouse_check_button_pressed(mb_left) && !used && checkCardColl()){
		
		drag = true;
		
	}
	
	//dragging the card
	if(drag){
		if(mouse_check_button(mb_left)){
	
			x = mouse_x - sprite_width/2;
			y = mouse_y - sprite_height;
	
		}else{
			
			drag = false;
		
			if(y - sprite_height > room_height - 350){
				
				x = targetX;
				y = targetY;
				
			}else{
			
				//deselect others
				with(ob_pickableCard){
					selected = false;
				}

				//select card
				selected = true;
				if(calcUsedCardsCost(cost) > ob_player.energy) {
					selected = false;
					audio_play_sound(SFX_MenuClick_02, 1, false);
				} else {
		
					ob_skillsManager.activeCard = self;
					ob_skillsManager.state = state.free;
					ob_gameMaster.state = state.levelUsing;
				}
			
			}
		
		}
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
	
	if(!drag && (!selected || used)){
	
		x = targetX;
		y = targetY;
	
	}
	
	//aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaPLACEHOLDERaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
	if(selected){
	
		x = targetX;
		y = targetY;
		
	}
	//aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaPLACEHOLDERaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
	
}else if(!placed){

	x += (targetX - x) * .1;
	y += (targetY - y) * .1;
	
	if(abs(targetX-x) < 5 && abs(targetY-y) < 5){
		placed = true;
		x = targetX;
		y = targetY;
	}

}