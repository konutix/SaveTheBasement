/// @description spawn card recall

recall = instance_create_layer(x,y,"cards",ob_cardRecall);

recall.sprite_index = sprite_index;

if(description != noone){
	instance_destroy(description);
}