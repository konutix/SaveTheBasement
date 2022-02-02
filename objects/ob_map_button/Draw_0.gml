/// @description draw self

if(ob_gameMaster.map_layer == map_layer){

	image_alpha = 1;
	
	scale += scaleSpd * scaleDir;
	
	if(scale > baseScale + scaleWiggle)
		scaleDir = -1;
		
	if(scale < baseScale - scaleWiggle)
		scaleDir = 1;

}else{

	image_alpha = 0.5;
	scale = baseScale;
	
}

image_xscale = scale;
image_yscale = scale;

if(ob_gameMaster.map_layer == map_layer && collision_point(mouse_x,mouse_y,self,0,false)){

	draw_sprite_ext(spr_map_button,image_index+1,x+outlineWidth,y,image_xscale,image_yscale,0,c_white,1);
	draw_sprite_ext(spr_map_button,image_index+1,x,y+outlineWidth,image_xscale,image_yscale,0,c_white,1);
	draw_sprite_ext(spr_map_button,image_index+1,x-outlineWidth,y,image_xscale,image_yscale,0,c_white,1);
	draw_sprite_ext(spr_map_button,image_index+1,x,y-outlineWidth,image_xscale,image_yscale,0,c_white,1);

}

draw_self();