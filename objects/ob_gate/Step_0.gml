/// @description step

active = 0;

with(ob_gear){
	other.active += active;
}

if(active >= 2){

	if(y > 200){
	
		y--;
	
	}else{
	
		with(ob_gear){
			instance_destroy();
		}
	
	}

}
