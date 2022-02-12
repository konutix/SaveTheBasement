/// @description actions

switch(state){

	case state.levelLoad:
	
		if(instance_number(ob_enemy) == enemies){
			
			if(instance_exists(ob_player)){
			
				ob_player.maxHp = playerMaxHp;
				ob_player.hp = playerHp;
				ob_player.turnEnergy = playerTurnEnergy;
				ob_player.energy = playerTurnEnergy;
				ob_player.baseDraw = playerBaseDraw;
				ob_player.draw = playerBaseDraw;
				ob_player.baseRange = playerBaseRange;
				ob_player.range = playerBaseRange;
			
				//buffs
				ob_player.persistantVamp = persistantVamp;
			
				state = state.levelDrawCards;
			}
		}
		
	break;

	case state.levelDrawCards:
	
		if(ob_player.hp <= 0){
		
			state = state.gameOver;
			roomType = roomType.gameOver
			room_goto(rm_gameover);
		
		}else if(instance_number(ob_enemy) == 0){
		
			state = state.levelRewards;
			playerHp = ob_player.hp;
			room_goto(rm_rewards);
			
		}else{
		
			with (ob_enemy){
				state = state.setAttack;
			}
		
			//removing buffs/debuffs
			ob_player.vamp = 0;
			
			if(ob_player.vulnerable > 0)
				ob_player.vulnerable --;
				
			if(ob_player.weak > 0)
				ob_player.weak --;
				
			with(ob_enemy){
			
				if(vulnerable > 0)
					vulnerable --;
				
				if(weak > 0)
					weak --;
					
			}
	
			//drawing cards
			for(var i = 0; i < ob_player.draw; i++){
		
				if(ds_list_size(drawPile) <= 0){
			
					ds_list_copy(drawPile, discarded);
					ds_list_clear(discarded);
			
				}
				
				ds_list_add(hand, ds_list_find_value(drawPile, 0));
				ds_list_delete(drawPile, 0);
		
			}
	
			//spwaning card objects
			cardsXback = 0;
			
			if(ds_list_size(hand) > 8){
				cardsXback = (ds_list_size(hand) - 8) * cardsXseparation;
			}
			
			for(var i = 0; i < ds_list_size(hand); i++){
	
				drawCard = instance_create_layer(100, room_height - 120, "cards", ob_pickableCard);
				drawCard.targetX = cardsX + cardsXseparation * i - cardsXback;
				drawCard.targetY = cardsY;
				drawCard.card = ds_list_find_value(hand, i);
				drawCard.cost = getCardCost(ds_list_find_value(hand, i));
				with(drawCard){
		
					sprite_index = getCardSprite(card);
					image_alpha = 1;
		
				}
	
			}
	
			//spawning end turn button
			instance_create_layer(room_width - sprite_get_width(spr_endTurn) - 120, cardsY - 35, "cards", ob_endTurn);
	
			state = state.levelPickingCard;
		}
	
	break;
	
	case state.levelPickingCard:
	case state.levelUsing:
	
		usedEnergy = 0;
	
		with(ob_pickableCard){
			
			if(used){
			
				other.usedEnergy += max(cost - other.costDown, 1);
			
			}
		}

	break;
	
}

if(screenShake){

	var range = 3;
	camera_set_view_pos(view_camera[0], random_range(-range,range),random_range(-range,range));

}else{

	camera_set_view_pos(view_camera[0], 0, 0);

}

if(keyboard_check_pressed(ord("P"))){

	with(ob_enemy){
		instance_destroy();
	}

}