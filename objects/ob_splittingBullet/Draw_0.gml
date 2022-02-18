/// @description draw self and arrow

draw_self();

if(ob_gameMaster.simulation == false){
	
		var length = sqrt(velX*velX+velY*velY);
	var normX = velX/length;
	var normY =	velY/length;
	
	draw_dashed_line(x,y,normX,normY);
}
