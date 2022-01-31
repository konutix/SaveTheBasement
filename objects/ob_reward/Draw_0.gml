/// @description draw self and selection

if(selected){
	
	draw_rectangle_color(
			x-10,y-10,x+sprite_width+10,y+sprite_height+10,c_green,c_green,c_green,c_green,false);
	
}
else if(collision_point(mouse_x, mouse_y, self, 0, false)){

	draw_rectangle_color(
			x-10,y-10,x+sprite_width+10,y+sprite_height+10,c_yellow,c_yellow,c_yellow,c_yellow,false);

}

draw_self();
