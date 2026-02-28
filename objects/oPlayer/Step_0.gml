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

if(place_meeting(x+x_speed,y,oSolidParent)){
	while(!place_meeting(x+sign(x_speed), y, oSolidParent)){
		x += sign(x_speed);
	}
	x_speed=0;
}
if (place_meeting(x,y+y_speed,oSolidParent)){
	while(!place_meeting(x, y+sign(y_speed), oSolidParent)){
		y += sign(y_speed);
	}
	y_speed=0;
}

if (hp <= 0){
	visible = false;
	x_speed = 0;
	y_speed = 0;
	room_goto(rm_gameOver);
}

x+=x_speed;
y+=y_speed;

x=clamp(x,0,room_width - (sprite_width/2));
y=clamp(y,0,room_height - (sprite_height/2));