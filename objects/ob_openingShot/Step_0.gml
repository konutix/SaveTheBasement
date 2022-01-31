/// @description movement and action

if(ob_gameMaster.simulation == true){

	part_type_orientation(global.ptOpeningShotTrail, image_angle, image_angle, 0, 0, 0);
	part_particles_create(global.partSystem, x, y, global.ptOpeningShotTrail, 1);

	x += velX;
	y += velY + g * g;
	
	velY += g;
	if(velY > 10)
		velY = 10;
	
	image_angle = point_direction(0,0,velX,velY);

	//terrain collisions

	wallHit = instance_place(x,y,ob_wallBounce);

	if(wallHit != noone){
	
		x += velX;
		y += velY;
		
		velX = 0;
		velY = 0;
		
		instance_destroy();

	}
	
	breakableWallHit = instance_place(x,y,ob_breakableWall);

	if(breakableWallHit != noone){
	
		breakableWallHit.hp -= 1;
		
		if(breakableWallHit.hp <= 0){
			instance_destroy(breakableWallHit);
		}
	
		hp--;
		
		if(hp <= 0)
			instance_destroy();

	}
	
	wallHit = instance_place(x,y,ob_wall);

	if(wallHit != noone){
	
		x += velX;
		y += velY;
		
		velX = 0;
		velY = 0;
		
		instance_destroy();

	}

	//shield collisions
	bounceShieldHit = instance_place(x,y,ob_shieldingWallBounce);

	if(bounceShieldHit != noone){
		
		bounceShieldHit.hp--;
		
		if(bounceShieldHit.hp <= 0)
			instance_destroy(bounceShieldHit);
		
		hp--;
		
		if(hp <= 0)
			instance_destroy();
	}
	
	destroyShieldHit = instance_place(x,y,ob_shieldingWallDestroy);

	if(destroyShieldHit != noone){
		
		destroyShieldHit.hp -= 1;
		
		if(destroyShieldHit.hp <= 0)
			instance_destroy(destroyShieldHit);
		
		instance_destroy();
	}

	//enemy collisions
	enemyHit = instance_place(x,y,ob_enemy);

	if(enemyHit != noone){

		if(enemyHit.barrier <= 0)
			enemyHit.vulnerable += 2;
		
		dealDamage(owner, enemyHit);
		
		if(instance_exists(owner)){
			owner.hp += owner.vamp + owner.persistantVamp;
			if(owner.hp > owner.maxHp)
				owner.hp = owner.maxHp;
		}
		
		instance_destroy();

	}
	
	//player collisions
	playerHit = instance_place(x,y,ob_player);

	

	if(playerHit != noone){

		if(playerHit.barrier <= 0)
			playerHit.vulnerable += 2;

		dealDamage(owner, playerHit);

		if(instance_exists(owner)){
			owner.hp += owner.vamp + owner.persistantVamp;
			if(owner.hp > owner.maxHp)
				owner.hp = owner.maxHp;
		}

		instance_destroy();

	}

}