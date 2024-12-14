/// @description Inserir descrição aqui

if other.t_dano == true{
	// Remova ou comente as linhas que empurram o inimigo
	// var _dir = point_direction(x, y, other.x, other.y);

	with (other){
		// empurrar_dir = _dir;
		// estado = scr_personagem_hit;
		alarm[2] = 10;
		alarm[3] = 45;
		t_dano = false;
		vida -= 2;	
	}
	var _inst = instance_create_layer(x, y, "Instances", obj_dano);
	_inst.alvo = other;
	_inst.dano = 1;
}
