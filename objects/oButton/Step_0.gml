if (global.current_state == game_state.INTERMISSION) {
    if (mouse_check_button_pressed(mb_left)) {
        // Check if mouse is over the button
        if (mouse_x > x - sprite_width/2 && mouse_x < x + sprite_width/2 &&
            mouse_y > y - sprite_height/2 && mouse_y < y + sprite_height/2) {
            // Button clicked
            ApplyCard(type, value); // type/value set in button instance
        }
    }
}