// Inherit the parent event
event_inherited();

x_speed = 0;
y_speed = 0;


//*IMPORTANT: // you might need to implement a motion planning gride if we are adding objects to the level. 
// Chagne the code if you are
if (instance_exists(oPlayer) && canFollow) {
    var _dir = point_direction(x, y, oPlayer.x, oPlayer.y);
    var _dis = point_distance(x, y, oPlayer.x, oPlayer.y);
    //you can implement pushihng here
    if (_dis <= maxRange && _dis >= 20) {
        x_speed = lengthdir_x(movement_speed, _dir);
        y_speed = lengthdir_y(movement_speed, _dir);
    }
}


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


