/// @description draw self and selection

if(selected){
	
	draw_rectangle_color(
			x-10,y-10,x+sprite_width+10,y+sprite_height+10,c_green,c_green,c_green,c_green,false);
	
}
else if(collision_point(mouse_x, mouse_y, self, 0, false)){

	if(type == itemType.card){
		draw_sprite_ext(spr_cardBackground,0,x-14,y-14,1.1,1.1,0,c_yellow,1);
	}else{

		draw_rectangle_color(
				x-10,y-10,x+sprite_width+10,y+sprite_height+10,c_yellow,c_yellow,c_yellow,c_yellow,false);
	}

}

if(type == itemType.card){

	draw_sprite(spr_cardBackground,0,x-8,y-8);
	draw_text_color(x+10,y+sprite_height+12,(getRewardCardCost(reward)),c_blue,c_blue,c_blue,c_blue,1);

}

draw_self();

if(collision_point(mouse_x, mouse_y, self, 0, false)){
			
	if(description == noone){
		description = instance_create_layer(
			x-sprite_get_width(spr_card_description)/2+sprite_width/2,
			y-sprite_get_height(spr_card_description)-sprite_height/2,
			"cardsDesc",ob_card_decription);
			
		description.description = getRewardDescription(reward);
	}

}else{
	if(description != noone){
		instance_destroy(description);
		description = noone;
	}
}
