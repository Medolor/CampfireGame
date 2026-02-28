if (place_meeting(x, y + 1, oSolid)) { // if heidi is on the ground

    if (keyboard_check_pressed(vk_up)) { // and the up arrow key is pressed

        y_speed = -10; // make heidi jump by setting her y_speed to a negative value

    } else { // otherwise, if heidi is on the ground but not jumping

        y_speed = 0; // set her y_speed to 0 so she doesn't fall through the ground

    }
}