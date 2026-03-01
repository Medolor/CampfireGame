
if (canBeHit){
	if (place_meeting(x,y,oDamageParent)){
		var damageTaken = other.damage;
		hp-=damageTaken;
		canBeHit = false;
		alarm[0] = delay;
		image_alpha = 0.5;
	}
}

