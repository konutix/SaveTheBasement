/// @description setup

gold_reward = irandom_range(10, 20);

ob_gameMaster.gold += gold_reward;

rewards = ds_list_create();

ds_list_add(rewards, 
	
	reward.energy,
	reward.draw,
	reward.heal,
	reward.hpUp,
	reward.range,
	reward.vampirism,
	
	//cards
	reward.splittingBullet,
	reward.baseBolt,
	reward.boulder,
	reward.axe,
	reward.zapper,
	
	reward.weakeningRay,
	//reward.radarBomb,
	//reward.portalDrill,
	reward.vampiricThirst,
	reward.openingShot,
	
	reward.shieldingWallDestroy,
	reward.shieldingWallBounce,
	reward.barrier

)

ds_list_shuffle(rewards);

reward1 = instance_create_layer(x+50, y+150, "rewards", ob_reward);
reward1.reward = ds_list_find_value(rewards, 0);
reward1.sprite_index = getRewardSprite(reward1.reward);

reward2 = instance_create_layer(x+220, y+150, "rewards", ob_reward);
reward2.reward = ds_list_find_value(rewards, 1);
reward2.sprite_index = getRewardSprite(reward2.reward);

reward3 = instance_create_layer(x+390, y+150, "rewards", ob_reward);
reward3.reward = ds_list_find_value(rewards, 2);
reward3.sprite_index = getRewardSprite(reward3.reward);

instance_create_layer(x + sprite_width/2, y + 400, "rewards", ob_rewardButton);