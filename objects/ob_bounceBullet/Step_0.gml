/// @description movement and action

if(ob_gameMaster.simulation == true){

	part_particles_create(global.partSystem, x, y, global.ptBulletTrail, 1);

	x += velX;
	y += velY;

	//terrain collisions

	wallHit = instance_place(x,y,ob_wallBounce);

	if(wallHit != noone){
	
		ux = dot_product(velX,velY,wallHit.normalX,wallHit.normalY) * wallHit.normalX;
		uy = dot_product(velX,velY,wallHit.normalX,wallHit.normalY) * wallHit.normalY;
	
		wx = velX - ux;
		wy = velY - uy;
	
		velX = wx - ux;
		velY = wy - uy;

	}
	
	wallHit = instance_place(x,y,ob_wall);

	if(wallHit != noone){
	
		instance_destroy();

	}
	
	breakableWallHit = instance_place(x,y,ob_breakableWall);

	if(breakableWallHit != noone){
	
		breakableWallHit.hp--;
		
		if(breakableWallHit.hp <= 0){
			instance_destroy(breakableWallHit);
		}
	
		instance_destroy();

	}
	
	//shield collisions
	bounceShieldHit = instance_place(x,y,ob_shieldingWallBounce);

	if(bounceShieldHit != noone){
	
		ux = dot_product(velX,velY,bounceShieldHit.normalX,bounceShieldHit.normalY) * bounceShieldHit.normalX;
		uy = dot_product(velX,velY,bounceShieldHit.normalX,bounceShieldHit.normalY) * bounceShieldHit.normalY;
	
		wx = velX - ux;
		wy = velY - uy;
	
		velX = wx - ux;
		velY = wy - uy;
		
		bounceShieldHit.hp--;
		
		dmg += 5;
		owner = bounceShieldHit.owner;
		
		if(bounceShieldHit.hp <= 0)
			instance_destroy(bounceShieldHit);

	}
	
	destroyShieldHit = instance_place(x,y,ob_shieldingWallDestroy);

	if(destroyShieldHit != noone){
	
		destroyShieldHit.hp--;
		destroyShieldHit.image_index = 1;
		
		if(destroyShieldHit.hp <= 0)
			instance_destroy(destroyShieldHit);
		
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

		instance_destroy();

	}

}