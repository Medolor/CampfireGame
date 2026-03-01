x_speed = 0;
y_speed = 0;


if (instance_exists(oPlayer) && canFollow) {
	var _dis = point_distance(x,y, oPlayer.x, oPlayer.y);
    if (abs(_dis) <= maxRange) {
		if (alarm[0] <= 0) {alarm[0] = arrowDelay;}
		
		var _dir = point_direction(oPlayer.x,oPlayer.y,x,y);
		var targetX = x + lengthdir_x(movement_speed, _dir);
		var targetY = y + lengthdir_y(movement_speed, _dir);
		mp_potential_step(targetX, targetY, movement_speed, false);
    }
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

x+=x_speed;
y+=y_speed;