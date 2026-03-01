if (hp <=0){
	instance_destroy();
}

x_speed = 0;
y_speed = 0;


if (instance_exists(oPlayer) && canFollow) {
	var offset = (sprite_width/2);
	var _dis = point_distance(x,y, oPlayer.x, oPlayer.y);
    if (abs(_dis) <= maxRange && _dis >= offset) {
		mp_potential_step(oPlayer.x, oPlayer.y, movement_speed, false);
    }
}


if(place_meeting(x+x_speed,y,oSolidParent)){
	while(!place_meeting(x+x_speed, y, oSolidParent)){
		x += sign(x_speed);
	}
	x_speed=0;
}
if (place_meeting(x,y+y_speed,oSolidParent)){
	while(!place_meeting(x, y+y_speed, oSolidParent)){
		y += sign(y_speed);
	}
	y_speed=0;
}

// Step Event
if (mouse_check_button_pressed(mb_left)) {   // Left mouse click
    // Check if the mouse is over this enemy
    if (position_meeting(mouse_x, mouse_y, id)) {
        hp -= 1;  // Subtract 1 HP
    }
}

// Destroy enemy if health reaches 0
if (hp <= 0) {
    instance_destroy();
}

x+=x_speed;
y+=y_speed;