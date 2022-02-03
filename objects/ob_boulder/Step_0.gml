/// @description movement and action

if(ob_gameMaster.simulation == true){

	x += velX;
	y += velY + g * g;
	
	if(!startSoundPlayed){
		audio_play_sound(SFX_Woosh_01,1,false);
		startSoundPlayed = true;
	}
	
	velY += g;
	if(velY > 10)
		velY = 10;

	//terrain collisions

	wallHit = instance_place(x,y,ob_wallBounce);

	if(wallHit != noone){
	
		x += velX;
		y += velY;
		
		velX = 0;
		velY = 0;
		
		grounded = instance_create_layer(x,y,"Instances",ob_boulderLeftover);
		grounded.image_angle = image_angle;
		grounded.image_xscale = image_xscale;
		grounded.image_yscale = image_yscale;
		grounded.image_index = image_index;
		
		ShakeScreen(35);
		audio_play_sound(SFX_BoulderHit_01,1,false);
		
		instance_destroy();

	}
	
	breakableWallHit = instance_place(x,y,ob_breakableWall);

	if(breakableWallHit != noone){
	
		breakableWallHit.hp -= 2;
		
		if(breakableWallHit.hp <= 0){
			instance_destroy(breakableWallHit);
		}
	
		hp--;
		
		if(hp < 3){
			image_index = 1;
		}
		
		ShakeScreen(35);
		audio_play_sound(SFX_BoulderHit_01,1,false);
		
		if(hp <= 0)
			instance_destroy();

	}
	
	wallHit = instance_place(x,y,ob_wall);

	if(wallHit != noone){
	
		x += velX;
		y += velY;
		
		velX = 0;
		velY = 0;
		
		grounded = instance_create_layer(x,y,"Instances",ob_boulderLeftover);
		grounded.image_angle = image_angle;
		grounded.image_xscale = image_xscale;
		grounded.image_yscale = image_yscale;
		grounded.image_index = image_index;
		
		ShakeScreen(35);
		audio_play_sound(SFX_BoulderHit_01,1,false);
		
		instance_destroy();

	}

	//shield collisions
	bounceShieldHit = instance_place(x,y,ob_shieldingWallBounce);

	if(bounceShieldHit != noone){
		
		bounceShieldHit.hp--;
		
		if(bounceShieldHit.hp <= 0)
			instance_destroy(bounceShieldHit);
		
		if(hp < 3){
			image_index = 1;
		}
		
		ShakeScreen(35);
		audio_play_sound(SFX_BoulderHit_01,1,false);
		
		if(hp <= 0)
			instance_destroy();
	}
	
	destroyShieldHit = instance_place(x,y,ob_shieldingWallDestroy);

	if(destroyShieldHit != noone){
		
		destroyShieldHit.hp -= 2;
		
		if(destroyShieldHit.hp <= 0)
			instance_destroy(destroyShieldHit);
		
		if(hp < 3){
			image_index = 1;
		}
		
		ShakeScreen(35);
		audio_play_sound(SFX_BoulderHit_01,1,false);
		
		if(hp <= 0)
			instance_destroy();
	}

	//enemy collisions
	enemyHit = instance_place(x,y,ob_enemy);

	if(enemyHit != noone){

		dealDamage(owner, enemyHit);
		
		if(instance_exists(owner)){
			owner.hp += owner.vamp + owner.persistantVamp;
			if(owner.hp > owner.maxHp)
				owner.hp = owner.maxHp;
		}
		
		ShakeScreen(35);
		audio_play_sound(SFX_BoulderHit_01,1,false);
		audio_play_sound(SFX_EnemyHitConfirm_01,1,false);
		
		instance_destroy();

	}
	
	//player collisions
	playerHit = instance_place(x,y,ob_player);

	if(playerHit != noone){

		dealDamage(owner, playerHit);

		if(instance_exists(owner)){
			owner.hp += owner.vamp + owner.persistantVamp;
			if(owner.hp > owner.maxHp)
				owner.hp = owner.maxHp;
		}
		
		ShakeScreen(35);
		audio_play_sound(SFX_BoulderHit_01,1,false);
		audio_play_sound(SFX_PlayerDamage_01,1,false);
		
		instance_destroy();

	}

}