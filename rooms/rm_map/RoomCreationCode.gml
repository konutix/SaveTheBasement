if(!instance_exists(ob_gameMaster)){
	instance_create_depth(0,0,200,ob_gameMaster);
}

ob_gameMaster.roomType = roomType.map;