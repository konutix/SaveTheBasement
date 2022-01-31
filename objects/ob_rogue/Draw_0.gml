/// @description draw rogue

draw_self();

if(variable_instance_exists(self, "hp") && x > room_width/2){

	draw_rectangle_color(x - sprite_width/2,
						y - sprite_height - 50,
						x - sprite_width/2 + hp / maxHp * sprite_width,
						y - sprite_height - 40,
						c_red,c_red,c_red,c_red,false);
						
	draw_text(x - sprite_width / 2 + 2, y - sprite_height - 60, hp);

}else{

	draw_rectangle_color(x - sprite_width/2,
						y - sprite_height - 30,
						x - sprite_width/2 + hp / maxHp * sprite_width,
						y - sprite_height - 20,
						c_red,c_red,c_red,c_red,false);
						
	draw_text(x - sprite_width / 2 + 2, y - sprite_height - 40, hp);

}

