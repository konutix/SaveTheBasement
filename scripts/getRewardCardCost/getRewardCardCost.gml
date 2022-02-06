function getRewardCardCost(c){
	switch(c){
		case reward.baseBullet: return 1;
		case reward.splittingBullet: return 3;
		case reward.baseBolt: return 2;
		case reward.boulder: return 2;
		case reward.axe: return 2;
		case reward.zapper: return 2;
		case reward.costDown: return 1;
		case reward.weakeningRay: return 2;
		case reward.radarBomb: return 3;
		case reward.portalDrill: return 3;
		case reward.vampiricThirst: return 1;
		case reward.openingShot: return 2;
		case reward.shieldingWallDestroy: return 2;
		case reward.shieldingWallBounce: return 1;
		case reward.barrier: return 2;
	}
}