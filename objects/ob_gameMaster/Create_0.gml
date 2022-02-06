/// @description gamemaster setup
randomise()

screenShake = false;

draw_set_font(fnt_main);

//map controll
last_level = "null";

cardsX = 350;
cardsXseparation = 90;
cardsXback = 0;
cardsY = 570;

gold = 0;

playerMaxHp = 80;
playerHp = playerMaxHp;
playerTurnEnergy = 3;
playerBaseDraw = 4;
playerBaseRange = 150;

//persistant buffs
persistantVamp = 0;

//nrg
usedEnergy = 0;
costDown = 0;

roomType = roomType.map;
level_scale = 1;

state = state.locked;

enemies = 0;
simulation = false;
turnDuration = 300;

deck = ds_list_create()

ds_list_add(deck,
		card.baseBullet,
		card.baseBullet,
		card.baseBullet,
		card.baseBullet,
		
		card.shieldingWallBounce,
		card.shieldingWallBounce,
		card.shieldingWallBounce,
		
		card.shieldingWallDestroy,
		card.shieldingWallDestroy,
		
		card.baseBolt,
		card.splittingBullet,
		
		card.vampiricThirst,
		////////
		card.baseBullet,
		card.baseBullet,
		card.baseBullet,
		card.baseBullet,
		
		card.shieldingWallBounce,
		card.shieldingWallBounce,
		card.shieldingWallBounce,
		
		card.shieldingWallDestroy,
		card.shieldingWallDestroy,
		
		card.baseBolt,
		card.splittingBullet,
		
		card.vampiricThirst,
		
		card.baseBullet,
		card.baseBullet,
		card.baseBullet,
		card.baseBullet,
		
		card.shieldingWallBounce,
		card.shieldingWallBounce,
		card.shieldingWallBounce,
		
		card.shieldingWallDestroy,
		card.shieldingWallDestroy,
		
		card.baseBolt,
		card.splittingBullet,
		
		card.vampiricThirst
		);
	

global.partSystem = part_system_create_layer("Instances",1);
