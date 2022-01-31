/// @description select

if(mouse_check_button_pressed(mb_left) && collision_point(mouse_x, mouse_y, self, 0, false)){

	if(selected){
		addReward(reward);
	}

	room_goto(rm_map);

}
