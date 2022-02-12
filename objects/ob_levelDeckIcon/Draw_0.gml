/// @description draw


if(showDeck){

	draw_rectangle_color(0,0,width,room_height,c_dkgray,c_dkgray,c_dkgray,c_dkgray,false);

}


draw_self();

draw_text_color(50,room_height-50,ds_list_size(ob_gameMaster.drawPile),c_black,c_black,c_black,c_black,1);
