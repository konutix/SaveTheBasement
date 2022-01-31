/// @description draw self and selection
if(used){
	
	draw_rectangle_color(
			x-10,y-10,x+sprite_width+10,y+sprite_height+10,c_white,c_white,c_white,c_white,false);
	
}
else if(selected){
	
	draw_rectangle_color(
			x-10,y-10,x+sprite_width+10,y+sprite_height+10,c_green,c_green,c_green,c_green,false);
	
}
else if(placed && collision_point(mouse_x, mouse_y, self, 0, false)){

	draw_rectangle_color(
			x-10,y-10,x+sprite_width+10,y+sprite_height+10,c_yellow,c_yellow,c_yellow,c_yellow,false);

}

//spawn description
if(placed && collision_point(mouse_x, mouse_y, self, 0, false)){
			
	if(description == noone){
		description = instance_create_layer(
			x-sprite_get_width(spr_card_description)/2+sprite_width/2,
			y-sprite_get_height(spr_card_description)-sprite_height/2,
			"cardsDesc",ob_card_decription);
			
		description.description = getCardDescription(card);
	}

}else{
	if(description != noone){
		instance_destroy(description);
		description = noone;
	}
}

draw_self();

if(cost - ob_gameMaster.costDown <= 1){
	draw_text_color(x+10,y+sprite_height-27,"1",c_blue,c_blue,c_blue,c_blue,1);
}else{
	draw_text_color(x+10,y+sprite_height-27,(cost - ob_gameMaster.costDown),c_blue,c_blue,c_blue,c_blue,1);
}
