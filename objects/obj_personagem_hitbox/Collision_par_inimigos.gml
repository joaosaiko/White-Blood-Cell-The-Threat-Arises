/// @description Inserir descrição aqui
var nivel_index = obj_personagem.level - 1; // Ajustando nível para indexação correta (0-based)

if (nivel_index >= 0 && nivel_index < array_length(obj_personagem.dano)) {
    other.vida -= obj_personagem.dano[nivel_index];
} else {
    show_debug_message("Erro: índice fora do intervalo no array de dano");
}

var _dir = point_direction(obj_personagem.x, obj_personagem.y, other.x, other.y);
other.empurrar_dir = _dir;
other.empurrar_veloc = 6;
other.estado = scr_inimigo_hit;

other.alarm[1] = 5;
other.hit = true;

var _inst = instance_create_layer(x, y, "Instances", obj_dano);
_inst.alvo = other;

// Checagem antes de passar dano ao _inst
if (nivel_index >= 0 && nivel_index < array_length(obj_personagem.dano)) {
    _inst.dano = obj_personagem.dano[nivel_index];
} else {
    _inst.dano = 0; // Atribuir valor seguro caso o índice esteja fora do intervalo
}
