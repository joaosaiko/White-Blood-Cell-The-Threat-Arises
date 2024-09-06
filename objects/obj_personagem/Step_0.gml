script_execute(estado);

depth = -y;

if alarm[1] <= 0 {
	estamina += 1;
}

estamina = clamp(estamina,0,max_estamina[level]);

if xp >= max_xp[level]{
	xp = xp - max_xp[level];

	level += 1;
	
	vida = max_vida[level];
	estamina = max_estamina[level];	
}