
if (canBeHit){
	if (place_meeting(x,y,oDamageParent)){
		var damageTaken = other.damage;
		hp-=damageTaken;
		canBeHit = false;
		image_alpha = 0.5;
		alarm[0] = delay;
	}
}

