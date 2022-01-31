enum state{

	//shotsManager
	free,
	charging,
	locked,
	
	//gameMaster
	map,
	event,
	levelLoad,
	levelDrawCards,
	levelPickingCard,
	levelUsing,
	levelSimulating,
	levelRewards,
	gameOver,
	
	//enemy
	setAttack,
	
	//zapper
	zap,
	zapping

}

enum roomType{

	level,
	map,
	reward,
	event,
	gameOver

}

enum card{

	//cards
	null,
	
	//attacks
	baseBullet, //done
	splittingBullet, //done
	baseBolt, //done
	boulder, //done
	axe, //done
	zapper, //done
	
	//utility
	costDown, //done
	weakeningRay, //done
	radarBomb,
	portalDrill,
	vampiricThirst, //done
	openingShot, //done
	
	//defence
	shieldingWallDestroy, //done
	shieldingWallBounce, //done
	barrier //done

}

enum reward{

	null,

	energy,
	draw,
	heal,
	hpUp,
	range,
	vampirism,
	
	//cards
	
	//attacks
	costDown,
	baseBullet,
	splittingBullet,
	baseBolt,
	boulder,
	axe,
	zapper,
	
	//utility
	weakeningRay,
	radarBomb,
	portalDrill,
	vampiricThirst,
	openingShot,
	
	//defence
	shieldingWallDestroy,
	shieldingWallBounce,
	barrier

}