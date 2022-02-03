/// @description movement and action

if(ob_gameMaster.simulation == true){

	part_particles_create(global.partSystem, x, y, global.ptSplitBulletTrail, 1);

	if(!startSoundPlayed){
		audio_play_sound(SFX_Woosh_01,1,false);
		startSoundPlayed = true;
	}

	x += velX;
	y += velY;

	//terrain collisions

	wallHit = instance_place(x+velX,y+velY,ob_wallBounce);

	if(wallHit != noone){
	
		ux = dot_product(velX,velY,wallHit.normalX,wallHit.normalY) * wallHit.normalX;
		uy = dot_product(velX,velY,wallHit.normalX,wallHit.normalY) * wallHit.normalY;
	
		wx = velX - ux;
		wy = velY - uy;
		
		bounceVecX = wx - ux;
		bounceVecY = wy - uy;
		
		var angleToNormal = angle_difference(point_direction(0,0,bounceVecX,bounceVecY), point_direction(0,0,wallHit.normalX,wallHit.normalY));
		var angleToWall = 90 - abs(angleToNormal);
	
		split1 = instance_create_layer(x,y,"actionInstances",ob_bounceBullet);
		split1.velX = bounceVecX;
		split1.velY = bounceVecY;
		split1.owner = owner;
		split1.dmg = 7;
		split1.startSoundPlayed = true;
		
		split2 = instance_create_layer(x,y,"actionInstances",ob_bounceBullet);
		split2.velX = rotateByAngleX(bounceVecX, bounceVecY, angleToWall/2);
		split2.velY = rotateByAngleY(bounceVecX, bounceVecY, angleToWall/2);
		split2.owner = owner;
		split2.dmg = 7;
		split2.startSoundPlayed = true;
		
		split3 = instance_create_layer(x,y,"actionInstances",ob_bounceBullet);
		split3.velX = rotateByAngleX(bounceVecX, bounceVecY, -angleToWall/2);
		split3.velY = rotateByAngleY(bounceVecX, bounceVecY, -angleToWall/2);
		split3.owner = owner;
		split3.dmg = 7;
		split3.startSoundPlayed = true;
		
		ShakeScreen(5);
		audio_play_sound(SFX_BallBounce_01,1,false);
		
		instance_destroy();

	}
	
	breakableWallHit = instance_place(x,y,ob_breakableWall);

	if(breakableWallHit != noone){
	
		breakableWallHit.hp -= 3;
		
		if(breakableWallHit.hp <= 0){
			instance_destroy(breakableWallHit);
		}
	
		ShakeScreen(15);
		audio_play_sound(SFX_ShieldBreak_01,1,false);
	
		instance_destroy();

	}
	
	wallHit = instance_place(x,y,ob_wall);

	if(wallHit != noone){
	
		instance_destroy();
		audio_play_sound(SFX_ArrowHit_01,1,false);

	}
	
	//shield collisions
	bounceShieldHit = instance_place(x+velX,y+velY,ob_shieldingWallBounce);

	if(bounceShieldHit != noone){
	
		ux = dot_product(velX,velY,wallHit.normalX,wallHit.normalY) * wallHit.normalX;
		uy = dot_product(velX,velY,wallHit.normalX,wallHit.normalY) * wallHit.normalY;
	
		wx = velX - ux;
		wy = velY - uy;
		
		bounceVecX = wx - ux;
		bounceVecY = wy - uy;
		
		var angleToNormal = angle_difference(point_direction(0,0,bounceVecX,bounceVecY), point_direction(0,0,wallHit.normalX,wallHit.normalY));
		var angleToWall = 90 - abs(angleToNormal);
	
		split1 = instance_create_layer(x,y,"actionInstances",ob_bounceBullet);
		split1.velX = bounceVecX;
		split1.velY = bounceVecY;
		split1.owner = owner;
		split1.dmg = 7;
		split1.startSoundPlayed = true;
		
		split2 = instance_create_layer(x,y,"actionInstances",ob_bounceBullet);
		split2.velX = rotateByAngleX(bounceVecX, bounceVecY, angleToWall/2);
		split2.velY = rotateByAngleY(bounceVecX, bounceVecY, angleToWall/2);
		split2.owner = owner;
		split2.dmg = 7;
		split2.startSoundPlayed = true;
		
		split3 = instance_create_layer(x,y,"actionInstances",ob_bounceBullet);
		split3.velX = rotateByAngleX(bounceVecX, bounceVecY, -angleToWall/2);
		split3.velY = rotateByAngleY(bounceVecX, bounceVecY, -angleToWall/2);
		split3.owner = owner;
		split3.dmg = 7;
		split3.startSoundPlayed = true;
		
		ShakeScreen(5);
		audio_play_sound(SFX_ShieldBounce_01,1,false);
		
		instance_destroy(bounceShieldHit);
		instance_destroy();

	}
	
	destroyShieldHit = instance_place(x,y,ob_shieldingWallDestroy);

	if(destroyShieldHit != noone){
	
		destroyShieldHit.hp -= 3;
		destroyShieldHit.image_index = 1;
		
		if(destroyShieldHit.hp <= 0)
			instance_destroy(destroyShieldHit);
		
		ShakeScreen(15);
		audio_play_sound(SFX_ShieldBreak_01,1,false);
		
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

		ShakeScreen(15);
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
		
		ShakeScreen(15);
		audio_play_sound(SFX_PlayerDamage_01,1,false);
		
		instance_destroy();

	}

}