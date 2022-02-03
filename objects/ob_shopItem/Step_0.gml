/// @description selection

if(mouse_check_button_pressed(mb_left) && !selected && collision_point(mouse_x, mouse_y, self, 0, false)){

	//select card
	selected = true;

}

if(mouse_check_button_pressed(mb_right) && selected && collision_point(mouse_x, mouse_y, self, 0, false)){

	//deselect card
	selected = false;

}