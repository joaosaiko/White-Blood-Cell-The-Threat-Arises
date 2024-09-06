/// @description Inserir descrição aqui

other.vida -= obj_personagem.dano[obj_personagem.level];

// Remova ou comente as linhas que empurram o inimigo
// var _dir = point_direction(obj_personagem.x, obj_personagem.y, other.x, other.y);
// other.empurrar_dir = _dir;
// other.empurrar_veloc = 6;
// other.estado = scr_inimigo_hit;

other.alarm[1] = 5;
other.hit = true;

var _inst = instance_create_layer(x, y, "Instances", obj_dano);
_inst.alvo = other;
_inst.dano = obj_personagem.dano[obj_personagem.level];
