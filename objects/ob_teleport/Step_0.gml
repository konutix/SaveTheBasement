/// @description Insert check coll

var hit = instance_place(x,y,ob_projectile)
	
if(hit != noone && hit.owner == ob_player){
	
	instance_destroy(hit);
	
	audio_play_sound(SFX_BarrierHit_01, 1, false);
	
	var bufferX = x;
	var bufferY = y;
		
	x = ob_player.x;
	y = ob_player.y;
		
	ob_player.x = bufferX;
	ob_player.y = bufferY;
		
	if(ob_player.x > room_width/2)
		ob_player.image_xscale = -1;
	else
		ob_player.image_xscale = 1;
	
}