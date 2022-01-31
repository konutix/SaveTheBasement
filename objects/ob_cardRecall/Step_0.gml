/// @description actions

x += (targetX - x) * .1;
y += (targetY - y) * .1;
	
if(abs(targetX-x) < 10 && abs(targetY-y) < 10){
	
	instance_destroy();
	
}

