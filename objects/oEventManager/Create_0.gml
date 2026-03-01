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

/// Card Setup
card_spacing = 8;
card_start_y = 80;

// Each card is a map with sprite, name, type, and value
cards = [
    ds_map_create(),
    ds_map_create(),
    ds_map_create()
];

// Card 1
cards[0][? "sprite"] = sDefBuff
cards[0][? "name"]   = "Defense";
cards[0][? "type"]   = "defense";

// Card 2
cards[1][? "sprite"] = sDmgBuff
cards[1][? "name"]   = "Def Boost";
cards[1][? "type"]   = "damage";

// Card 3
cards[2][? "sprite"] = sMagicBuff
cards[2][? "name"]   = "Magic";
cards[2][? "type"]   = "magic";