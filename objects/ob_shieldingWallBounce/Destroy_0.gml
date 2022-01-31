/// @description spawn fading wall

fade = instance_create_layer(x,y,"actionInstances",ob_shieldingWallBounceFade);

fade.image_xscale = image_xscale;
fade.image_yscale = image_yscale;
fade.image_angle = image_angle;