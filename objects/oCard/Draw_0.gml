// Draw Event for obj_button_parent

// Draw the button sprite (stretched)
draw_self();  // Default sprite drawing

// Draw text on top of the button
draw_set_font(fntDefault);   // Set your font here
draw_set_color(c_white);     // White text color (you can change this based on hover state)
if (hovering) {
    draw_set_color(c_yellow); // Change color if hovering
}

// Draw text centered on the button
draw_text(x, y, "Click Me"); // You can change the text as needed