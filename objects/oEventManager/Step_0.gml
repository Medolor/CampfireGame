// Step Event
switch (global.current_state)
{
    case game_state.MAIN_MENU:
        // Do main menu logic
        if (keyboard_check_pressed(vk_space)) {
            global.current_state = game_state.INTERMISSION;
            global.elapsed_time = 0;  // Reset timer
        }
        break;

    case game_state.COMBAT:
        // Update elapsed time
        global.elapsed_time += delta_time / 1000;
        break;

    case game_state.PAUSE:
        // Handle pause logic
        if (keyboard_check_pressed(vk_p)) {
            global.current_state = game_state.COMBAT;
        }
        break;
		
	// oEventManager Step Event

if (global.current_state == game_state.INTERMISSION) {
    var spacing = 8;
    var card_sprites = [sDefBuff, sDmgBuff, sMagicBuff];

    // Calculate starting x for centering
    var total_width = 0;
    for (var i = 0; i < array_length(card_sprites); i++) {
        total_width += sprite_get_width(card_sprites[i]);
        if (i > 0) total_width += spacing;
    }
    var start_x = (320 - total_width) / 2;
    var start_y = 80;

    // Check clicks for each card
    var x_pos = start_x;
    for (var i = 0; i < array_length(card_sprites); i++) {
        var w = sprite_get_width(card_sprites[i]);
        var h = sprite_get_height(card_sprites[i]);
        
        if (mouse_check_button_pressed(mb_left)) {
            if (mouse_x > x_pos && mouse_x < x_pos + w &&
                mouse_y > start_y && mouse_y < start_y + h) {
                // Card clicked!
                var card = cards[i];  // assuming a global or oEventManager card map/array
                ApplyCard(card[? "type"], card[? "value"]);
            }
        }
        x_pos += w + spacing;
    }
}

    case game_state.GAME_OVER:
        if (keyboard_check_pressed(vk_r)) {
            global.current_state = game_state.MAIN_MENU;
        }
        break;
} 