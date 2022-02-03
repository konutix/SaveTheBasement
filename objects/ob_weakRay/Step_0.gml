/// @description movement and action

if(ob_gameMaster.simulation == true){

	if(!startSoundPlayed){
		audio_play_sound(SFX_WeakeningRayCast_01,1,false);
		startSoundPlayed = true;
	}

	if(sprite_index != spr_weakeningRay){
		sprite_index = spr_weakeningRay;
	}

	part_type_scale(global.ptWeakRayTrail, image_xscale, image_yscale);
	part_type_orientation(global.ptWeakRayTrail, image_angle, image_angle, 0, 0, 0);
	part_particles_create(global.partSystem, x, y, global.ptWeakRayTrail, 1);

	x += velX;
	y += velY;
	
	image_xscale += growthRate;
	image_yscale += growthRate;
	
	var hit = instance_place(x,y,ob_enemy);
	
	if(hit != noone){
	
		var found = ds_list_find_index(hitTargets, hit);
		
		if(found == -1){
		
			ds_list_add(hitTargets, hit);
			
			audio_play_sound(SFX_WeakeningRayHit_01,1,false);
			
			hit.weak += 3;
		
		}
	
	}

}