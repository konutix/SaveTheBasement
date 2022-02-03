/// @description bullet setup

startSoundPlayed = false;

spd = 5;

g = .1;

velX = 0;
velY = 0;

dmg = 5;

owner = noone;

persistant = true;

grounded = false;

state = state.free;
zapDraw = 0;
maxZapDraw = 40;
zapSpeed = 4;

drawZaps = false;
connectedZappers = ds_list_create();
