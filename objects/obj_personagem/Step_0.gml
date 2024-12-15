if (!global.dialogo_ativo) {
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

/// @description Insert description here
// You can write your code in this editor
if(room == Room2){
	// Todos os inimigos foram derrotados
	if(!instance_exists(obj_inimigo) && !instance_exists(obj_inimigo_grande)){
		if(textBoxProtagonista == noone){
			sprite_index = spr_personagem_parado_direita;
			textBoxProtagonista = instance_create_layer(x, y, "Text", obj_textbox);
			textBoxProtagonista.text = textProtagonista;
			textBoxProtagonista.creator = self;
			textBoxProtagonista.name = NameProtagonista;
			global.dialogo_ativo = true;
		}
	}
} else {
	if (textBoxProtagonista != noone){
		instance_destroy(obj_textbox);
	}
}
