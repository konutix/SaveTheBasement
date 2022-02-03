/// @description movement and action

if(!grounded && ob_gameMaster.simulation == true){

	if(!startSoundPlayed){
		audio_play_sound(SFX_Woosh_01,1,false);
		startSoundPlayed = true;
	}

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
		
		grounded = true;
		state = state.zap;
		audio_play_sound(SFX_Zapper_01,1,false);

	}
	
	breakableWallHit = instance_place(x,y,ob_breakableWall);

	if(breakableWallHit != noone){
	
		breakableWallHit.hp -= 2;
		
		if(breakableWallHit.hp <= 0){
			instance_destroy(breakableWallHit);
		}
	
		x += velX;
		y += velY;
		
		velX = 0;
		velY = 0;
		
		grounded = true;
		state = state.zap;
		audio_play_sound(SFX_Zapper_01,1,false);

	}
	
	wallHit = instance_place(x,y,ob_wall);

	if(wallHit != noone){
	
		x += velX;
		y += velY;
		
		velX = 0;
		velY = 0;
		
		grounded = true;
		state = state.zap;
		audio_play_sound(SFX_Zapper_01,1,false);

	}

	//shield collisions
	bounceShieldHit = instance_place(x,y,ob_shieldingWallBounce);

	if(bounceShieldHit != noone){
		
		x += velX;
		y += velY;
		
		velX = 0;
		velY = 0;
		
		grounded = true;
		state = state.zap;
		audio_play_sound(SFX_Zapper_01,1,false);
		
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

		x += velX;
		y += velY;
		
		velX = 0;
		velY = 0;
		
		grounded = true;
		state = state.zap;
		audio_play_sound(SFX_Zapper_01,1,false);

	}
	
	//player collisions
	playerHit = instance_place(x,y,ob_player);

	if(playerHit != noone){

		x += velX;
		y += velY;
		
		velX = 0;
		velY = 0;
		
		grounded = true;
		state = state.zap;
		audio_play_sound(SFX_Zapper_01,1,false);

	}

}

if(state == state.zap){

	var lis = ds_list_create();

	collision_circle_list(x,y,maxZapDraw,ob_enemy,1,0,lis,0);
			
	if(!ds_list_empty(lis)){
			
		for(var j = 0; j < ds_list_size(lis); j++){
				
			var enem = ds_list_find_value(lis, j);
					
			dealDamage(owner, enem);
				
		}
			
	}

	if(instance_number(ob_zapper) > 1){
		
		with(ob_zapper){
		
			if(id != other.id){
		
				ds_list_add(other.connectedZappers, id);
		
				var list = ds_list_create();
			
				collision_line_list(x,y,other.x,other.y,ob_enemy,1,0,list,0);
			
				if(!ds_list_empty(list)){
			
					for(var i = 0; i < ds_list_size(list); i++){
				
						var enemy = ds_list_find_value(list, i);
					
						dealDamage(owner, enemy);
				
					}
			
				}
		
			}
		
		}
		
	}

	state = state.zapping;
	
	drawZaps = true;
	alarm_set(0, 20);
	
	zapDraw = 0;

}

if(state == state.zapping){

	zapDraw += zapSpeed;
	
	if(zapDraw >= maxZapDraw)
		state = state.free;

}