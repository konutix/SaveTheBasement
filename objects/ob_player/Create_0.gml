/// @description Setup player

maxHp = 80;
hp = maxHp;

turnEnergy = 3;
energy = turnEnergy;

baseDraw = 4;
draw = baseDraw;

baseRange = 150;
range = baseRange;

//buffs
vamp = 0;
persistantVamp = 0;

dmgBuff = 0;

weak = 0;
vulnerable = 0;

barrier = 0;

shotX = x;
shotY = y - sprite_height/2;

instance_create_layer(0,0,"gui", ob_skillsManager);
