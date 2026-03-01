// Draw Event of oEventManager
switch (global.current_state) {
    case game_state.MAIN_MENU:
        draw_text(room_width / 2, room_height / 2, "Press Space to Start");
        break;

    case game_state.COMBAT:
        var minutes = floor(global.elapsed_time / 60);
        var seconds = floor(global.elapsed_time mod 60);
        var time_str = string(minutes, 2) + ":" + string(seconds, 2);
        var full_text = "Time: " + time_str;
        draw_text(room_width / 2 - string_width(full_text) / 2, room_height / 2, full_text);
        break;

    case game_state.PAUSE:
        draw_text(room_width / 2, room_height / 2, "Game Paused. Press P to Resume");
        break;

    case game_state.INTERMISSION:
        // Call the script to draw cards in the INTERMISSION state
        scr_display_cards();  // Calling the script here
        break;

    case game_state.GAME_OVER:
        draw_text(room_width / 2, room_height / 2, "Game Over! Press R to Restart");
        var minutes = floor(global.elapsed_time / 60);
        var seconds = floor(global.elapsed_time mod 60);
        var time_str = string(minutes, 2) + ":" + string(seconds, 2);
        var full_text = "Time: " + time_str;
        draw_text(room_width / 2 - string_width(full_text) / 2, room_height / 2 + 20, full_text);
        break;
}