if(!instance_exists(ob_gameMaster)){
	instance_create_layer(0,0,"gui",ob_gameMaster);
}

ob_gameMaster.roomType = roomType.credits;