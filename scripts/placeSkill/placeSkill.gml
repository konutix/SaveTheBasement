function placeSkill(){

	switch(activeCard.card){
		
		case card.baseBullet:
		
			projectile = instance_create_layer(chargeStartX, chargeStartY, "actionInstances", ob_bounceBullet);
			
			chargeVecX = chargeStartX - mouse_x;
			chargeVecY = chargeStartY - mouse_y;
			
			chargeVecLen = sqrt(chargeVecX * chargeVecX + chargeVecY * chargeVecY);
				
			normChargeVecX = chargeVecX / chargeVecLen;
			normChargeVecY = chargeVecY / chargeVecLen;
			
			projectile.velX = normChargeVecX * (projectile.spd + min(maxCharge, chargeVecLen) * powerScale);
			projectile.velY = normChargeVecY * (projectile.spd + min(maxCharge, chargeVecLen) * powerScale);
			
			projectile.owner = ob_player;
			
			activeCard.skill = projectile;
			
		break;
		
		case card.splittingBullet:
		
			projectile = instance_create_layer(chargeStartX, chargeStartY, "actionInstances", ob_splittingBullet);
			
			chargeVecX = chargeStartX - mouse_x;
			chargeVecY = chargeStartY - mouse_y;
			
			chargeVecLen = sqrt(chargeVecX * chargeVecX + chargeVecY * chargeVecY);
				
			normChargeVecX = chargeVecX / chargeVecLen;
			normChargeVecY = chargeVecY / chargeVecLen;
			
			projectile.velX = normChargeVecX * (projectile.spd + min(maxCharge, chargeVecLen) * powerScale);
			projectile.velY = normChargeVecY * (projectile.spd + min(maxCharge, chargeVecLen) * powerScale);
			
			projectile.owner = ob_player;
			
			activeCard.skill = projectile;
			
		break;
		
		case card.baseBolt:
		
			projectile = instance_create_layer(chargeStartX, chargeStartY, "actionInstances", ob_bolt);
			
			chargeVecX = chargeStartX - mouse_x;
			chargeVecY = chargeStartY - mouse_y;
			
			chargeVecLen = sqrt(chargeVecX * chargeVecX + chargeVecY * chargeVecY);
				
			normChargeVecX = chargeVecX / chargeVecLen;
			normChargeVecY = chargeVecY / chargeVecLen;
			
			projectile.velX = normChargeVecX * (projectile.spd + min(maxCharge, chargeVecLen) * powerScale);
			projectile.velY = normChargeVecY * (projectile.spd + min(maxCharge, chargeVecLen) * powerScale);
			projectile.image_angle = point_direction(0, 0, projectile.velX, projectile.velY);
			
			projectile.owner = ob_player;
			
			activeCard.skill = projectile;
			
		break;
		
		case card.openingShot:
		
			projectile = instance_create_layer(chargeStartX, chargeStartY, "actionInstances", ob_openingShot);
			
			chargeVecX = chargeStartX - mouse_x;
			chargeVecY = chargeStartY - mouse_y;
			
			chargeVecLen = sqrt(chargeVecX * chargeVecX + chargeVecY * chargeVecY);
				
			normChargeVecX = chargeVecX / chargeVecLen;
			normChargeVecY = chargeVecY / chargeVecLen;
			
			projectile.velX = normChargeVecX * (projectile.spd + min(maxCharge, chargeVecLen) * powerScale);
			projectile.velY = normChargeVecY * (projectile.spd + min(maxCharge, chargeVecLen) * powerScale);
			projectile.image_angle = point_direction(0, 0, projectile.velX, projectile.velY);
			
			projectile.owner = ob_player;
			
			activeCard.skill = projectile;
			
		break;
		
		case card.zapper:
		
			projectile = instance_create_layer(chargeStartX, chargeStartY, "actionInstances", ob_zapper);
			
			chargeVecX = chargeStartX - mouse_x;
			chargeVecY = chargeStartY - mouse_y;
			
			chargeVecLen = sqrt(chargeVecX * chargeVecX + chargeVecY * chargeVecY);
				
			normChargeVecX = chargeVecX / chargeVecLen;
			normChargeVecY = chargeVecY / chargeVecLen;
			
			projectile.velX = normChargeVecX * (projectile.spd + min(maxCharge, chargeVecLen) * powerScale);
			projectile.velY = normChargeVecY * (projectile.spd + min(maxCharge, chargeVecLen) * powerScale);
			projectile.image_angle = point_direction(0, 0, projectile.velX, projectile.velY);
			
			projectile.owner = ob_player;
			
			activeCard.skill = projectile;
			
		break;
		
		case card.boulder:
		
			projectile = instance_create_layer(chargeStartX, chargeStartY, "actionInstances", ob_boulder);
			
			chargeVecX = chargeStartX - mouse_x;
			chargeVecY = chargeStartY - mouse_y;
			
			chargeVecLen = sqrt(chargeVecX * chargeVecX + chargeVecY * chargeVecY);
				
			normChargeVecX = chargeVecX / chargeVecLen;
			normChargeVecY = chargeVecY / chargeVecLen;
			
			projectile.velX = normChargeVecX * (projectile.spd + min(maxCharge, chargeVecLen) * powerScale);
			projectile.velY = normChargeVecY * (projectile.spd + min(maxCharge, chargeVecLen) * powerScale);
			projectile.image_angle = point_direction(0, 0, projectile.velX, projectile.velY);
			
			projectile.owner = ob_player;
			
			activeCard.skill = projectile;
			
		break;
		
		case card.axe:
		
			projectile = instance_create_layer(chargeStartX, chargeStartY, "actionInstances", ob_axe);
			
			chargeVecX = chargeStartX - mouse_x;
			chargeVecY = chargeStartY - mouse_y;
			
			chargeVecLen = sqrt(chargeVecX * chargeVecX + chargeVecY * chargeVecY);
				
			normChargeVecX = chargeVecX / chargeVecLen;
			normChargeVecY = chargeVecY / chargeVecLen;
			
			projectile.velX = normChargeVecX * (projectile.spd + min(maxCharge, chargeVecLen) * powerScale);
			projectile.velY = normChargeVecY * (projectile.spd + min(maxCharge, chargeVecLen) * powerScale);
			projectile.image_angle = point_direction(0, 0, projectile.velX, projectile.velY);
			
			projectile.owner = ob_player;
			
			activeCard.skill = projectile;
			
		break;
		
		case card.weakeningRay:
		
			projectile = instance_create_layer(chargeStartX, chargeStartY, "actionInstances", ob_weakRay);
			
			chargeVecX = chargeStartX - mouse_x;
			chargeVecY = chargeStartY - mouse_y;
			
			chargeVecLen = sqrt(chargeVecX * chargeVecX + chargeVecY * chargeVecY);
				
			normChargeVecX = chargeVecX / chargeVecLen;
			normChargeVecY = chargeVecY / chargeVecLen;
			
			projectile.velX = normChargeVecX * (projectile.spd + min(maxCharge, chargeVecLen) * powerScale);
			projectile.velY = normChargeVecY * (projectile.spd + min(maxCharge, chargeVecLen) * powerScale);
			projectile.image_angle = point_direction(0, 0, projectile.velX, projectile.velY);
			
			projectile.owner = ob_player;
			
			activeCard.skill = projectile;
			
		break;
		
		case card.shieldingWallBounce:
		
			shield = instance_create_layer(chargeStartX, chargeStartY, "actionInstances", ob_shieldingWallBounce);
			
			chargeVecX = chargeStartX - mouse_x;
			chargeVecY = chargeStartY - mouse_y;
			
			chargeVecLen = sqrt(chargeVecX * chargeVecX + chargeVecY * chargeVecY);
				
			shield.normalX = chargeVecX / chargeVecLen;
			shield.normalY = chargeVecY / chargeVecLen;
			
			shield.image_angle = point_direction(0, 0, shield.normalX, shield.normalY);
			shield.image_yscale = min(maxCharge, chargeVecLen) / maxCharge;
			
			shield.owner = ob_player;
			
			activeCard.skill = shield;
			
		break;
		
		case card.shieldingWallDestroy:
		
			shield = instance_create_layer(chargeStartX, chargeStartY, "actionInstances", ob_shieldingWallDestroy);
			
			chargeVecX = chargeStartX - mouse_x;
			chargeVecY = chargeStartY - mouse_y;
			
			chargeVecLen = sqrt(chargeVecX * chargeVecX + chargeVecY * chargeVecY);
				
			shield.normalX = chargeVecX / chargeVecLen;
			shield.normalY = chargeVecY / chargeVecLen;
			
			shield.image_angle = point_direction(0, 0, shield.normalX, shield.normalY);
			shield.image_yscale = min(maxCharge, chargeVecLen) / maxCharge;
			
			shield.owner = ob_player;
			
			activeCard.skill = shield;
			
		break;
		
		case card.vampiricThirst:
		
			buff = instance_create_layer(ob_player.x, ob_player.y - 100, "gui", ob_vampiricThirst);
			
			buff.owner = ob_player;
			
			activeCard.skill = buff;
			
		break;
		
		case card.barrier:
		
			buff = instance_create_layer(ob_player.x, ob_player.y - 20, "gui", ob_barrier);
			
			buff.owner = ob_player;
			
			activeCard.skill = buff;
			
		break;
		
		case card.costDown:
		
			buff = instance_create_layer(ob_player.x, ob_player.y - 50, "gui", ob_costDown);
			
			buff.owner = ob_player;
			
			activeCard.skill = buff;
			
		break;
	}
}