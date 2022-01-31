function getCardDescription(c){
	switch(c){
		case card.baseBullet: return "Gravity defying bullet which can bounce of a wall (5 DMG)";
		case card.splittingBullet: return "Bullet that splits in 3 when it bounces (5 DMG)";
		case card.baseBolt: return "Bolt that can pierce through shields (10 DMG)";
		case card.boulder: return "Giant massive boulder (15 DMG)";
		case card.axe: return "Spinning axe (15 DMG)";
		case card.zapper: return "Zapper that damages enemies around it after landing, as well as targets between it and other zappers (5 DMG)";
		case card.costDown: return "Reduces the cost of cards in your hand by 1 (they can't cost less than 1 tho)";
		case card.weakeningRay: return "Applies the 'weak' debauff on a target decreasing their damage by 40%";
		case card.radarBomb: return "Explodes on landing marking enemies in its range. Marked enemies atract projectiles";
		case card.portalDrill: return "After hitting a wall it drills through and then teleports projectiles to the other side";
		case card.vampiricThirst: return "Gives you 4 'Vampiric thirst' that lasts till the end of a round. Each stack of the buff heals for 1 hp after hitting with a projectile";
		case card.openingShot: return "Small dart that applies a 'vulnerable' debuff. The effect increases damage taken by 50%";
		case card.shieldingWallDestroy: return "It destroys next 2 projectiles that it blocks";
		case card.shieldingWallBounce: return "It bounces a bullet increasing its damage x2";
		case card.barrier: return "It applies a barrier on a player that blocks 1 incoming attack";
	}
}