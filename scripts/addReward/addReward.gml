function addReward(rwd){
	switch(rwd){
		
		case reward.energy:
			ob_gameMaster.playerTurnEnergy += 1;
		break;
		
		case reward.heal:
			ob_gameMaster.playerHp += round(ob_gameMaster.playerMaxHp * .3);
			if(ob_gameMaster.playerHp > ob_gameMaster.playerMaxHp){
				ob_gameMaster.playerHp = ob_gameMaster.playerMaxHp;
			}
		break;
		
		case reward.hpUp: 
			ob_gameMaster.playerMaxHp += 20;
			ob_gameMaster.playerHp += 20;
		break;
		
		case reward.range:
			ob_gameMaster.playerBaseRange += 20;
		break;
		
		case reward.draw:
			ob_gameMaster.playerBaseDraw += 1;
		break;
		
		case reward.vampirism:
			ob_gameMaster.persistantVamp += 2;
		break;

		case reward.splittingBullet:
			ds_list_add(ob_gameMaster.deck, card.splittingBullet);
		break;
		
		case reward.baseBolt: 
			ds_list_add(ob_gameMaster.deck, card.baseBolt);
		break;
		
		case reward.boulder:
			ds_list_add(ob_gameMaster.deck, card.boulder);
		break;
		
		case reward.axe:
			ds_list_add(ob_gameMaster.deck, card.axe);
		break;
		
		case reward.zapper:
			ds_list_add(ob_gameMaster.deck, card.zapper);
		break;
		
		case reward.costDown:
			ds_list_add(ob_gameMaster.deck, card.costDown);
		break;
		
		case reward.weakeningRay:
			ds_list_add(ob_gameMaster.deck, card.weakeningRay);
		break;
		
		case reward.radarBomb:
			ds_list_add(ob_gameMaster.deck, card.radarBomb);
		break;
		
		case reward.portalDrill:
			ds_list_add(ob_gameMaster.deck, card.portalDrill);
		break;
		
		case reward.vampiricThirst:
			ds_list_add(ob_gameMaster.deck, card.vampiricThirst);
		break;
		
		case reward.openingShot:
			ds_list_add(ob_gameMaster.deck, card.openingShot);
		break;
		
		case reward.shieldingWallDestroy:
			ds_list_add(ob_gameMaster.deck, card.shieldingWallDestroy);
		break;
		
		case reward.shieldingWallBounce:
			ds_list_add(ob_gameMaster.deck, card.shieldingWallBounce);
		break;
		
		case reward.barrier:
			ds_list_add(ob_gameMaster.deck, card.barrier);
		break;
	}
}