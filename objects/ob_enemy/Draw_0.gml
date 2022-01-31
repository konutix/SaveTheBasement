/// @description draw

draw_self();

if(variable_instance_exists(self, "hp")){

	draw_rectangle_color(x - sprite_width/2,
						y - sprite_height - 60,
						x - sprite_width/2 + hp / maxHp * sprite_width,
						y - sprite_height - 50,
						$051782,$051782,$051782,$051782,false);
						
	draw_text(x - sprite_width / 2 + 2, y - sprite_height - 70, hp);

}

if(vamp + persistantVamp > 0){
	
	draw_sprite_ext(spr_vampireThirst, 0,
		x - sprite_width / 2 - 6, y - sprite_height - 77, .5, .5, 0, c_white,1);
			
	draw_text(x - sprite_width / 2 - 10, y - sprite_height - 100, vamp + persistantVamp);
}

if(weak > 0){
	
	draw_sprite_ext(spr_weak, 0,
		x - sprite_width - 6, y - sprite_height - 77, .5, .5, 0, c_white,1);
			
	draw_text(x - sprite_width - 10, y - sprite_height - 100, weak);
}

if(vulnerable > 0){
	
	draw_sprite_ext(spr_vulnerable, 0,
		x - sprite_width/2 - 6, y - sprite_height - 77, .5, .5, 0, c_white,1);
			
	draw_text(x - sprite_width/2 - 10, y - sprite_height - 100, vulnerable);
}

if(barrier > 0){
	
	draw_sprite_ext(spr_barrier, 0,
		x, y - sprite_height - 77, .5, .5, 0, c_white,1);
			
}