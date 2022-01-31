/// @description draw bomb

draw_self();

if(variable_instance_exists(self, "hp")){

	draw_rectangle_color(x - sprite_width/2,
						y - sprite_height - 50,
						x - sprite_width/2 + hp / maxHp * sprite_width,
						y - sprite_height - 40,
						c_red,c_red,c_red,c_red,false);
						
	draw_text(x - sprite_width / 2 + 2, y - sprite_height - 60, hp);
	
	draw_text_color(x  + 28, y - sprite_height - 60, timer, c_yellow, c_yellow, c_yellow, c_yellow, 1);
	
}
