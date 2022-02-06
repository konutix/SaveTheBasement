function getRewardType(rwd){
	
	switch(rwd){
		case reward.energy: 
		case reward.draw: 
		case reward.heal: 
		case reward.hpUp: 
		case reward.range: 
		case reward.vampirism: 
			return itemType.upgrade;

		case reward.splittingBullet:
		case reward.baseBolt:
		case reward.boulder: 
		case reward.axe: 
		case reward.zapper: 
		case reward.costDown:
		case reward.weakeningRay: 
		case reward.radarBomb:
		case reward.portalDrill: 
		case reward.vampiricThirst: 
		case reward.openingShot:
		case reward.shieldingWallDestroy: 
		case reward.shieldingWallBounce: 
		case reward.barrier: 
			return itemType.card;
	}

}