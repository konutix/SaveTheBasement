/// @description draw self and arrow

if(ob_gameMaster.simulation == false){
	draw_self();
	draw_arrow(x, y, x + velX*8, y + velY*8, 10);
}
