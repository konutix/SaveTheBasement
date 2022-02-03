/// @description Actions

//setting attack
if(state = state.setAttack){

	if(ob_player.x < room_width/2)
		scale = 1;
	else
		scale = -1

	image_xscale = baseImageScale * scale;
	projectile = instance_create_layer(x-sprite_width/2*xscale, y-(sprite_height/2 + 20), "Instances", ob_bounceBullet);
	
	var playerVX = ob_player.x - x-sprite_width/2;
	var playerVY = ob_player.y+ob_player.sprite_height/2 - y-sprite_height/2 - 20;
	
	projectile.velX = playerVX/30;
	projectile.velY = playerVY/30;

	projectile.owner = self;
	projectile.dmg = 20;

	state = state.locked;
}

//Death
if(hp <= 0){

	instance_destroy();

}
