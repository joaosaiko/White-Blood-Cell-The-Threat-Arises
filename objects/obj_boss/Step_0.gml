if(!global.dialogo_ativo){
script_execute(estado);
}

if (vida <= 0) {
	obj_personagem.xp += 60;
	global.boss_derrotado = true;
	with (all) { 
        if (object_index == obj_inimigo) { // Verifique se o objeto é um inimigo
            instance_destroy();
        }
	}
	instance_destroy();
}

