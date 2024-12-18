if (!global.dialogo_ativo) {
	if(room == Room2){
	// Todos os inimigos foram derrotados
	if(instance_number(obj_inimigo) == 0 && instance_number(obj_inimigo_grande) == 0){
		sprite_index = spr_personagem_parado_direita;
		}
	}
    script_execute(estado);
}

depth = -y;

if (alarm[1] <= 0) {
    estamina += 1;
}

estamina = clamp(estamina, 0, max_estamina[level - 1]);

// Verificar XP e subir de nível
if (xp >= max_xp[level - 1]) {
    xp -= max_xp[level - 1];

    if (level < array_length(max_xp)) { 
        level += 1;

        // Atualizar atributos com base no novo nível
        vida = max_vida[level - 1];
        estamina = max_estamina[level - 1];
    } else {
        // Se atingir o nível máximo, limitar XP ao máximo do último nível
        xp = max_xp[level - 1];
    }
}

// Verificar condição de Game Over
if (instance_exists(obj_game_controle) && vida <= 0) {
    instance_destroy();
    with (obj_game_controle) {
        game_over = true;
    }
}

if (room == RoomEncerramento){
	instance_destroy();
}