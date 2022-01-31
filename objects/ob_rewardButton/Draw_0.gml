/// @description draw self and selection

if(collision_point(mouse_x, mouse_y, self, 0, false)){

	draw_rectangle_color(
			x-10-sprite_width/2,y-10-sprite_height/2,
			x+sprite_width/2+10,y+sprite_height/2+10,
			c_blue,c_blue,c_blue,c_blue,false);

}

draw_self();
