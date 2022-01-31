function getCardCost(c){
	switch(c){
		case card.baseBullet: return 1;
		case card.splittingBullet: return 3;
		case card.baseBolt: return 2;
		case card.boulder: return 2;
		case card.axe: return 2;
		case card.zapper: return 2;
		case card.costDown: return 1;
		case card.weakeningRay: return 2;
		case card.radarBomb: return 3;
		case card.portalDrill: return 3;
		case card.vampiricThirst: return 1;
		case card.openingShot: return 2;
		case card.shieldingWallDestroy: return 2;
		case card.shieldingWallBounce: return 1;
		case card.barrier: return 2;
	}
}