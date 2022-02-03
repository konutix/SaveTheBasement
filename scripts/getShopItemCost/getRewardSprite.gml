function getRewardSprite(rwd){
	switch(rwd){
		case reward.energy: return spr_reward_energy;
		case reward.draw: return spr_reward_draw;
		case reward.heal: return spr_reward_heal;
		case reward.hpUp: return spr_reward_hpUp;
		case reward.range: return spr_reward_range;
		case reward.vampirism: return spr_reward_vampirism;

		case reward.splittingBullet: return spr_card_splittingBullet;
		case reward.baseBolt: return spr_card_baseBolt;
		case reward.boulder: return spr_card_boulder;
		case reward.axe: return spr_card_axe;
		case reward.zapper: return spr_card_zapper;
		case reward.costDown: return spr_card_costDown;
		case reward.weakeningRay: return spr_card_weakeningRay;
		case reward.radarBomb: return spr_card_radarBomb;
		case reward.portalDrill: return spr_card_portalDrill;
		case reward.vampiricThirst: return spr_card_vampiricThirst;
		case reward.openingShot: return spr_card_openingShot;
		case reward.shieldingWallDestroy: return spr_card_shieldingWallDestroy;
		case reward.shieldingWallBounce: return spr_card_shieldingWallBounce;
		case reward.barrier: return spr_card_barrier;
	}
}