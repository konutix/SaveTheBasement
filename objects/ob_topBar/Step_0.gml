/// @description expand/hide

if(state == state.expanding){

	if(y >= 0){
		state = state.expanded;
	}else{
		y += expandSpeed;
	}

}

if(state == state.hiding){

	if(y <= hiddenY){
		state = state.hidden;
	}else{
		y -= expandSpeed;
	}

}
