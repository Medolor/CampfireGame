x_speed = lengthdir_x(movement_speed, direction);
y_speed = lengthdir_y(movement_speed, direction);

x+=x_speed;
y+=y_speed;
if(place_meeting(x,y,oSolidParent) || place_meeting(x-2, y-2, oPlayer)){
	instance_destroy();
}