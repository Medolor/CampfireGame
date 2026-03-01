x_speed = 0;
y_speed = 0;

if keyboard_check(vk_right) { // if the right arrow key is pressed

    x_speed = movement_speed; // set the horizontal speed to heidi's movement_speed

} else if keyboard_check(vk_left) { // otherwise, if the left arrow key is pressed

    x_speed = -movement_speed; // set the horizontal speed to negative heidi's movement_speed, making her move left

} else if keyboard_check(vk_up){
	y_speed = -movement_speed;
} else if keyboard_check(vk_down){
	y_speed = movement_speed;
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

// Damage
// Step Event

// Reduce cooldown timer
if (attack_timer > 0) {
    attack_timer -= delta_time / 1000; // delta_time is in milliseconds
}

// Detect left mouse click and cooldown
if (mouse_check_button_pressed(mb_left) && attack_timer <= 0) {
    attack_timer = attack_cooldown; // Reset cooldown

    // Loop through all instances of the parent enemy object
    var count = instance_number(oEnemiesParent);
    for (var i = 0; i < count; i++) {
        var inst = instance_find(oEnemiesParent, i); // Get the i-th enemy
        if (inst != noone) {
            var dist = point_distance(x, y, inst.x, inst.y);
            if (dist <= attack_range) {
                inst.hp -= global.attack_damage; // Apply damage
                if (inst.hp <= 0) {
                    instance_destroy(inst);
                }
            }
        }
    }
}

x+=x_speed;
y+=y_speed;

x=clamp(x,0,room_width - (sprite_width/2));
y=clamp(y,0,room_height - (sprite_height/2));