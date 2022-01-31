/// @description fade

image_xscale += fadeSpd/2;
image_yscale += fadeSpd/2;

image_alpha -= fadeSpd ;

if(image_alpha <= 0){
	instance_destroy();
}
