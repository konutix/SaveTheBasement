function dealDamage(dealer, target){

	ShakeScreen(15);

	part_particles_create(global.partSystem, x, y, global.ptBlood, 20);

	if(target.barrier <= 0){
		var vulMod = 1;
		var weakMod = 1;
		
		if(target.vulnerable > 0)
			vulMod = 1.5;
			
		if(dealer.weak > 0)
			weakMod = 0.6;
			
		target.hp -= floor(floor((dmg + dealer.dmgBuff) * weakMod) * vulMod);
		
	}else{
		target.barrier--;
	}

}