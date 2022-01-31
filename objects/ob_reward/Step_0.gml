/// @description selection

if(mouse_check_button_pressed(mb_left) && !selected && collision_point(mouse_x, mouse_y, self, 0, false)){

	//deselect others
	with(ob_reward){
		selected = false;
	}

	//select card
	selected = true;
	ob_rewardButton.reward = reward;
	ob_rewardButton.selected = true;
	ob_rewardButton.image_index = 1;

}

if(mouse_check_button_pressed(mb_right) && selected && collision_point(mouse_x, mouse_y, self, 0, false)){

	//select card
	selected = false;
	ob_rewardButton.reward = reward.null;
	ob_rewardButton.selected = false;
	ob_rewardButton.image_index = 0;

}