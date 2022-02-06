/// @description setup

showDeck = false;

width = room_width/3;

scrollSpeed = 20;

cardsStartX = 40;
cardsStartY = 50;
cardsSeparationX = 96;
cardsSeparationY = 128;

margin = 50;
marginYtop = 50;
marginYbottom = 50;

currentCardsYtop = cardsStartY;
currentCardsYbottom = cardsStartY + sprite_get_height(spr_cardBackground);
