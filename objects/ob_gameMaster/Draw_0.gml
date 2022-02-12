/// @description draw gui

if(roomType == roomType.level){

	draw_rectangle_color(
			0, room_height - 200, room_width, room_height, c_gray,c_gray,c_gray,c_gray,false);
		
	//energy
	draw_sprite_ext(spr_deck, 0, 100, room_height- 100, .3, .3, 0, c_blue, 1);
	draw_text_color(135,room_height-150,string(ob_player.energy - usedEnergy) + "/" + string(ob_player.energy),c_white,c_white,c_white,c_white,1);
	
}

if(alarm[0] > 0){

	draw_rectangle_color(
			0, room_height-10, room_width * alarm[0]/turnDuration, room_height, c_white,c_white,c_white,c_white,false);

}