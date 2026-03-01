// Step Event for obj_button_parent

// Check if the mouse is over the button
if (mouse_x > x - sprite_width / 2 && mouse_x < x + sprite_width / 2 && mouse_y > y - sprite_height / 2 && mouse_y < y + sprite_height / 2) {
    hovering = true; // Mouse is over the button
} else {
    hovering = false; // Mouse is not over the button
}

// Check if the mouse left button is clicked
if (mouse_check_button_pressed(mb_left) && hovering) {
    clicked = true;
    // Call the button's specific action (overridden in child objects)
    activate_button(); // Calls the function that child objects will define
}