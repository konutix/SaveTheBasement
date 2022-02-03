/// @description draw reward gui

draw_self();

draw_text_color(x+20,y+300,"Your gold: " + string(ob_gameMaster.gold), c_black, c_black, c_black, c_black, 1);

cost = 0;

with(ob_shopItem){

	if(selected){
		other.cost += cost;
	}

}

if(cost == 0){
	ob_shopButton.image_index = 0;
}else{
	ob_shopButton.image_index = 1;
}

draw_text_color(x+20,y+350,"Cost of chosen cards: " + string(cost), c_black, c_black, c_black, c_black, 1);
