function scr_display_cards(){
// scr_display_cards

// Card position and size settings
var card_x = 50;  // Starting X position for the first card
var card_y = 80;  // Y position (same for all cards)
var card_spacing = 10;  // Spacing between cards horizontally
var card_width = 64;  // Width of each card
var card_height = 96;  // Height of each card

// Example: Drawing 3 cards
for (var i = 0; i < 3; i++) {  // Adjust number of cards as needed
    // Draw each card sprite at the calculated position
    if (sprite_exists(sCard)) {
        draw_sprite(sCard, 0, card_x + i * (card_width + card_spacing), card_y);
        draw_set_font(fntSilver);
        draw_text(card_x + i * (card_width + card_spacing), card_y + card_height + 5, "Card " + string(i + 1));
    }
}
}