/// @description draw self and selection

//spawn description
if(collision_point(mouse_x, mouse_y, self, 0, false)){
			
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

draw_sprite(spr_cardBackground,0,x-8,y-8);

draw_self();

draw_text_color(x+10,y+sprite_height+12,(getCardCost(card)),c_blue,c_blue,c_blue,c_blue,1);
