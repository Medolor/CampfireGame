x_speed = 0;
y_speed = 0;

if keyboard_check(vk_right) { // if the right arrow key is pressed

    x_speed = movement_speed; // set the horizontal speed to heidi's movement_speed

} else if keyboard_check(vk_left) { // otherwise, if the left arrow key is pressed

    x_speed = -movement_speed; // set the horizontal speed to negative heidi's movement_speed, making her move left

} else if keyboard_check(vk_up){
	y_speed = movement_speed;
} else if keyboard_check(vk_down){
	y_speed = -movement_speed;
}

if(place_meeting(x+x_speed,y,oSolid)){
	while(!place_meeting(x+sign(x_speed), y, oSolid)){
		x++;
	}
	x_speed=0;
}
if (place_meeting(x,y+y_speed,oSolid)){
	while(!place_meeting(x, y+sign(y_speed), oSolid)){
		y++;
	}
	y_speed=0;
}



if (place_meeting(x,y,oEnemiesParent)){
	damageTaken = other.damage;
	hp-=damageTaken;
	
}



x+=x_speed;
y+=y_speed;

x=clamp(x,0,room_width - (sprite_width/2));
y=clamp(y,0,room_height - (sprite_height/2));