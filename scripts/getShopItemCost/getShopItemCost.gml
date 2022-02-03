function getShopItemCost(rwd){
	switch(rwd){
		case reward.energy: return 50;
		case reward.draw: return 50;
		case reward.heal: return 20;
		case reward.hpUp: return 50;
		case reward.range: return 10;
		case reward.vampirism: return 30;

		case reward.splittingBullet: return 40;
		case reward.baseBolt: return 10;
		case reward.boulder: return 30;
		case reward.axe: return 20;
		case reward.zapper: return 30;
		case reward.costDown: return 30;
		case reward.weakeningRay: return 20;
		case reward.radarBomb: return 20;
		case reward.portalDrill: return 30;
		case reward.vampiricThirst: return 20;
		case reward.openingShot: return 30;
		case reward.shieldingWallDestroy: return 10;
		case reward.shieldingWallBounce: return 10;
		case reward.barrier: return 20;
	}
}