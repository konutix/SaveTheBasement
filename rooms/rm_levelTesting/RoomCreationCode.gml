ob_gameMaster.roomType = roomType.level;
ob_gameMaster.enemies = 1;
ob_gameMaster.level_scale = 1;

ob_gameMaster.playerBaseDraw = 10;

ds_list_clear(ob_gameMaster.deck);
ds_list_add(ob_gameMaster.deck,
	//attacks
	card.baseBullet,
	card.splittingBullet,
	card.baseBolt,
	card.boulder,
	card.axe,
	card.zapper,
	
	//utility
	card.costDown,
	card.weakeningRay,
	card.radarBomb,
	card.portalDrill,
	card.vampiricThirst,
	card.openingShot,
	
	//defence
	card.shieldingWallDestroy,
	card.shieldingWallBounce,
	card.barrier
		);