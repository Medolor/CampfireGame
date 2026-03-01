// Global function to apply card effects
function ApplyCard(type, value) {
    switch (type) {
        case "damage":
            global.attack_damage += value;  // Increase player damage
            break;

        case "defense":
            global.defense += value;  // Increase player speed
            break;

        case "magic":
            global.magic += value;  // increase magic power
            break;

        // Add more cases here for other card types as needed
    }
}