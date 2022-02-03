function getRewardDescription(c){
	switch(c){
		case reward.baseBullet: return "Card: Gravity defying bullet which can bounce of a wall (5 DMG).";
		case reward.splittingBullet: return "Card: Bullet that splits in 3 when it bounces (5 DMG).";
		case reward.baseBolt: return "Card: Bolt that can pierce through shields (10 DMG).";
		case reward.boulder: return "Card: Giant massive boulder (15 DMG).";
		case reward.axe: return "Card: Spinning axe (15 DMG).";
		case reward.zapper: return "Card: Zapper that damages enemies around it after landing, as well as targets between it and other zappers (5 DMG).";
		case reward.costDown: return "Card: Reduces the cost of cards in your hand by 1 (they can't cost less than 1 tho).";
		case reward.weakeningRay: return "Card: Applies the 'weak' debauff on a target decreasing their damage by 40%.";
		case reward.radarBomb: return "Card: Explodes on landing marking enemies in its range. Marked enemies atract projectiles.";
		case reward.portalDrill: return "Card: After hitting a wall it drills through and then teleports projectiles to the other side.";
		case reward.vampiricThirst: return "Card: Gives you 4 'Vampiric thirst' that lasts till the end of a round. Each stack of the buff heals for 1 hp after hitting with a projectile.";
		case reward.openingShot: return "Card: Small dart that applies a 'vulnerable' debuff. The effect increases damage taken by 50%.";
		case reward.shieldingWallDestroy: return "Card: It destroys next 2 projectiles that it blocks.";
		case reward.shieldingWallBounce: return "Card: It bounces a bullet increasing its damage x2.";
		case reward.barrier: return "Card: It applies a barrier on a player that blocks 1 incoming attack.";
		
		case reward.energy: return "Gives the player +1 max mana.";
		case reward.draw: return "Player draws 1 more card every turn.";
		case reward.heal: return "Heals player for half of max HP.";
		case reward.hpUp: return "Increases max HP by 20.";
		case reward.range: return "Increases players casting range.";
		case reward.vampirism: return "Permanently adds 2 stacks of vampiric thirst to player. Each stack of the buff heals for 1 hp after hitting with a projectile.";
	}
}