/// @description movement and action

if(ob_gameMaster.simulation == true){

	part_type_orientation(global.ptBoltTrail, image_angle, image_angle, 0, 0, 0);
	part_particles_create(global.partSystem, x, y, global.ptBoltTrail, 1);

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
		
		var part_dir = point_direction(0,0,-velX,-velY);
		var part_spread = 70;
		
		var dirNormX = velX / sqrt(velX*velX+velY*velY);
		var dirNormY = velY / sqrt(velX*velX+velY*velY);
		
		var partSpawnX = dirNormX * sprite_width/2;
		var partSpawnY = dirNormY * sprite_width/2;
		
		part_type_direction(global.ptDepris1,part_dir - part_spread,part_dir + part_spread,0,0);
		part_type_direction(global.ptDepris2,part_dir - part_spread,part_dir + part_spread,0,0);
		part_particles_create(global.partSystem,x + partSpawnX,y + partSpawnY, global.ptDepris1,10);
		part_particles_create(global.partSystem,x + partSpawnX,y + partSpawnY, global.ptDepris2,10);
		
		velX = 0;
		velY = 0;
		
		grounded = instance_create_layer(x,y,"Instances",ob_boltLeftover);
		grounded.image_angle = image_angle;
		grounded.image_xscale = image_xscale;
		grounded.image_yscale = image_yscale;
		grounded.image_index = image_index;
		instance_destroy();

	}
	
	breakableWallHit = instance_place(x,y,ob_breakableWall);

	if(breakableWallHit != noone){
	
		breakableWallHit.hp -= 2;
		
		if(breakableWallHit.hp <= 0){
			instance_destroy(breakableWallHit);
		}
	
		hp--;
		image_index = 1;
		
		if(hp <= 0)
			instance_destroy();

	}
	
	wallHit = instance_place(x,y,ob_wall);

	if(wallHit != noone){
	
		x += velX;
		y += velY;
		
		var part_dir = point_direction(0,0,-velX,-velY);
		var part_spread = 70;
		
		var dirNormX = velX / sqrt(velX*velX+velY*velY);
		var dirNormY = velY / sqrt(velX*velX+velY*velY);
		
		var partSpawnX = dirNormX * sprite_width/2;
		var partSpawnY = dirNormY * sprite_width/2;
		
		part_type_direction(global.ptDepris1,part_dir - part_spread,part_dir + part_spread,0,0);
		part_type_direction(global.ptDepris2,part_dir - part_spread,part_dir + part_spread,0,0);
		part_particles_create(global.partSystem,x + partSpawnX,y + partSpawnY, global.ptDepris1,10);
		part_particles_create(global.partSystem,x + partSpawnX,y + partSpawnY, global.ptDepris2,10);
		
		velX = 0;
		velY = 0;
		
		grounded = instance_create_layer(x,y,"Instances",ob_boltLeftover);
		grounded.image_angle = image_angle;
		grounded.image_xscale = image_xscale;
		grounded.image_yscale = image_yscale;
		grounded.image_index = image_index;
		instance_destroy();

	}

	//shield collisions
	bounceShieldHit = instance_place(x,y,ob_shieldingWallBounce);

	if(bounceShieldHit != noone){
		
		bounceShieldHit.hp--;
		
		if(bounceShieldHit.hp <= 0)
			instance_destroy(bounceShieldHit);
		
		hp--;
		image_index = 1;
		
		if(hp <= 0)
			instance_destroy();
	}
	
	destroyShieldHit = instance_place(x,y,ob_shieldingWallDestroy);

	if(destroyShieldHit != noone){
		
		destroyShieldHit.hp -= 2;
		
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