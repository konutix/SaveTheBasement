/// @description spawn map buttons
var buttonp = instance_create_layer(x-110,y+10,"gui",ob_map_button);
buttonp.rm = rm_prologue;
buttonp.image_index = 2;
buttonp.name = "p";


var button00 = instance_create_layer(x,y,"gui",ob_map_button);
button00.rm = rm_level0;
button00.previous = buttonp.name;
button00.name = "00";


var button10 = instance_create_layer(x-50,y+110,"gui",ob_map_button);
button10.rm = rm_level1;
button10.previous = button00.name;
button10.name = "10";

var button11 = instance_create_layer(x+50,y+110,"gui",ob_map_button);
button11.rm = rm_level1;
button11.previous = button00.name;
button11.name = "11";


var button20 = instance_create_layer(x-80,y+220,"gui",ob_map_button);
button20.rm = rm_level2;
button20.previous = button10.name;
button20.name = "20";

var button21 = instance_create_layer(x,y+220,"gui",ob_map_button);
button21.rm = rm_level2;
button21.previous = button10.name;
button21.name = "21";

var button22 = instance_create_layer(x+90,y+220,"gui",ob_map_button);
button22.rm = rm_level2;
button22.previous = button11.name;
button22.name = "22";


var button30 = instance_create_layer(x-90,y+320,"gui",ob_map_button);
button30.rm = rm_level1;////////////////
button30.image_index = 2;
button30.previous = button20.name;
button30.name = "30";

var button31 = instance_create_layer(x,y+320,"gui",ob_map_button);
button31.rm = rm_level2;/////////////////
button31.image_index = 2;
button31.previous = button21.name;
button31.name = "31";

var button32 = instance_create_layer(x+100,y+320,"gui",ob_map_button);
button32.rm = rm_level0;///////////////////
button32.image_index = 2;
button32.previous = button22.name;
button32.name = "32";


var button40 = instance_create_layer(x-50,y+430,"gui",ob_map_button);
button40.rm = rm_rewards;////////////////
button40.image_index = 4;
button40.previous = button30.name + "." + button31.name;
button40.name = "40";

var button41 = instance_create_layer(x+110,y+435,"gui",ob_map_button);
button41.rm = rm_level1;/////////////////
button41.image_index = 6;
button41.previous = button32.name;
button41.name = "41";


var button51 = instance_create_layer(x+20,y+500,"gui",ob_map_button);
button51.rm = rm_levelFirstBoss;
button51.image_index = 8;
button51.previous = button41.name;
button51.name = "51";