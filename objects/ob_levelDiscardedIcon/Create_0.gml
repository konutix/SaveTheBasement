/// @description setup

image_xscale = .5;
image_yscale = .5;

showDeck = false;

width = room_width/3;

scrollSpeed = 20;

cardsStartY = 50;
cardsSeparationX = 96;
cardsSeparationY = 128;

cardsStartX = room_width - 4*cardsSeparationX;

margin = 50;
marginYtop = 50;
marginYbottom = 50;

currentCardsYtop = cardsStartY;
currentCardsYbottom = cardsStartY + sprite_get_height(spr_cardBackground) - 15;
