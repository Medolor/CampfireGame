enum game_state
{
    MAIN_MENU,
    COMBAT,
	INTERMISSION,
	PAUSE,
    GAME_OVER
}

global.current_state = game_state.MAIN_MENU; // Start with the main menu
elapsed_time = 0; // Initialize the elapsed time to 0

