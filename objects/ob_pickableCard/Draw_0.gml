/// @description draw self and selection
if(used){
	
	draw_set_alpha(0.4);
	image_alpha = 0.4;
	
}
else if(selected){
	
	draw_set_alpha(0.6);
	image_alpha = 0.6;
	
}
else if(placed && checkCardColl()){
			
	draw_sprite_ext(spr_cardBackground,0,x-14,y-14,1.1,1.1,0,c_yellow,1);

}

//spawn description
if(placed && !selected && !drag && checkCardColl()){
			
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

if(!selected and !used and (calcUsedCardsCost(cost) > ob_player.energy)) {
	draw_sprite_ext(spr_cardBackground,0,x-8,y-8, 1, 1, 0, c_red, 0.76);	
} else {
	draw_sprite(spr_cardBackground,0,x-8,y-8);
}

draw_self();

//draw card cost
if(!selected){
	if(cost - ob_gameMaster.costDown <= 1){
		draw_text_color(x+10,y+sprite_height+12,"1",c_blue,c_blue,c_blue,c_blue,1);
	}else{
		draw_text_color(x+10,y+sprite_height+12,(cost - ob_gameMaster.costDown),c_blue,c_blue,c_blue,c_blue,1);
	}
}

draw_set_alpha(1);
image_alpha = 1;
