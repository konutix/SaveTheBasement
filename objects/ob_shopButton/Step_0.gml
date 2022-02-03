/// @description select

if(mouse_check_button_pressed(mb_left) && collision_point(mouse_x, mouse_y, self, 0, false)){

	cost = 0;
	
	with(ob_shopItem){
		if(selected){
			other.cost += cost;
		}
	}

	if(cost <= ob_gameMaster.gold){
		with(ob_shopItem){
			addReward(reward);
		}
		ob_gameMaster.gold -= cost;
		
		room_goto(rm_map);
	}

}
