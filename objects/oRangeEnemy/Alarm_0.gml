if (instance_exists(oPlayer)) {
    var _dir = point_direction(x, y, oPlayer.x, oPlayer.y);

    var _spawnDist = 16; 
    var summonX = x + lengthdir_x(_spawnDist, _dir);
    var summonY = y + lengthdir_y(_spawnDist, _dir);

    var arrowInst = instance_create_layer(summonX, summonY, "Instances", oArrow);
    
    arrowInst.direction = _dir;      
    arrowInst.image_angle = _dir; 
    arrowInst.movement_speed = 3; 
}