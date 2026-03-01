if (hp <=0){
	instance_destroy();
}

var disToPlayer = point_distance(x,y,oPlayer.x,oPlayer.y);
if (disToPlayer == 20 && keyboard_check_pressed(ord("E"))){
	hp =- 2; // change this number to the abilities of the card, 
	// You may need to implement a card class and the program may need to detect which card is used
	// for example, oPlayer may have a fire card that deals 10 damage.
	// You need to send connect card to a big main class that connects oPlayer and this class. 
	// In this location you need to detect which card is used (maybe using the method above)
	// and deal the damage. Ask AI if you don't know how to allocate the card damage to the enemey
}