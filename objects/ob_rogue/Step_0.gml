/// @description Actions

//setting attack
if(state = state.setAttack){

	if(x > room_width/2){

		projectile = instance_create_layer(x-sprite_width, y-sprite_height/2 + 20, "Instances", ob_bounceBullet);
			
		projectile.velX = -1 * projectile.spd * 5;
		projectile.velY = 1 * projectile.spd + 5;

		projectile.owner = self;
	
	}else{
	
		projectile = instance_create_layer(x+sprite_width, y-sprite_height/2 - 20, "Instances", ob_bounceBullet);
			
		projectile.velX = 1 * projectile.spd * 5;
		projectile.velY = 0 * projectile.spd;

		projectile.owner = self;
	
	}

	state = state.locked;
}

//Death
if(hp <= 0){

	instance_destroy();

}
