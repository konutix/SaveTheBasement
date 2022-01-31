/// @description movement and action

if(ob_gameMaster.simulation == true){

	part_particles_create(global.partSystem, x, y, global.ptSplitBulletTrail, 1);

	x += velX;
	y += velY;

	//terrain collisions

	wallHit = instance_place(x,y,ob_wallBounce);

	if(wallHit != noone){
	
		ux = dot_product(velX,velY,wallHit.normalX,wallHit.normalY) * wallHit.normalX;
		uy = dot_product(velX,velY,wallHit.normalX,wallHit.normalY) * wallHit.normalY;
	
		wx = velX - ux;
		wy = velY - uy;
	
		split1 = instance_create_layer(x,y,"actionInstances",ob_bounceBullet);
		split1.velX = wx - ux;
		split1.velY = wy - uy;
		split1.owner = owner;
		
		split2 = instance_create_layer(x,y,"actionInstances",ob_bounceBullet);
		split2.velX = wx - ux + 5;
		split2.velY = wy - uy + 5;
		split2.owner = owner;
		
		split3 = instance_create_layer(x,y,"actionInstances",ob_bounceBullet);
		split3.velX = wx - ux - 5;
		split3.velY = wy - uy - 5;
		split3.owner = owner;
		
		instance_destroy();

	}
	
	breakableWallHit = instance_place(x,y,ob_breakableWall);

	if(breakableWallHit != noone){
	
		breakableWallHit.hp -= 3;
		
		if(breakableWallHit.hp <= 0){
			instance_destroy(breakableWallHit);
		}
	
		instance_destroy();

	}
	
	wallHit = instance_place(x,y,ob_wall);

	if(wallHit != noone){
	
		instance_destroy();

	}
	
	//shield collisions
	bounceShieldHit = instance_place(x,y,ob_shieldingWallBounce);

	if(bounceShieldHit != noone){
	
		ux = dot_product(velX,velY,bounceShieldHit.normalX,bounceShieldHit.normalY) * bounceShieldHit.normalX;
		uy = dot_product(velX,velY,bounceShieldHit.normalX,bounceShieldHit.normalY) * bounceShieldHit.normalY;
	
		wx = velX - ux;
		wy = velY - uy;
	
		owner = bounceShieldHit.owner;
	
		split1 = instance_create_layer(x,y,"actionInstances",ob_bounceBullet);
		split1.velX = wx - ux;
		split1.velY = wy - uy;
		split1.owner = owner;
		
		split2 = instance_create_layer(x,y,"actionInstances",ob_bounceBullet);
		split2.velX = wx - ux + 5;
		split2.velY = wy - uy + 5;
		split2.owner = owner;
		
		split3 = instance_create_layer(x,y,"actionInstances",ob_bounceBullet);
		split3.velX = wx - ux - 5;
		split3.velY = wy - uy - 5;
		split3.owner = owner;
		
		instance_destroy(bounceShieldHit);
		instance_destroy();

	}
	
	destroyShieldHit = instance_place(x,y,ob_shieldingWallDestroy);

	if(destroyShieldHit != noone){
	
		destroyShieldHit.hp -= 3;
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
		
		instance_destroy();

	}

}