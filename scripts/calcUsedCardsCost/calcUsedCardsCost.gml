// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function calcUsedCardsCost(costToInclude){
	usedEnergy = 0;
	
	with(ob_pickableCard){	
		if(used){
			
			other.usedEnergy += max(cost - ob_gameMaster.costDown, 1);
			
		}
	}
	
	usedEnergy += max(costToInclude - ob_gameMaster.costDown, 1);
	
	return usedEnergy;
}