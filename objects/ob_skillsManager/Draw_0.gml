/// @description draw charge

if(state == state.charging){

	//bullet charging
	if(activeCard.card == card.baseBullet){

		chargeVecX = chargeStartX - mouse_x;
		chargeVecY = chargeStartY - mouse_y;

		chargeVecLen = sqrt(chargeVecX * chargeVecX + chargeVecY * chargeVecY);
		
		normVecX = chargeVecX / chargeVecLen;
		normVecY = chargeVecY / chargeVecLen;

		draw_circle_color(chargeStartX, chargeStartY, 32 * 0.3, c_white, c_white, true);

		draw_dashed_line(chargeStartX, chargeStartY, normVecX, normVecY);
		
	}
	
	//spliting bullet charging
	if(activeCard.card == card.splittingBullet){

		chargeVecX = chargeStartX - mouse_x;
		chargeVecY = chargeStartY - mouse_y;

		chargeVecLen = sqrt(chargeVecX * chargeVecX + chargeVecY * chargeVecY);
		
		normVecX = chargeVecX / chargeVecLen;
		normVecY = chargeVecY / chargeVecLen;

		draw_circle_color(chargeStartX, chargeStartY, 32 * 0.3, c_purple, c_purple, true);

		draw_dashed_line(chargeStartX, chargeStartY, normVecX, normVecY);
	}
	
	//boulder bullet charging
	if(activeCard.card == card.boulder){

		chargeVecX = chargeStartX - mouse_x;
		chargeVecY = chargeStartY - mouse_y;

		draw_circle_color(chargeStartX, chargeStartY, 32 * 0.6, c_white, c_white, true);

		if(point_distance(mouse_x, mouse_y, chargeStartX, chargeStartY) < maxCharge){
	
			draw_arrow(chargeStartX, chargeStartY, chargeStartX + chargeVecX, chargeStartY + chargeVecY, 10);
		
		}else{
	
			chargeVecLen = sqrt(chargeVecX * chargeVecX + chargeVecY * chargeVecY);
		
			maxChargeVecX = chargeVecX / chargeVecLen * maxCharge;
			maxChargeVecY = chargeVecY / chargeVecLen * maxCharge;
	
			draw_arrow(chargeStartX, chargeStartY, chargeStartX + maxChargeVecX, chargeStartY + maxChargeVecY, 10);
	
		}
	}
	
	//axe charging
	if(activeCard.card == card.axe){

		chargeVecX = chargeStartX - mouse_x;
		chargeVecY = chargeStartY - mouse_y;

		draw_sprite_ext(spr_axeShadow, 0, chargeStartX, chargeStartY, 2, 2,
					point_direction(chargeStartX, chargeStartY, chargeStartX + chargeVecX, chargeStartY + chargeVecY),
					c_white,1);

		if(point_distance(mouse_x, mouse_y, chargeStartX, chargeStartY) < maxCharge){
	
			draw_arrow(chargeStartX, chargeStartY, chargeStartX + chargeVecX, chargeStartY + chargeVecY, 10);
		
		}else{
	
			chargeVecLen = sqrt(chargeVecX * chargeVecX + chargeVecY * chargeVecY);
		
			maxChargeVecX = chargeVecX / chargeVecLen * maxCharge;
			maxChargeVecY = chargeVecY / chargeVecLen * maxCharge;
	
			draw_arrow(chargeStartX, chargeStartY, chargeStartX + maxChargeVecX, chargeStartY + maxChargeVecY, 10);
	
		}
	}
	
	//zapper charging
	if(activeCard.card == card.zapper){

		chargeVecX = chargeStartX - mouse_x;
		chargeVecY = chargeStartY - mouse_y;

		draw_sprite_ext(spr_zapperShadow, 0, chargeStartX, chargeStartY, 1, 1,
					point_direction(chargeStartX, chargeStartY, chargeStartX + chargeVecX, chargeStartY + chargeVecY),
					c_white,1);

		if(point_distance(mouse_x, mouse_y, chargeStartX, chargeStartY) < maxCharge){
	
			draw_arrow(chargeStartX, chargeStartY, chargeStartX + chargeVecX, chargeStartY + chargeVecY, 10);
		
		}else{
	
			chargeVecLen = sqrt(chargeVecX * chargeVecX + chargeVecY * chargeVecY);
		
			maxChargeVecX = chargeVecX / chargeVecLen * maxCharge;
			maxChargeVecY = chargeVecY / chargeVecLen * maxCharge;
	
			draw_arrow(chargeStartX, chargeStartY, chargeStartX + maxChargeVecX, chargeStartY + maxChargeVecY, 10);
	
		}
	}
	
	//weakeningRay charging
	if(activeCard.card == card.weakeningRay){

		chargeVecX = chargeStartX - mouse_x;
		chargeVecY = chargeStartY - mouse_y;

		draw_sprite_ext(spr_weakeningRayShadow, 0, chargeStartX, chargeStartY, 2, 2,
					point_direction(chargeStartX, chargeStartY, chargeStartX + chargeVecX, chargeStartY + chargeVecY),
					c_white,1);

		if(point_distance(mouse_x, mouse_y, chargeStartX, chargeStartY) < maxCharge){
	
			draw_arrow(chargeStartX, chargeStartY, chargeStartX + chargeVecX, chargeStartY + chargeVecY, 10);
		
		}else{
	
			chargeVecLen = sqrt(chargeVecX * chargeVecX + chargeVecY * chargeVecY);
		
			maxChargeVecX = chargeVecX / chargeVecLen * maxCharge;
			maxChargeVecY = chargeVecY / chargeVecLen * maxCharge;
	
			draw_arrow(chargeStartX, chargeStartY, chargeStartX + maxChargeVecX, chargeStartY + maxChargeVecY, 10);
	
		}
	}
	
	//radarBomb charging
	if(activeCard.card == card.radarBomb){

		chargeVecX = chargeStartX - mouse_x;
		chargeVecY = chargeStartY - mouse_y;

		draw_sprite_ext(spr_radarBombShadow, 0, chargeStartX, chargeStartY, 1, 1,
					point_direction(chargeStartX, chargeStartY, chargeStartX + chargeVecX, chargeStartY + chargeVecY),
					c_white,1);

		if(point_distance(mouse_x, mouse_y, chargeStartX, chargeStartY) < maxCharge){
	
			draw_arrow(chargeStartX, chargeStartY, chargeStartX + chargeVecX, chargeStartY + chargeVecY, 10);
		
		}else{
	
			chargeVecLen = sqrt(chargeVecX * chargeVecX + chargeVecY * chargeVecY);
		
			maxChargeVecX = chargeVecX / chargeVecLen * maxCharge;
			maxChargeVecY = chargeVecY / chargeVecLen * maxCharge;
	
			draw_arrow(chargeStartX, chargeStartY, chargeStartX + maxChargeVecX, chargeStartY + maxChargeVecY, 10);
	
		}
	}
	
	//portal drill charging
	if(activeCard.card == card.portalDrill){

		chargeVecX = chargeStartX - mouse_x;
		chargeVecY = chargeStartY - mouse_y;

		draw_sprite_ext(spr_portalDrillShadow, 0, chargeStartX, chargeStartY, 2, 2,
					point_direction(chargeStartX, chargeStartY, chargeStartX + chargeVecX, chargeStartY + chargeVecY),
					c_white,1);

		if(point_distance(mouse_x, mouse_y, chargeStartX, chargeStartY) < maxCharge){
	
			draw_arrow(chargeStartX, chargeStartY, chargeStartX + chargeVecX, chargeStartY + chargeVecY, 10);
		
		}else{
	
			chargeVecLen = sqrt(chargeVecX * chargeVecX + chargeVecY * chargeVecY);
		
			maxChargeVecX = chargeVecX / chargeVecLen * maxCharge;
			maxChargeVecY = chargeVecY / chargeVecLen * maxCharge;
	
			draw_arrow(chargeStartX, chargeStartY, chargeStartX + maxChargeVecX, chargeStartY + maxChargeVecY, 10);
	
		}
	}
	
	//bolt charging
	if(activeCard.card == card.baseBolt){

		chargeVecX = chargeStartX - mouse_x;
		chargeVecY = chargeStartY - mouse_y;

		draw_sprite_ext(spr_boltShadow, 0, chargeStartX, chargeStartY, 0.3, 0.3, 
					point_direction(chargeStartX, chargeStartY, chargeStartX + chargeVecX, chargeStartY + chargeVecY),
					c_white,1);

		if(point_distance(mouse_x, mouse_y, chargeStartX, chargeStartY) < maxCharge){
	
			draw_arrow(chargeStartX, chargeStartY, chargeStartX + chargeVecX, chargeStartY + chargeVecY, 10);
		
		}else{
	
			chargeVecLen = sqrt(chargeVecX * chargeVecX + chargeVecY * chargeVecY);
		
			maxChargeVecX = chargeVecX / chargeVecLen * maxCharge;
			maxChargeVecY = chargeVecY / chargeVecLen * maxCharge;
	
			draw_arrow(chargeStartX, chargeStartY, chargeStartX + maxChargeVecX, chargeStartY + maxChargeVecY, 10);
	
		}
	}
	
	//opening shot charging
	if(activeCard.card == card.openingShot){

		chargeVecX = chargeStartX - mouse_x;
		chargeVecY = chargeStartY - mouse_y;

		draw_sprite_ext(spr_boltShadow, 0, chargeStartX, chargeStartY, 0.2, 0.2, 
					point_direction(chargeStartX, chargeStartY, chargeStartX + chargeVecX, chargeStartY + chargeVecY),
					c_white,1);

		if(point_distance(mouse_x, mouse_y, chargeStartX, chargeStartY) < maxCharge){
	
			draw_arrow(chargeStartX, chargeStartY, chargeStartX + chargeVecX, chargeStartY + chargeVecY, 10);
		
		}else{
	
			chargeVecLen = sqrt(chargeVecX * chargeVecX + chargeVecY * chargeVecY);
		
			maxChargeVecX = chargeVecX / chargeVecLen * maxCharge;
			maxChargeVecY = chargeVecY / chargeVecLen * maxCharge;
	
			draw_arrow(chargeStartX, chargeStartY, chargeStartX + maxChargeVecX, chargeStartY + maxChargeVecY, 10);
	
		}
	}
	
	//shielding wall bounce charging
	if(activeCard.card == card.shieldingWallBounce){

		chargeVecX = chargeStartX - mouse_x;
		chargeVecY = chargeStartY - mouse_y;

		chargeVecLen = sqrt(chargeVecX * chargeVecX + chargeVecY * chargeVecY);

		if(point_distance(mouse_x, mouse_y, chargeStartX, chargeStartY) < maxCharge){
	
			draw_arrow(chargeStartX, chargeStartY, chargeStartX + chargeVecX, chargeStartY + chargeVecY, 10);
		
		}else{
		
			maxChargeVecX = chargeVecX / chargeVecLen * maxCharge;
			maxChargeVecY = chargeVecY / chargeVecLen * maxCharge;
	
			draw_arrow(chargeStartX, chargeStartY, chargeStartX + maxChargeVecX, chargeStartY + maxChargeVecY, 10);
	
		}
		
		draw_sprite_ext(spr_shieldShadow, 0, chargeStartX, chargeStartY, 1, min(maxCharge, chargeVecLen) / maxCharge, 
					point_direction(chargeStartX, chargeStartY, chargeStartX + chargeVecX, chargeStartY + chargeVecY),
					c_white,1);
	}
	
	//shielding wall destro charging
	if(activeCard.card == card.shieldingWallDestroy){

		chargeVecX = chargeStartX - mouse_x;
		chargeVecY = chargeStartY - mouse_y;

		chargeVecLen = sqrt(chargeVecX * chargeVecX + chargeVecY * chargeVecY);

		if(point_distance(mouse_x, mouse_y, chargeStartX, chargeStartY) < maxCharge){
	
			draw_arrow(chargeStartX, chargeStartY, chargeStartX + chargeVecX, chargeStartY + chargeVecY, 10);
		
		}else{
		
			maxChargeVecX = chargeVecX / chargeVecLen * maxCharge;
			maxChargeVecY = chargeVecY / chargeVecLen * maxCharge;
	
			draw_arrow(chargeStartX, chargeStartY, chargeStartX + maxChargeVecX, chargeStartY + maxChargeVecY, 10);
	
		}
		
		draw_sprite_ext(spr_shieldShadow, 0, chargeStartX, chargeStartY, 1, min(maxCharge, chargeVecLen) / maxCharge, 
					point_direction(chargeStartX, chargeStartY, chargeStartX + chargeVecX, chargeStartY + chargeVecY),
					c_white,1);
	}
	
	//vampiric buff placing
	if(activeCard.card == card.vampiricThirst){
		
		draw_sprite_ext(spr_vampireThirst, 0, chargeStartX, chargeStartY, 1, 1, 0, c_white, 1);
		
	}
	
	//cost reduction buff placing
	if(activeCard.card == card.costDown){
		
		draw_sprite_ext(spr_costDown, 0, chargeStartX, chargeStartY, 1, 1, 0, c_white, 1);
		
	}
	
	//barrier placing
	if(activeCard.card == card.barrier){
		
		draw_sprite_ext(spr_barrier, 0, chargeStartX, chargeStartY, 1, 1, 0, c_white, 1);
		
	}
	
}
