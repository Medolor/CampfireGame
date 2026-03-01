if (global.current_state == game_state.INTERMISSION) {

    // Calculate total width for centering
    var total_width = 0;
    for (var i = 0; i < array_length(cards); i++) {
        total_width += sprite_get_width(cards[i][? "sprite"]);
        if (i > 0) total_width += card_spacing;
    }

    var start_x = (320 - total_width) / 2;
    var x_pos = start_x;

    // Draw each card
    for (var i = 0; i < array_length(cards); i++) {
        var spr = cards[i][? "sprite"];
        var w = sprite_get_width(spr);
        var h = sprite_get_height(spr);

        draw_sprite(spr, 0, x_pos + w/2, card_start_y); // draw centered
        x_pos += w + card_spacing;

        // Optional: draw card name below
        draw_set_font(fntSilver);
        draw_set_color(c_white);
        draw_text(x_pos - w - w/2, card_start_y + h/2 + 5, cards[i][? "name"]);
    }
}