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
		
	case game_state.INTERMISSION:
        // Do intermission logic
        if (keyboard_check_pressed(vk_space)) {
            global.current_state = game_state.COMBAT;
            global.elapsed_time = 0;  // Reset timer
        }
        break;

    case game_state.GAME_OVER:
        if (keyboard_check_pressed(vk_r)) {
            global.current_state = game_state.MAIN_MENU;
        }
        break;
} 