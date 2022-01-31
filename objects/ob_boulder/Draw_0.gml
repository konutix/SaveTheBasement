/// @description draw self and arrow

draw_self();

if(ob_gameMaster.simulation == false){
	draw_arrow(x, y, x + velX*8, y + velY*8, 10);
}