function draw_dashed_line(posx, posy, normx, normy){

	var dashSize = 15;

	var line_x = posx;
	var line_y = posy;
	var line_end_x = posx + normx * dashSize;
	var line_end_y = posy + normy * dashSize;
	var dash = true;
	
	while(	!collision_point(line_x,line_y,ob_shield,true,false) &&
			!collision_point(line_x,line_y,ob_terrainBlock,true,false) &&
			!collision_point(line_x,line_y,ob_enemy,true,false) &&
			line_x < room_width && line_x > 0 &&
			line_y < room_height && line_y > 0 )
	{
		
		if(dash){
			draw_line_color(line_x,line_y,line_end_x,line_end_y,c_white,c_white);
		}
		
		dash = !dash;
		
		line_x += normx * dashSize;
		line_y += normy * dashSize;
		line_end_x += normx * dashSize;
		line_end_y += normy * dashSize;
		
	}

}