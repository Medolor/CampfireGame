if (hp <=0){
	instance_destroy();
}



if (canFollow && instance_exists(oPlayer)){
	var dirToPlayer = point_direction(x,y,oPlayer.x,oPlayer.y);
	if (dirToPlayer < maxRange){
		x+=lengthdir_x(movement_speed, dirToPlayer);
		y+=lengthdir_y(movement_speed, dirToPlayer);
	}
}

// you might need to implement a motion planning gride if we are adding objects to the level.
if(place_meeting(x+x_speed,y,oSolidParent)){
	while(!place_meeting(x+sign(movement_speed), y, oSolidParent)){
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

x+=x_speed;
y+=y_speed;