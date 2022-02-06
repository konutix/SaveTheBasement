
function checkCardColl(){

	if(mouse_x > x-8 && mouse_x < x-8+sprite_get_width(spr_cardBackground) &&
		mouse_y > y-8 && mouse_y < y-8+sprite_get_height(spr_cardBackground)){
	
		return true;
	
	}
}