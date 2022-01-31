/// @description draw self and arrow

draw_self();

if(ob_gameMaster.simulation == false){
	draw_arrow(x, y, x + velX*8, y + velY*8, 10);
}

if(state == state.zapping){

	draw_circle_color(x,y,zapDraw,c_yellow,c_yellow,true);

}

if(drawZaps){

	for(var i = 0; i < ds_list_size(connectedZappers); i++){
	
		var lineTarget = ds_list_find_value(connectedZappers, i);
		draw_line_width_color(x,y,lineTarget.x,lineTarget.y,3,c_yellow,c_yellow);
	
	}

}