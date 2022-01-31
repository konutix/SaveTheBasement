/// @description draw

draw_self();

draw_set_circle_precision(64);
draw_circle_color(x, y - sprite_height/2, range, c_blue, c_blue, true);

if(hp >= 0)
draw_rectangle_color(x - sprite_width/2,
					y - sprite_height - 60,
					x - sprite_width/2 + hp / maxHp * sprite_width,
					y - sprite_height - 50,
					c_green,c_green,c_green,c_green,false);
						
draw_text(x - sprite_width / 2 + 2, y - sprite_height - 70, hp);

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
